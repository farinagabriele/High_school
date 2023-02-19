<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversione euro - dollaro</title>
</head>
<body>
    <h1>Conversione euro - dollaro</h1>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]?>">
        <input type="text" name="euro" placeholder="Euro:" required/>€<br/>
        <input type="submit" name="invia" value="invia"/>
    </form>
    <?php
        if (isset($_POST["invia"])){
            $cambio = 1.06;
            $dollari = $_POST["euro"] * $cambio;
            echo "<p>".$_POST["euro"]."€ equivalgono a $dollari$</p>";
        }
    ?>
</body>
</html>