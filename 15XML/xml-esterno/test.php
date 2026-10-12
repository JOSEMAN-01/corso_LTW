<?php
header("Content-Type: application/xml");//Facciamo esplicito che il documento ritornato sarà di tipo XML
$xml= simplexml_load_file("test.xml");
echo $xml->asXML();

?>