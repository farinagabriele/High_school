<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elenco citta</title>
</head>
<body>
    <h1>Seleziona una citta</h1>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
        <select name="citta" required>
            <option name="default" value="default" selected>Seleziona una citta</option>
        <?php
            $host = 'localhost';
            $user = "root";
            $pass = "";
            $db_nome = "utenze";

            // Connessione
            $con = mysqli_connect($host, $user, $pass, $db_nome);

            // Controllo errori
            if (!$con){
                die("Impossibile connettersi al database: " . mysqli_connect_errno());
            }

            // Query
            $tab_nome = "utenti";
            $sql = "SELECT DISTINCT citta FROM $tab_nome ORDER BY citta ASC";
            $result = mysqli_query($con, $sql);

            // Stampa record
            if(mysqli_num_rows($result) > 0){
                while ($row = mysqli_fetch_array($result)){
                    echo "<option value=\"" . $row["citta"] . "\">" . $row["citta"] . "</option>";
                }
            }
        ?>
        </select>
        <input name="invia" type="submit" value="cerca"/>
    </form>
    <!-- Elenco degli utenti residenti in una data città -->
    <?php
        if (isset($_POST["invia"])){
            $citta = $_POST["citta"];
            echo "<h1>Elenco degli utenti residenti a $citta</h1>";
            
            // Query
            $tab_nome = "utenti";
            $sql = "SELECT * FROM $tab_nome WHERE citta ='$citta';";
            $result = mysqli_query($con, $sql);
        }
    ?>
    <!-- Intestazione della tabella -->
    <table border="1">
        <thead>
            <th>ID</th>
            <th>Cognome</th>
            <th>Nome</th>
        </thead>
        <tbody>
            <?php 
                // Stampa record
                if(mysqli_num_rows($result) > 0){
                    while ($row = mysqli_fetch_array($result)){
                        echo "<tr>";
                        echo "<td>" . $row["ID"] . "</td>";
                        echo "<td>" . $row["cognome"] . "</td>";
                        echo "<td>" . $row["nome"] . "</td>";
                        echo "</tr>";
                    }
                }
            ?>
        </tbody>
    </table>
</body>
</html>