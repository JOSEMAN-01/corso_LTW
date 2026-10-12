<?php
header('Content-Type: application/xml');
$xml = simplexml_load_file("prodotti.xml");
echo $xml->asXML();
?>