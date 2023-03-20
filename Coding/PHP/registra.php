<?php
    // Connessione al DB
    include "connessione.php";

    // Inserimento dell'utente nel DB strtolower() 
    if (isset($_POST["invia"])){
        $cognome = $_POST["cognome"];
        $nome = $_POST["nome"];
        $data = $_POST["data"];
        $codFisc = $_POST["codFisc"];
        $password_u = password_hash($_POST["password"], PASSWORD_DEFAULT);

        // Query
        $sql = "INSERT INTO conti 
                VALUES (NULL, '$cognome', '$nome', '$data',
                       '$codFisc', '$password_u');";
        if ($con->query($sql)){
            echo "Registrazine effettuata correttamente";
            echo "Vai alla <a href=\"dashboard.html\">Dashboard</a>";
        }
        else {
            echo "Errore avvenuto durante la registrazione: " . $con->error;
        }
    }
    // Chiusura connessione
    $con->close();
?>