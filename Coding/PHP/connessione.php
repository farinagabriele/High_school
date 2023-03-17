<?php
    // parametri
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db_nome = "utenze";

    // Connessione
    $con = new mysqli($host, $user, $pass, $db_nome);

    // Controllo errori
    if (!$con){
        echo "Impossibile connettersi al database $db_nome: " . $con->connect_error;
        exit;
    }
?>