<?php
    // Simula il recupero di dati dal database
    $data = array(
        array( "nome" => "tiramisù",  "ingredienti" => array("caffè", "savoiardi", "mascarpone") ),
        array( "nome" => "pizza",     "ingredienti" => array("farina", "lievito", "mozzarella") ),
        array( "nome" => "carbonara", "ingredienti" => array("uova", "guanciale", "pecorino") ),
        array( "nome" => "macedonia", "ingredienti" => array("banana", "fragola") )
    );

    // Recupera dalla chiamata GET il numero di ricette da restituire
    $num = isset($_GET['num']) && is_numeric($_GET['num'])
        ? $_GET['num'] : 1;

    // Recupera dalla sessione l'indice dell'ultima ricetta restituita
    session_start();
    if (!isset($_SESSION["last_index"])) {
        $_SESSION["last_index"] = 0;
    }
    $last_index = $_SESSION["last_index"];

    // Stampa in formato JSON parte dell'array contenente le ricette
    echo json_encode(array_slice($data, $last_index, $num)); //questo sarà il xhr.responseText. L'equivalente di json_encode è JSON.stringify in javascript

    // Aggiorna l'indice dell'ultima ricetta restituita
    $_SESSION["last_index"] = min(sizeof($data), $last_index + $num);
?>