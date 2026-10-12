<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        //validare form inviato tramite POST
        $dbconn=pg_connect("host=localhost dbname=EsempioLogin user=postgres password=postgres port=5432") or die("Errore di connessione");
        if($dbconn){
            $email=$_POST["email"];
            /*********************************************
            Ci aspettiamo 1 sola riga perché non ci devono essere duplicati. Usiamo email=$1 e poi pg_query_params() invece di pg_query() per evitare SQL injections (query inserite maliziosamente)
            **********************************************/
            $query="SELECT 1 from utente where email=$1"; 
            $q_result=pg_query_params($dbconn,$query,array($email));//$1 fa riferimento al primo elemento di questo parametro array
            /*******************************************************/
            if($tupla=pg_fetch_assoc($q_result)){//Se c'è almeno un risultato...
                echo "Indirizzo mail già registrato. Per favore clicca qui per loggarti <a href=\"../login/index.html\"></a> oppure scegli un altro indirizzo mail per registrarti <a href=\"../registrazione/index.html\"></a>";
            }

            else{
                $pwd=$_POST["pwd"];
                $nome=$_POST["nome"];
                $cognome=$_POST["cognome"];

                $query2="INSERT INTO utente(email,pwd,nome,cognome) VALUES ($1,$2,$3,$4)";
                $q2_result=pg_query_params($dbconn,$query2,array($email,$pwd,$nome,$cognome));
                if($q2_result){//cosa ci sarà dentro q2_result?
                    echo "<h1>Registrazione completata</h1><br>";
                    echo "<a href=\"../login/index.html\" Clicca qui per loggarti </a> ";
                }
            }
        }
    ?>
</body>
</html>