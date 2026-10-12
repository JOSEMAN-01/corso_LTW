<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $a=3;

        echo raddoppia($a);
        echo "<br>";
        echo raddoppia($a);
        
        /*
        La funzione senza riferimenti restituirà ogni volta "6"
        function raddoppia($n){
            return $n++*2;
        }
        */

        function raddoppia(&$n){
            return $n++*2;
        }

    ?>
</body>
</html>