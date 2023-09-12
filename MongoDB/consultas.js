
// Boa correção Luiza e Cynara <3 – Ass.. Ian Gabriel Braga Trinta e Felipe Neiva	

// Selecionando todas as pessoas participantes das olimpíadas(atletas, técnicos e funcionários de emissoras)

db.pessoas_tabela.find()

//  Selecionando todas as equipes com 4 atletas usando $size

db.equipes_tabela.find({"atletas": {"$size": 4}})

// Agrupando todos os atletas brasileiros e calculando a média de idade

db.pessoas_tabela.aggregate([
    {
        $match: {
            tipo: "Atleta",
            pais: "Brasil"
        }
    },
    {
        $group: {
            _id: null,
            media_idade: { $avg: "$idade" }
        }
    }
])

// Selecionando todos os atletas sem mostrar id e tipo

db.pessoas_tabela.aggregate([
    {
        $match: {
            tipo: "Atleta",   
        }
    },
    {
        $project: {
            _id: 0,
            tipo: 0
        }
    }
])

// Selecionando os atletas com 40 anos ou mais

db.pessoas_tabela.find({"tipo": "Atleta", "idade": {"$gte": 40}})

// Selecionando a soma do salário dos funcionários do sportv

db.pessoas_tabela.aggregate([
    {
        $match: {
            "emissora": "SporTV"
        }
    },
    {
        $group: {
            "_id": null,
            "soma_salario": { $sum: "$salario" }
        }
    }
])



// Contando quantos técnicos existem 

db.pessoas_tabela.countDocuments({"tipo": "Técnico"})

// Selecionando a idade máxima de um técnico

db.pessoas_tabela.aggregate([
    {
        $match: {
            "tipo": "Técnico"
        }
    },
    {
        "$group": {
            "_id": null,
            "max_idade": { $max: "$idade" }
        }
    }
])

// selecionando as equipes com técnico 

db.equipes_tabela.find({"tecnico": {"$exists": true}})

// selecionando as partidas ordenadas crescentemente pela quantidade de espectadores

db.partidas_tabela.find().sort("qnt_espectadores", 1)

// selecionando as 3 partidas com mais espectadores

db.partidas_tabela.find().sort("qnt_espectadores", -1).limit(3)

// selecionando as pessoas com menos de 20 anos

db.pessoas_tabela.find({"$where": "this.idade < 20"})

// atualizando (incrementando em +1000) os valores da qnt_espectadores das partidas em Recife e Fortaleza

db.partidas_tabela.updateMany(
    {"cidade" : {"$in" : ["Recife", "Fortaleza"]}}, 
    {"$inc": {"qnt_espectadores": 1000}}    
)

// atualizando uma unica partida (incrementando em +1000 a qnt_espectadores)

db.partidas_tabela.updateOne(
    {"_id" :1},
    {"$set": {"qnt_espectadores": 80000}}    
)

// criar um índice para o campo nome da pessoa utilizando text

db.pessoas_tabela.createIndex({"nome": "text"})

// selecionando as pessoas com nome "João"

db.pessoas_tabela.find({$text: {$search: "João"}})

// selecionando as partidas com a equipe brasileira

db.partidas_tabela.find(filter={"competidores": {"$elemMatch": {"pais": "Brasil"}}})

// selecionando as partidas que tem Brasil e Japão como competidores

db.partidas_tabela.find({"competidores": {"$all": [db.equipes_tabela.findOne({"pais": "Brasil"}), db.equipes_tabela.findOne({"pais": "Japão"})]}})

// Passa pelas pessoas e diz se é Adulto ou Crianca

db.pessoas_tabela.aggregate([{$project: {nome: 1,idade: 1,faixa_etaria: {$cond: {if: { $gte: ["$idade", 18] },then: "Adulto",else: "Menor de Idade" }}}}])





// renomeando a tabela transmissoes

db.transmissoes_tabela.renameCollection("tabela_transmissoes")


// pretty ( não testei )
// Era infinitamente melhor inserindo o Matheus Baneyr
// muda ue
//fica bonito, é sério, muda sim
//MUDA
//ARROMBADO


// selecionando o Lionel Messi
// Neiva, tá certo isso, fala p fred printar com e sem, pq aparentemente no shell sem o pretty ele posta o JSON tudo na mesma linha, e com o pretty fica json, 


db.pessoas_tabela.find({"nome": "Lionel Messi"}).pretty()

// pega a cidade e printa a quantidade de espectadores
db.partidas_tabela.mapReduce(
    function() {
       emit(this.cidade, this.qnt_espectadores);
    },
    function(key, values) {
       return Array.sum(values);
    },
    {
       query: { "competidores.esporte": "Futebol" },
       out: "total_spectators_by_city"
    }
)

//da join na tabela de pessoa com a de equipe baseado na equipe
db.pessoas_tabela.aggregate([
    {
        $lookup: {
            from: "equipes_tabela",
            localField: "equipe",
            foreignField: "_id",
            as: "equipe"
        }
    }
])

// Adiciona a atleta Sheilla Castro na equipe de id 1 se ela já não estiver la
db.equipes_tabela.updateOne(
    { _id: 1 },
    { $addToSet: { atletas: db.pessoas_tabela.findOne({"nome": "Sheilla Castro"})}}
)
