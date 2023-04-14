<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disiscriviti</title>
</head>
<body>
    <h1>Disiscriviti</h1>
    <p>Inserisci la tua email per disiscriverti dalla Newsletter</p>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <label for="email">Email: </label>
        <input type="email" name="email" maxlength="40" required/>
        <input type="submit" name="invia" value="Disiscriviti"/>
    </form>

    <?php
        if (isset($_POST["invia"]))
        {
            // Acquisizione input dal form
            $email = $_POST["email"];

            // Connessione al DB
            include "connessione.php";

            // Disiscrizione dell'utente
            // Query di UPDATE
            $sql = "UPDATE Utente
                    SET Newsletter = 0
                    WHERE Email = '$email';";
            // Controllo errori ed essecuzione query
            if ($con->query($sql))
            {
                echo "Disiscrizione avvenuta con successo";
            }
            else
            {
                echo "Errore avvenuto durante l'aggiornamento";
            }

            // Chiusura connessione
            $con->close();
        }
    ?>
</body>
</html>