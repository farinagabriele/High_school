<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get User</title>
    <style>
        table{
        width: 100%;
        border-collapse: collapse;
        }

        table, td, th {
            border: 1px solid black;
            padding: 5px;
        }

        th {
            text-align: left;
        }
    </style>
</head>
<body>
    <?php
    $q = intval($_GET['q']);

    // Connessione al database
    include "connessione.php";
    // Query
    $sql = "SELECT *
            FROM Utenti
                WHERE IDUtente = $q";
    $result = $con->query($sql);

    if ($result->num_rows > 0){
        // Creazione tabella
        echo "<table>";
        echo "<thead>";
        echo "<th>Nome</th>";
        echo "<th>Cognome</th>";
        echo "<th>Indirizzo</th>";
        echo "<th>Città</th>";
        echo "</thead>";
        echo "<tbody>";
        
        while ($row = $result->fetch_assoc()){
            echo "<tr>";
            echo "<td>" . $row["Nome"] . "</td>";
            echo "<td>" . $row["Cognome"] . "</td>";
            echo "<td>" . $row["Indirizzo"] . "</td>";
            echo "<td>" . $row["Citta"] . "</td>";
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
    }
    $result->free();
    $con->close();
    ?>
</body>
</html>