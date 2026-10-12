class Persona {
    constructor(nome,cognome){
        this.nome=nome;
        this.cognome=cognome;
    }
}

class Studente extends Persona {
    constructor(n,c,voti){
        super(n,c);
        this.voti=voti;
    }
}

var Mario=new Persona("Mario", "Rossi", [18,10,30,12]);
