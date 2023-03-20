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
    <title>Elenco Movimenti Imposta</title>
</head>
<body>
    <h1>Elenco dei movimenti con causale imposta</h1>
    <?php
        include "connessione.php";
        $numC = $_SESSION["NumeroConto"];

        // Query
        $sql = "SELECT Movimenti.*
                FROM Movimenti
                INNER JOIN Conti ON Conti.NumeroConto = Movimenti.NumeroConto
                WHERE Movimenti.NumeroConto = '$numC' 
                      AND Movimenti.Causale LIKE '%impost_';";
        $result = $con->query($sql);

        // Output in formato tabellare
        if ($result->num_rows > 0){
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
        else {
            echo "<h2>Non ci sono movimenti.</h2>";
        }

        // Chiusura della connessione
        $result->free();
        $con->close();
    ?>
    <p>Torna alla <a href="dashboard.html">Dashboard</a></p>
</body>
</html>