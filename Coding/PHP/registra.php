<?php
    // Connessione al DB
    include "connessione.php";

    // Inserimento dell'utente nel DB strtolower() 
    if (isset($_POST["invia"])){
        $cognome = $_POST["cognome"];
        $nome = $_POST["nome"];
        $email = strtolower($_POST["email"]);
        $telefono = $_POST["telefono"];
        $citta = $_POST["citta"];
        $provincia = $_POST["provincia"];
        $password_u = password_hash($_POST["password"], PASSWORD_DEFAULT);

        // Query
        $sql = "INSERT INTO utenti 
                (cognome, nome, email, 
                telefono, citta, provincia, 
                password)
                VALUES ('$cognome', '$nome', '$email',
                       '$telefono', '$citta', '$provincia',
                       '$password_u');";
        if ($con->query($sql)){
            echo "Registrazine effettuata correttamente";
        }
        else {
            echo "Errore avvenuto durante la registrazione: " . $con->error;
        }
    }
    // Chiusura connessione
    $con->close();
?>