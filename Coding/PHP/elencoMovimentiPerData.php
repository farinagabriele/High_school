<!DOCTYPE html>
<?php
    session_start();
    if(!isset($_SESSION["codFisc"])){
        header("Location: login.html");
    }
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elenco Movimenti Per Data</title>
</head>
<body>
    <h1>Elenco dei movimenti</h1>
    <p>Inserisci il periodo in cui vuoi visualizzare i movimenti</p>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <input type="date" name="data_inizio" required placeholder="Da data:"/>
        <input type="date" name="data_fine" required placeholder="A data:"/>
        <input type="submit" name="invia" value="Cerca"/>
    </form>

    <?php
        if (isset($_POST["invia"])){
            include "connessione.php";

            // Raccolta input
            $data_inizio = $_POST["data_inizio"];
            $data_fine = $_POST["data_fine"];
            $numC = $_SESSION["NumeroConto"];

            // Query
            $sql = "SELECT Movimenti.*
                    FROM Movimenti
                    INNER JOIN Conti ON Movimenti.NumeroConto = Conti.NumeroConto
                    WHERE NumeroConto = '$numC' 
                    AND Movimenti.DataRegistrazione BETWEEN '$data_inizio' AND '$data_fine'";
            
            $result = $con->query($sql);
            if ($result->num_rows >= 1){
                echo "<table>";
                while ($row = $result->fetch_assoc()){
                    echo "<tr>";
                    
                    echo "</tr>";
                    
                }
                echo "</table>";
            }

            
            // Output
            
            // Chiusura connessione
        }
    ?>
</body>
</html>