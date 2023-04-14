<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newsletter</title>
</head>
<body>
    <h1>Newsletter</h1>
    <p>Scrivi il contenuto della email da spedire a tutti gli iscritti</p>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <textarea name="contenuto"></textarea>
        <input type="submit" name="invia" value="Spedisci">
    </form>
</body>
</html>