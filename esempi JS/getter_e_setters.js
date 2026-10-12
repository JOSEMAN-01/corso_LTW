var persona={
    nome: "Pippo",
    get lingua(){
        //if(this.lingua==undefined){  è sbagliato, perché lingua è il nome di questa funzione
        //Dobbiamo usare una proprietà nascosta (es. _lang)
        if(this._lang==undefined){
            console.warn("La lingua non è stata ancora definita");
        }
    },

    set lingua(value){
        if(value==null){
            console.warn("Non puoi impostare la lingua con valore null");
        }
        else this._lang=l;
    }
};