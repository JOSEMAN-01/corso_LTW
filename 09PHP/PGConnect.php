<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Esempio di connessione a Basi Dati tramite PHP</title>
</head>
<body>
    <?php
        $dbconn=pg_connect("host=localhost port=5433 dbname=accademia user=postgres password=postgres") or die("Could not connect: ".pg_last_error());
        $query='SELECT * FROM persona';
        $result=pg_query($query) or die('Query failed: '.pg_last_error());//$result sarà un array di array
        //printing results in HTML
        echo "<table>\n";
        while($line=pg_fetch_assoc($result,null)){
            echo "\t<tr>\n";
            foreach($line as $col_value){
                echo "\t\t<td> $col_value </td>\n";//Notare come l'uso di doppie virgolette interpreta il valore della variabile col_value
            }
            echo "\t</tr>\n";
        }
        echo "</table>\n";
        pg_free_result($result);//Perché?
        pg_close($dbconn);

    ?>
</body>
</html>