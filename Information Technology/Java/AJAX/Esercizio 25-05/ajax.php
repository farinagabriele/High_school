<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AJAX</title>
    <script>
        function showUser(str){
            if (str == ""){
                document.getElementById("txtHint").innerHTML = "";
                return;
            }
            else{
                let xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                        document.getElementById("txtHint").innerHTML = this.responseText;
                    }
                };
                xmlhttp.open("GET", "getuser.php?q=" + str, true);
                xmlhttp.send();
            }
        }
    </script>
</head>
<body>
    <h1>Utenti</h1>
    <form>
        <select name="user" onchange="showUser(this.value)">
            <option value="">Seleziona un utente:</option>
            <?php
                // Connessione al DB
                include "connessione.php";
                // Query
                $sql = "SELECT *
                        FROM Utenti;";
                $result = $con->query($sql);
                if ($result->num_rows > 0){
                    while ($row = $result->fetch_assoc())
                    {
                        echo "<option value=\"" . $row["IDUtente"] . "\">" . $row["Nome"] . " " .  $row["Cognome"] . "</option>";
                    }
                }else{
                    echo "<option value=\"\">Non ci sono utenti</option>";
                }

                // Chiusura connessione
                $result->free();
                $con->close();
            ?>
        </select>
    </form>
    <br/>
    <div id="txtHint"><b>Person info will be listed here...</b></div>
</body>
</html>