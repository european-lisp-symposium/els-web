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
$mailer = secret("mailer");
$mailer_host = secret("mailer-host");
$mailer_port = secret("mailer-port");
$mailer_ssl = secret("mailer-ssl");
$mailer_user = secret("mailer-user");
$mailer_pass = secret("mailer-pass");
$mailer_body = file_get_contents(__DIR__."/../../template/email.txt");

$missing = array();
if(!$_POST['token']){ $missing[] = "Credit card transaction"; }
if(!$_POST['kind']){ $missing[] = "Type of attendance"; }
if(!$_POST['name']){ $missing[] = "Name"; }
if(!$_POST['email']){ $missing[] = "Email"; }
if(!empty($missing)){
    $message = "Missing fields: ".join(", ", $missing);
    $failed = true;
}

if($failed == false){
    $order = null;
    try{
        require_once($stripe."/init.php");
        require_once($mailer."/src/Exception.php");
        require_once($mailer."/src/PHPMailer.php");
        require_once($mailer."/src/SMTP.php");
        
        \Stripe\Stripe::setApiKey($stripe_private_key);
        $order = \Stripe\Order::create(array(
            "currency" => "eur",
            "email" => $_POST['email'],
            "items" => array(
                array(
                    "type" => "sku",
                    "parent" => $_POST['kind'],
                )
            ),
            "metadata" => array(
                "name" => $_POST['name'],
                "email" => $_POST['email'],
                "affiliation" => $_POST['affiliation'],
                "food-restrictions" => $_POST['foodRestrictions'],
                "banquet" => $_POST['banquet'],
                "certificate" => $_POST['certificate'],
                "proceedings" => $_POST['proceedings'],
            ),
        ));
        
        $order->pay(array("source" => $_POST['token']));
        $message = $order->id;

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
            $mail->SMTPSecure = 'tls';
        }
        $mail->Username = $mailer_user;
        $mail->Password = $mailer_pass;
        $mail->setFrom($mailer_user, "European Lisp Symposium");
        $mail->addAddress($_POST['email']);
        $mail->Subject = "European Lisp Symposium Registration";
        $mail->Body = sprintf($mailer_body,
                              $order->id,
                              $_POST['kind'],
                              $_POST['name'],
                              $_POST['email'],
                              $_POST['affiliation'],
                              $_POST['foodRestrictions'],
                              $_POST['banquet'],
                              $_POST['certificate'],
                              $_POST['proceedings']);
        $mail->send();
    } catch(Stripe_CardError $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_InvalidRequestError $e) {
        error_log($e);
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_AuthenticationError $e) {
        error_log($e);
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_ApiConnectionError $e) {
        error_log($e);
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_Error $e) {
        error_log($e);
        $message = $e->getMessage();
        $failed = true;
    } catch(PHPMailer\PHPMailer\Exception $e) {
        error_log($e);
        if($order != null) $order->returnOrder();
        $message = "Failed to send receipt email, the order has been returned.";
        $failed = true;
    } catch (Exception $e) {
        error_log($e);
        if($order != null) $order->returnOrder();
        $message = $e->getMessage();
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
