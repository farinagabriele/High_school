<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrazione</title>
</head>
<body>
    <h1>Registrazione</h1>
    <p>Inserisci i tuoi dati</p>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
        <label for="nome">Nome: </label>
        <input type="text" name="nome" maxlength="40" required/>
        <label for="cognome">Cognome: </label>
        <input type="text" name="cognome" maxlength="50" required/>
        <label for="email">Email: </label>
        <input type="email" name="email" maxlength="40" required/>
        <label for="telefono">Telefono: </label>
        <input type="text" name="telefono" maxlength="20" required/>
        <label for="citta">Citta: </label>
        <input type="text" name="citta" maxlength="30" required/>
        <label for="provincia">Provincia: </label>
        <input type="text" name="provincia" maxlength="2" required/>
        <label for="password">Password: </label>
        <input type="text" name="password" required/>
        <input type="submit" name="invia" value="Registrati"/>
    </form>

    <?php
        if (isset($_POST["invia"]))
        {
            // Raccolta input dal form
            $nome = $_POST["nome"];
            $cognome = $_POST["cognome"];
            $email = $_POST["email"];
            $telefono = $_POST["telefono"];
            $citta = $_POST["citta"];
            $provincia = $_POST["provincia"];
            $password = password_hash($_POST["password"], PASSWORD_DEFAULT);

            // Connessione al db
            include "connessione.php";

            // Registrazione dell'utente
            // Query
            $sql = "INSERT INTO Utente (Cognome, Nome, Email, Telefono, Citta, Provincia, Password, Newsletter)
                    VALUES ('$cognome', '$nome', '$email', '$telefono', '$citta', '$provincia', '$password', 1);";
            // Controllo errori
            if($con->query($sql))
            {
                echo "Iscrizione avvenuta con successo";
            }
            else
            {
                echo "Errore avvenuto durante l'inserimento!";
            }

            // Chiusura connessione
            $con->close();
        }
    ?>
</body>
</html>