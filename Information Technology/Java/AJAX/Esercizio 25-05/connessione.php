<?php
    // Parametri
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db_nome = "utenze";
    // Connessione
    $con = new mysqli($host, $user, $pass, $db_nome);
    // Controllo errori
    if ($con->errno){
        echo "Impossible connettersi al database: " . $con->error;
        exit;
    }
?>