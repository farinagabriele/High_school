<?php
    // Coppia email - password stripslash() $conn->real_escape_string
    // $conn->fetch_assoc
    include "connessione.php";
    // Validazione email e pass
    if (isset($_POST["invia"])){
        $email = strtolower($_POST["email"]);
        $password = strtolower($_POST["password"]);
        // Protezione da sql injection
        $email = stripslashes($email);
        $password = stripslashes($password);
        $email = $con->real_escape_string($email);
        $password = $con->real_escape_string($password);
        
    }
    // Controllo esistenza utente
    // deve esistere solo 1 una email che corrisponde nel DB

    // Avvio della sessione
    session_start();
    $_SESSION["email"] = $email;
    $_SESSION["password"] = $password;
    header("Location: loginok.php");

?>