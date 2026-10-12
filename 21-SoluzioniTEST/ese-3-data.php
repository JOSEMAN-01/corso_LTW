<?php
$cityName = isset($_GET['city']) ? $_GET['city'] : '';
if (empty($cityName)) {
    echo json_encode(["error" => "Inserisci il nome di una città."]);
} else {
    // Leggi i dati delle città dal file JSON
    $cities = [
        [
            "name" => "New York",
            "country" => "Stati Uniti",
            "population" => "8.336.817",
            "description" => "New York City, o semplicemente New York, è la città più popolosa degli Stati Uniti. Con una popolazione stimata nel 2019 di 8.336.817 persone distribuite su circa 302,6 miglia quadrate, New York City è anche la città più densamente popolata degli Stati Uniti."
        ],
        [
            "name" => "Londra",
            "country" => "Regno Unito",
            "population" => "8.982.000",
            "description" => "Londra è la capitale e la città più grande dell'Inghilterra e del Regno Unito. Situata sul fiume Tamigi nel sud-est dell'Inghilterra, Londra è stata un insediamento importante per due millenni. Londinium è stata fondata dai Romani."
        ],
        [
            "name" => "Parigi",
            "country" => "Francia",
            "population" => "2.148.271",
            "description" => "Parigi è la capitale e la città più popolosa della Francia. Sin dal XVII secolo, Parigi è stata uno dei principali centri europei di finanza, diplomazia, commercio, moda, scienza e arte."
        ]
    ];

    // Cerca la città nel file JSON
    $cityFound = false;
    foreach ($cities as $city) {
        if (strtolower($city['name']) === strtolower($cityName)) {
            echo json_encode($city);
            $cityFound = true;
            break;
        }
    }

    if (!$cityFound) {
        echo json_encode(["error" => "Città non trovata."]);
    }
}
?>
