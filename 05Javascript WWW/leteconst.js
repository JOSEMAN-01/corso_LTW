function foo(){
    let x= 10;
}

foo();
//il let non ha influenza sullo scope fuori dal blocco
var x=10;

//Non posso fare let x=15; perché x è già stata dichiarata nella riga 7

let z=15;
//Non posso fare var z=15; perché let non mi consente di ridichiarare

function foo2(){
    const y=10;
}

foo2();
var y;

console.log(y);//stampa undefined