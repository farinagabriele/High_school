<!DOCTYPE html>
<?php
    session_start();
    if(!isset($_SESSION["email"])){
        header("Location: login.html");
    }
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Ok</title>
</head>
<body>
    <h1>Benvenuto!</h1>
    <p>identificazione utente riuscita</p>
</body>
</html>