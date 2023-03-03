<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>elenco citta bis</title>
</head>
<body>
    <!-- Elenco degli utenti residenti in una data città -->
    <?php
        if (isset($_POST["invia"])){
            $citta = $_POST["citta"];
            echo "<h1>Elenco degli utenti residenti a $citta</h1>";
            // Parametri
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