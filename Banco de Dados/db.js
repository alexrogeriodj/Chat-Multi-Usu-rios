const TAMANHO_PAGINA = 10;
 
function findAll(pagina, callback){  
    const tamanhoSkip = TAMANHO_PAGINA * (pagina - 1);
    global.conn.collection("customers").find({})
                                       .skip(tamanhoSkip)
                                       .limit(TAMANHO_PAGINA)
                                       .toArray(callback);
}

//callback deve considerar error e count
function countAll(callback){  
    global.conn.collection("customers").count(callback);
}
 
module.exports = { findAll, insert, findOne, update, deleteOne, countAll, TAMANHO_PAGINA }
