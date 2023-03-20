<!DOCTYPE html>
<?php
    session_start();
    if (!isset($_SESSION["codFisc"])){
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
                    WHERE Movimenti.NumeroConto = '$numC' 
                    AND Movimenti.DataRegistrazione BETWEEN '$data_inizio' AND '$data_fine'";
            
            // Output in formato tabellare
            $result = $con->query($sql);
            if ($result->num_rows >= 1){
                // Stampa
                echo "<table>";
                echo "<thead>";
                echo "<th>ID</th>";
                echo "<th>DataRegistrazione</th>";
                echo "<th>CreditoDebito</th>";
                echo "<th>Causale</th>";
                echo "<th>Importo</th>";
                echo "<th>NumeroConto</th>";
                echo "</thead>";
                echo "<tbody>";
               
                while ($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo "<td>" . $row["ID"] ."</td>";
                    echo "<td>" . $row["DataRegistrazione"] ."</td>";
                    echo "<td>" . $row["CreditoDebito"] ."</td>";
                    echo "<td>" . $row["Causale"] ."</td>";
                    echo "<td>" . $row["Importo"] ."</td>";
                    echo "<td>" . $row["NumeroConto"] ."</td>";
                    echo "</tr>";
                    
                }
                echo "</tbody>";
                echo "</table>";
            }

            // Chiusura connessione
            $result->free();
            $con->close();
        }
    ?>
    <p>Torna alla <a href="dashboard.html">Dashboard</a></p>
</body>
</html>