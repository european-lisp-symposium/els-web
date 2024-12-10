<?php
$message = "";
$failed = false;

$secrets = file_get_contents(__DIR__."/../../secrets.lisp");
function secret($key) {
  global $secrets, $message, $failed;
  $matches = array();
  if(preg_match('/:'.$key.'\\s*\"([^\"]*)\"/', $secrets, $matches) == 1){
    return $matches[1];
  }else{
    $message = "Internal error: key ".$key." not configured in secrets.lisp";
    $failed = true;
  }
}

$stripe = secret("stripe");
$stripe_private_key = secret("stripe-private-key");

$missing = array();
if(!$_POST['action']){ $missing[] = "Action"; }
if(!$_POST['token']){ $missing[] = "Token"; }
if(!$_POST['items'][0]){ $missing[] = "Type of attendance"; }
if(!$_POST['name']){ $missing[] = "Name"; }
if(!$_POST['email']){ $missing[] = "Email"; }
if(!empty($missing)){
  $message = "Missing fields: ".join(", ", $missing);
  $failed = true;
}

function sendMail($intent){
  $mailer = secret("mailer");
  $mailer_host = secret("mailer-host");
  $mailer_port = secret("mailer-port");
  $mailer_ssl = secret("mailer-ssl");
  $mailer_tls = secret("mailer-tls");
  $mailer_user = secret("mailer-user");
  $mailer_pass = secret("mailer-pass");
  $mailer_body = file_get_contents(__DIR__."/email.txt");
  $mailer_from = secret("mailer-from");

  require_once($mailer."/src/Exception.php");
  require_once($mailer."/src/PHPMailer.php");
  require_once($mailer."/src/SMTP.php");

  $mail = new PHPMailer\PHPMailer\PHPMailer(true);
  $mail->IsSMTP();
  $mail->CharSet = 'UTF-8';
  $mail->Host = $mailer_host;
  $mail->SMTPAuth = true;
  $mail->Port = intval($mailer_port);
  if($mailer_ssl != "false"){
    if($mailer_ssl == "self-signed"){
      $mail->SMTPOptions = array(
	    'ssl' => array(
	      'verify_peer' => false,
	      'verify_peer_name' => false,
	      'allow_self_signed' => true
	    )
      );
    }
    $mail->SMTPSecure = 'ssl';
    if ($mailer_tls != "false"){
      $mail->SMTPSecure = 'tls';
    }
  }
  $mail->Timeout = 10;
  $mail->Username = $mailer_user;
  $mail->Password = $mailer_pass;
  $mail->setFrom($mailer_from, "ELS Registration");
  $mail->addAddress($_POST['email']);
  $mail->addAddress($mailer_from);
  if ($intent == null) $mail->addAttachment(__DIR__."/../../IBAN.pdf");
  $mail->Subject = "European Lisp Symposium Registration";
  $mail->Body = sprintf($mailer_body,
					    ($intent == null? "- (Manual bank transfer)" : $intent->id),
					    join(", ", $_POST['items']),
					    $_POST['price'],
					    $_POST['name'],
					    $_POST['email'],
					    $_POST['affiliation'],
					    $_POST['foodRestrictions'],
					    ($intent == null? "The banking coordinates for the transfer are attached to this email.\n\n" : ""));
  $mail->send();
}

if($failed == false){
  $intent = null;
  try{
    if($_POST['action'] == "request"){
      require_once($stripe."/init.php");
      \Stripe\Stripe::setApiKey($stripe_private_key);
      $intent = \Stripe\PaymentIntent::create([
	    "payment_method" => $_POST['token'],
	    "amount" => intval($_POST['price'])*100,
	    "currency" => "eur",
	    "confirmation_method" => "manual",
	    "confirm" => true,
	    "description" => $_POST['name']." ".$_POST['email'],
	    "receipt_email" => $_POST['email'],
	    "metadata" => array(
	      "name" => $_POST['name'],
	      "email" => $_POST['email'],
	      "affiliation" => $_POST['affiliation'],
	      "food-restrictions" => $_POST['foodRestrictions'],
	      "items" => join(", ", $_POST['items']),
	    )
      ]);

      if ($intent->status == 'requires_action' &&
	      $intent->next_action->type == 'use_stripe_sdk') {
	    $message = json_encode([
	      'status' => $intent->status,
	      'payment_intent_client_secret' => $intent->client_secret
	    ]);
      } else if ($intent->status == 'succeeded') {
	    $message = json_encode([
	      'status' => $intent->status
	    ]);
	    sendMail($intent);
      } else {
	    $message = json_encode([
	      'status' => $intent->status,
	      'error' => 'Invalid PaymentIntent status'
	    ]);
	    $failed = true;
      }
    } else if($_POST['action'] == "confirm"){
      if($_POST['token'] != "bank"){
	    require_once($stripe."/init.php");
	    \Stripe\Stripe::setApiKey($stripe_private_key);
	    $intent = \Stripe\PaymentIntent::retrieve($_POST['token']);
      }

      sendMail($intent);

      if($intent != null){
	    $intent->confirm();
      }
    }
  } catch(Stripe\Error\Card $e) {
    $message = $e->getMessage();
    if($intent != null) $intent->cancel();
    $failed = true;
  } catch (Stripe\Error\Base $e) {
    error_log($e);
    $message = $e->getMessage();
    if($intent != null) $intent->cancel();
    $failed = true;
  } catch(PHPMailer\PHPMailer\Exception $e) {
    error_log($e);
    $message = "Failed to send receipt email, the order has been cancelled.";
    if($intent != null) $intent->cancel();
    $failed = true;
  } catch (Exception $e) {
    error_log($e);
    $message = $e->getMessage();
    if($intent != null) $intent->cancel();
    $failed = true;
  }
}

if($failed == false){
  header('X-PHP-Response-Code: 200', true, 200);
}else{
  header('X-PHP-Response-Code: 400', true, 400);
}
header('Content-Type: text/plain; charset=UTF-8');
header('Cache-Control: private, no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
echo $message;
?>
