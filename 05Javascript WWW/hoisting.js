//JS esegue le dichiarazioni delle variabili e delle funzioni all’inizio del blocco in cui si trovano (programma o funzione), indipendentemente dalla posizione di tali dichiarazioni nel codice
//Questo non avviene per le dichiarazioni class, let e const


/****
Esercizio: Qual'è il valore di x alla fine dell'esecuzione?
******/

x=5;
//esecuzione immediata di funzione anonima
(function(){
    //non avendo dichiarato x all'interno di questo blocco, questa verrà dichiarata globalmente
    x=0;
})();

(function(){
    x=4;
    //la mia x è locale
    var x;
})();

//x varrà 0

