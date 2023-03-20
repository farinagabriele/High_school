<?php
    // Coppia email - password stripslash() $conn->real_escape_string
    // $conn->fetch_assoc
    include "connessione.php";
    // Validazione email e pass
    if (isset($_POST["invia"])){
        $codFisc = strtolower($_POST["codFisc"]);
        $password = strtolower($_POST["password"]);
        // Protezione da sql injection
        $codFisc = stripslashes($codFisc);
        $password = stripslashes($password);
        $codFisc = $con->real_escape_string($codFisc);
        $password = $con->real_escape_string($password);
        
        // Lettura dati dalla tabella utente
        $sql = "SELECT * FROM conti
                WHERE CodiceFiscale = '$codFisc';";
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
        $_SESSION["codFisc"] = $codFisc;
        $_SESSION["password"] = $password;
        $_SESSION["NumeroConto"] = $row["NumeroConto"];
        header("Location: loginok.php");
    } else {
        echo "Errore di autenticazione<br/>";
        echo "Torna a pagina di login <a href=\"login.html\">login</a>";
    }
    
    $result->free();
    $con->close();
?>