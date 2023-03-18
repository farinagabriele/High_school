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
        
        // Lettura dati dalla tabella utente
        $sql = "SELECT * FROM utenti
                WHERE email = '$email';";
        $result = $con->query($sql);
        // Autenticazione dell'utente
        $controllo = false;
        $conta = $result->num_rows;
        if ($conta == 1){
            $row = $result->fetch_assoc();
            $passc = $row["password"];
            if (password_verify($password, $passc)){
                $controllo = true;
            }
        }
        
    }
    // Controllo esistenza utente
    // deve esistere solo 1 una email che corrisponde nel DB

    // Avvio della sessione
    if ($controllo){
        session_start();
        $_SESSION["email"] = $email;
        $_SESSION["password"] = $password;
        header("Location: loginok.php");
    } else {
        echo "Errore di autenticazione<br/>";
        echo "Torna a pagina di login <a href=\"login.html\">login</a>";
    }
?>