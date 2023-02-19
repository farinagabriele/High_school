<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>calcolo_eta</title>
</head>
<body>
    <h1>Calcola l'età dall'anno di nascita</h1>
    <?php
        if (isset($_POST["anno_nscita"])){
            $eta = date("Y") - $_POST["anno_nscita"];
            echo "La tua età è $eta";
        }
    ?>
    
</body>
</html>