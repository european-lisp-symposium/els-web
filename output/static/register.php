<?php
$message = "";

$matches = array();
$secrets = file_get_contents(__DIR__."/../../secrets.lisp");
if(preg_match('/:stripe-private-key\\s*\"([\\w\\d_]*)\"/', $secrets, $matches) == 1){
    $stripe_private_key = $matches[1]; 
}else{
    $message = "Internal error.";
}

$missing = array();
if(!$_POST['token']){ $missing[] = "Credit card transaction"; }
if(!$_POST['kind']){ $missing[] = "Type of attendance"; }
if(!$_POST['name']){ $missing[] = "Name"; }
if(!$_POST['email']){ $missing[] = "Email"; }
if(!empty($missing)){
    $message = "Missing fields: ".join(", ", $missing);
}

if($message == ""){
    try{
        require_once('/media/DATA/Projects/php/stripe-php-6.1.0/init.php');
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
    } catch(Stripe_CardError $e) {
        $message = $e->getMessage();
    } catch (Stripe_InvalidRequestError $e) {
        // Invalid parameters were supplied to Stripe's API
        $message = $e->getMessage();
    } catch (Stripe_AuthenticationError $e) {
        // Authentication with Stripe's API failed
        $message = $e->getMessage();
    } catch (Stripe_ApiConnectionError $e) {
        // Network communication with Stripe failed
        $message = $e->getMessage();
    } catch (Stripe_Error $e) {
        // Display a very generic error to the user, and maybe send
        // yourself an email
        $message = $e->getMessage();
    } catch (Exception $e) {
        // Something else happened, completely unrelated to Stripe
        $message = $e->getMessage();
    }
}

if($message == ""){
    header('X-PHP-Response-Code: 200', true, 200);
}else{
    header('X-PHP-Response-Code: 400', true, 400);
}
header('Content-Type: text/plain; charset=UTF-8');
header('Cache-Control: private, no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
echo $message;
?>
