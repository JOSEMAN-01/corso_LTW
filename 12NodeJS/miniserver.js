const {createServer}=require("http");
const {readFileSync}=require("fs");

//In realtà Node JS offre il modulo "express" che semplifica questo tipo di procedura (non l'abbiamo visto a lezione)
let server=createServer((request,response)=>{
    response.writeHead(200,{"Content-type":"text/html"});
    try{
        const path=request.url.endsWith("/")? "."+request.url+"/index.html":"."+request.url; //se ci hanno chiesto una cartella allora restituiamo la sua pagina index, altrimenti restituici il documento richiesto
        const contenuto=readFileSync(path,"utf8");
        response.write(contenuto);
    }catch(err){
        response.write("FILE NOT FOUND");
    }
    response.end();
});

server.listen(8000);
console.log("In ascolto sulla porta 8000");