<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Numeri in lettere</title>
</head>
<body>
    <h1>Numeri in lettere</h1>
    <p>Inserisci un numero compreso tra 1 e 5</p>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <input type="number" name="num" placeholder="Num:" min="1" max="5" required/> 
        <input type="submit" name="invia" value="invia" required/>
    </form>

    <?php
        if (isset($_POST["invia"])){
            switch ($_POST["num"]){
                case 1:
                    echo "Uno";
                    break;
                case 2:
                    echo "Due";
                    break;
                case 3:
                    echo "Tre";
                    break;
                case 4:
                    echo "Quattro";
                    break;
                case 5:
                    echo "Cinque";
                    break;
                default:
                    echo "Uno";
                    break;
            }
        }
    ?>
</body>
</html>