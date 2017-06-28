<?php
if( isset($_POST) ){
     
    //form validation vars
    $formok = true;
    $errors = array();
     
    //submission data
    $ipaddress = $_SERVER['REMOTE_ADDR'];
    $date = date('d/m/Y');
    $time = date('H:i:s');
     
    //form data
    $name = $_POST['name'];    
    $email = $_POST['email'];
    $message = $_POST['message'];
     
    //validate form data
     
    //validate name is not empty
    if(empty($name)){
        $formok = false;
        $errors[] = "No has introducido tu nombre. :(";
    }
     
    //validate email address is not empty
    if(empty($email)){
        $formok = false;
        $errors[] = "No has introducido tu mail. :(";
    //validate email address is valid
    }elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $formok = false;
        $errors[] = "No has introducido una dirección email válida. :(";
    }
     
    //validate message is not empty
    if(empty($message)){
        $formok = false;
        $errors[] = "No has introducido tu mensaje. :(";
    }
    //validate message is greater than 20 characters
    elseif(strlen($message) < 15){
        $formok = false;
        $errors[] = "Tu mensaje debe contener más de 15 caracteres.";
    }
     
    //send email if all is ok
    if($formok){
        $headers = "From: info@example.com" . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
         
        $emailbody = "<p>¡Alguien quiere contactarte, mi Fede!</p>
                      <p><strong>Nombre: </strong> {$name} </p>
                      <p><strong>Mail: </strong> {$email} </p>
                      <p><strong>Mensaje: </strong> {$message} </p>
                      <p>Este mensaje fue enviado desde la dirección IP: {$ipaddress} on {$date} at {$time}</p>";
         
        mail("enquiries@example.com","New Enquiry",$emailbody,$headers);
         
    }
     
    //what we need to return back to our form
    $returndata = array(
        'posted_form_data' => array(
            'name' => $name,
            'email' => $email,
            'message' => $message
        ),
        'form_ok' => $formok,
        'errors' => $errors
    );
         
     
    //if this is not an ajax request
    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) !== 'xmlhttprequest'){
        //set session variables
        session_start();
        $_SESSION['cf_returndata'] = $returndata;
         
        //redirect back to form
        header('location: ' . $_SERVER['HTTP_REFERER']);
    }
}
