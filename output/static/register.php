<?php
\Stripe\Stripe::setApiKey("FIXME FIXME FIXME");

$missing = array();
$failure = true;
if(!$_POST['stripe-token']){ $missing[] = "Credit card transaction"; }
if(!$_POST['sku']){ $missing[] = "Type of attendance"; }
if(!$_POST['name']){ $missing[] = "Name"; }
if(!$_POST['email']){ $missing[] = "Email"; }

if(empty($missing)){
    try{
        $order = \Stripe\Order::create(array(
            "currency" => "eur",
            "email" => $_POST['email'],
            "items" => array(
                array(
                    "type" => "sku",
                    "parent" => $_POST['sku'],
                )
            ),
            "metadata" => array(
                "name" => $_POST['name'],
                "email" => $_POST['email'],
                "affiliation" => $_POST['affiliation'],
                "food-restrictions" => $_POST['food-restrictions'],
                "banquet" => $_POST['banquet'],
                "certificate" => $_POST['certificate'],
                "proceedings" => $_POST['proceedings'],
            ),
        ));
        
        $order->pay(array("source" => $_POST['stripe-token']));
        $failure = false;
    } catch(Stripe_CardError $e) {
        $failure = $e->getMessage();
    } catch (Stripe_InvalidRequestError $e) {
        // Invalid parameters were supplied to Stripe's API
        $failure = $e->getMessage();
    } catch (Stripe_AuthenticationError $e) {
        // Authentication with Stripe's API failed
        $failure = $e->getMessage();
    } catch (Stripe_ApiConnectionError $e) {
        // Network communication with Stripe failed
        $failure = $e->getMessage();
    } catch (Stripe_Error $e) {
        // Display a very generic error to the user, and maybe send
        // yourself an email
        $failure = $e->getMessage();
    } catch (Exception $e) {
        // Something else happened, completely unrelated to Stripe
        $failure = $e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>ELS registration</title>
    <link rel="stylesheet" type="text/css" href="../static/els.css"/>
  </head>
  <header>
    <h1><a href="../index.html">European Lisp Symposium</a></h1>
    <nav class="editions"></nav>
    <nav class="main"></nav>
  </header>
  <main>
    <article id="registration">
      <?php if($failure == false){ ?>
        <h3>Thank you for attending ELS!</h3>
        <p>
          You should receive a confirmation email for the transaction shortly.
        </p>
        <p>
          We look forward to seeing you at the conference!
        </p>
      <?php }else if(!empty($missing)){ ?>
        <h3>Incomplete registration form</h3>
        <p>
          Please make sure to fill out the following fields appropriately:
        </p>
        <ul>
          <?php foreach($missing as $item){ ?>
            <li><?=$item?></li>
          <?php } ?>
        </ul>
      <?php }else{ ?>
        <h3>Failed to perform transaction</h3>
        <p>
          <?=$failure?>
        </p>
      <?php } ?>
    </article>
  </main>
</html>
