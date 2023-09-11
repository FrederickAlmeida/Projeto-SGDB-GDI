from povoamento import db, pessoas, equipes, partidas, emissoras, transmissoes

# Selecionando todas as pessoas participantes das olimpíadas(atletas, técnicos e funcionários de emissoras)

pessoas.find()

# Selecionando todas as equipes com 4 atletas usando $size

equipes.find({"atletas": {"$size": 4}})

# Agrupando todos os atletas brasileiros e calculando a média de idade

pessoas.aggregate([
    {
        "$match": {
            "tipo": "Atleta",
            "pais": "Brasil"
        }
    },
    {
        "$group": {
            "_id": None,
            "media_idade": {"$avg": "$idade"}
        }
    }
])

# Selecionando todos os atletas sem mostrar id e tipo

pessoas.aggregate([
    {
        "$match": {
            "tipo": "Atleta",   
        }
    },
    {
        "$project": {
            "_id": 0,
            "tipo": 0
        }
    }
])

# Selecionando os atletas com 40 anos ou mais

pessoas.find({"tipo": "Atleta", "idade": {"$gte": 40}})

# Selecionando a soma do salário dos funcionários do sportv

pessoas.aggregate([
    {
        "$match": {
            "emissora": "SporTV"
        }
    },
    {
        "$group": {
            "_id": None,
            "soma_salario": {"$sum": "$salario"}
        }
    }
])

# Contando quantos técnicos existem 

pessoas.count_documents({"tipo": "Técnico"})

# Selecionando a idade máxima de um técnico

pessoas.aggregate([
    {
        "$match": {
            "tipo": "Técnico"
        }
    },
    {
        "$group": {
            "_id": None,
            "max_idade": {"$max": "$idade"}
        }
    }
])

# selecionando as equipes com técnico 

equipes.find({"tecnico": {"$exists": True}})

# selecionando as partidas ordenadas crescentemente pela quantidade de espectadores

partidas.find().sort("qnt_espectadores", 1)

# selecionando as 3 partidas com mais espectadores

partidas.find().sort("qnt_espectadores", -1).limit(3)

# selecionando as pessoas com menos de 20 anos

pessoas.find({"$where": "this.idade < 20"})