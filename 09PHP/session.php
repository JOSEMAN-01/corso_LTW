<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        session_start();
        //print_r($_SESSION); Stampa in formato leggibile i dati della variabile _SESSION
        if(isset($_SESSION["nome"])){
            //Anche se cambiamo il valore passato nell'URL il valore rimarrà lo stesso
            echo "Bentornato/a ".$_SESSION["nome"];
        }

        else{//Assumendo che _GET abbia una chiave "nome"
            echo "Benvenuto/a ".$_GET["nome"];
            $_SESSION["nome"]=$_GET["nome"];
        }
        
        session_destroy();
        //Dalla prossima connessione voglio questo nuovo cookie
        setcookie("chiave3","valore3");
        //document.cookie="chiave3=valore3" equivalente in JS
    ?>
</body>
</html>