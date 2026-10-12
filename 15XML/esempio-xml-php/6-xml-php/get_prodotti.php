<?php
$products = [
    [ //Anche se PHP ha le classi, usiamo un array per descrivere un'istanza di classe
        'id' => 1, //notare il tipo di freccia =>
        'name' => 'Laptop',
        'price' => 1200.50,
        'stock' => 15
    ],
    [
        'id' => 2,
        'name' => 'Tablet',
        'price' => 300.99,
        'stock' => 30
    ],
    [
        'id' => 3,
        'name' => 'Smartphone',
        'price' => 699.99,
        'stock' => 50
    ]
];

$xml = new SimpleXMLElement('<products/>');

foreach ($products as $product) {
    $productNode = $xml->addChild('product'); // in PHP con la freccia -> accediamo a metodi e proprietà
    $productNode->addChild('id', $product['id']);
    $productNode->addChild('name', htmlspecialchars($product['name']));
    $productNode->addChild('price', $product['price']);
    $productNode->addChild('stock', $product['stock']);
}

header('Content-Type: application/xml');//è necessario?

echo $xml->asXML(); //Questa sarà la response gestita lato client. asXML() restituisce codice XML, che avrà un DOM
?>