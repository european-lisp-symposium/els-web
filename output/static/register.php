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

$stripe_private_key = secret("stripe-private-key");
$stripe_init = secret("stripe-init");

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
    try{
        require_once($stripe_init);
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
    } catch(Stripe_CardError $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_InvalidRequestError $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_AuthenticationError $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_ApiConnectionError $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Stripe_Error $e) {
        $message = $e->getMessage();
        $failed = true;
    } catch (Exception $e) {
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
