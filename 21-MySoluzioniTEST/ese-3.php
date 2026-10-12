<?php
    $data=array(
        array("nome"=>"Roma", "popolazione"=>"2,76M","lingua"=>"Italiano","stagione"=>"primavera"),
        array("nome"=>"Istanbul", "popolazione"=>"15M", "lingua"=>"Turco", "stagione"=>"estate" )
    );
    //Conviene fare un controllo prima dell'assegnamento
    //$cittaScelta=$_GET['citta'];
    if(isset($_GET['citta'])) $cittaScelta=$_GET['citta'];//così NON ho controllato se la citta' è presente nel nostro array

    foreach($data as $c){
        if($c["nome"]==$cittaScelta) echo json_encode($cittaScelta);
    }

?>