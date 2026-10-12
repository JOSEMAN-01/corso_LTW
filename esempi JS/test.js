var x="ciao";

console.log(x.length);

var y=x.toUpperCase();

console.log(y);

//uso una variabile senza dichiararla prima -> Questa diventa globale dichiarata
h=2;
console.log(h);
console.log(typeof(h));

//SPREAD ...
function f (arg1,arg2,arg3){

}

var arr=["a","b","c"];
var str="abc";
var s=new Set(arr);

f(...arr);
f(...str);
f(...s);

//Ciclo FOR in per gli oggetti
//It is a common practice to declare objects with "const"
var Mario = {
  nome:"Mario",
  cognome: "Rossi",
  matricola: "11234" //In realtà le proprietà possono avere come valore anche numeri
};

for(x in Mario){
  console.log(x); //nome della proprietà
  console.log(Mario[x]);
}

//Ciclo FOR of
for(x of arr){
  console.log(x);
}

//LET E CONST

if(true){
  let x=10;
}

//La prossima riga stampa "c" perché è stato l'ultimo valore assegnato nella for
//Quindi il nostro let viene ignorato
console.log(x);

if(true){
  let u=15;
}

//La seguente riga non funziona -> "u undefined"
//console.log(u);

//Let in  blocchi diversi non vanno in conflitto
let u=8;

//const non consente di RIASSEGNARE la variabile, ma questo non vuol dire che non c'è modo di cambiarne il valore!
const z=["a"];
//Non si può fare
//z=["b"];
//Ma possiamo fare
z.push("b");
console.log(z);

//typeof arrays
//sono entrambi type object

var arr1=["a","b"];
var arr2=new Array("c","d");
typeof(arr1);
typeof(arr2);
console.log(arr1);
console.log(arr2);