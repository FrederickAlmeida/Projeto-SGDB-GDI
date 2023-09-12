// selecionando a db

use('olimpiadas_db');

// Inserindo atletas (1-1000)
// Futebolistas


db.pessoas_tabela.insertMany(
    [
        {
            "_id": 1,
            "nome": "Neymar Junior",
            "idade": 31,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Futebol",
            "categoria": "Coletivo",
        },
        {
            "_id": 2,
            "nome": "Gabriel Jesus",
            "idade": 24,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Futebol",
            "categoria": "Coletivo",
        },
        {
            "_id": 3,
            "nome": "Thiago Silva",
            "idade": 36,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Futebol",
            "categoria": "Coletivo",
        },
        {
            "_id": 4,
            "nome": "Gabriel Barbosa",
            "idade": 25,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 5,
            "nome": "Bruno Henrique",
            "idade": 30,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 6,
            "nome": "Thomas Muller",
            "idade": 31,
            "sexo": "M",
            "pais": "Alemanha",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 7,
            "nome": "Manuel Neuer",
            "idade": 35,
            "sexo": "M",
            "pais": "Alemanha",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 8,
            "nome": "Toni Kroos",
            "idade": 31,
            "sexo": "M",
            "pais": "Alemanha",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 9,
            "nome": "Leroy Sane",
            "idade": 25,
            "sexo": "M",
            "pais": "Alemanha",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 10,
            "nome": "Serge Gnabry",
            "idade": 26,
            "sexo": "M",
            "pais": "Alemanha",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 11,
            "nome": "Lionel Messi",
            "idade": 34,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 12,
            "nome": "Sergio Aguero",
            "idade": 33,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 13,
            "nome": "Angel Di Maria",
            "idade": 33,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 14,
            "nome": "Paulo Dybala",
            "idade": 27,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 15,
            "nome": "Lautaro Martinez",
            "idade": 23,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 16,
            "nome": "Cristiano Ronaldo",
            "idade": 36,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 17,
            "nome": "João Felix",
            "idade": 21,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 18,
            "nome": "Bernardo Silva",
            "idade": 26,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 19,
            "nome": "Bruno Fernandes",
            "idade": 26,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 20,
            "nome": "Diogo Jota",
            "idade": 24,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 21,
            "nome": "Weston McKennie",
            "idade": 23,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Jogador de Futebol"
        },
        {
            "_id": 22,
            "nome": "Zack Steffen",
            "idade": 26,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Futebol"
        },
        {
            "_id": 23,
            "nome": "Tyler Adams",
            "idade": 22,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 24,
            "nome": "Gyasi Zardes",
            "idade": 30,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Futebol"
        },
        {
            "_id": 25,
            "nome": "Christian Pulisic",
            "idade": 23,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Futebol"
        },
        {
            "_id": 26,
            "nome": "Endou Mamoru",
            "idade": 16,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Atleta",
            "esporte": "Futebol"
        },
        {
            "_id": 27,
            "nome": "Kazemaru Ichirouta",
            "idade": 16,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 28,
            "nome": "Goenji Shuuya",
            "idade": 16,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 29,
            "nome": "Fubuki Shirou",
            "idade": 16,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 30,
            "nome": "Hiroto Kiyama",
            "idade": 16,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 31,
            "nome": "Luiz Suarez",
            "idade": 34,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 32,
            "nome": "Edinson Cavani",
            "idade": 34,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 33,
            "nome": "Diego Godin",
            "idade": 35,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 34,
            "nome": "Jose Gimenez",
            "idade": 26,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 35,
            "nome": "Federico Valverde",
            "idade": 23,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 36,
            "nome": "Mohammed Kudus",
            "idade": 20,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 37,
            "nome": "Kwadwo Asamoah",
            "idade": 32,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 38,
            "nome": "Thomas Partey",
            "idade": 28,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 39,
            "nome": "Jordan Ayew",
            "idade": 29,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 40,
            "nome": "Andre Ayew",
            "idade": 31,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Atleta",
            "esporte": "Futebol",
        },
        {
            "_id": 41,
            "nome": "Roger Federer",
            "idade": 39,
            "sexo": "M",
            "pais": "Suíça",
            "tipo": "Atleta",
            "esporte": "Tênis",
        },
        {
            "_id": 42,
            "nome": "Stan Wawrinka",
            "idade": 36,
            "sexo": "M",
            "pais": "Suíça",
            "tipo": "Atleta",
            "esporte": "Tênis",
        },
        {
            "_id": 43,
            "nome": "Rafael Nadal",
            "idade": 35,
            "sexo": "M",
            "pais": "Espanha",
            "tipo": "Atleta",
            "esporte": "Tênis",
        },
        {
            "_id": 44,
            "nome": "Novak Djokovic",
            "idade": 34,
            "sexo": "M",
            "pais": "Sérvia",
            "tipo": "Atleta",
            "esporte": "Tênis",
        },
        {
            "_id": 45,
            "nome": "Dominic Thiem",
            "idade": 27,
            "sexo": "M",
            "pais": "Áustria",
            "tipo": "Atleta",
            "esporte": "Tênis",
        },
        {
            "_id": 46,
            "nome": "Usain Bolt",
            "idade": 34,
            "sexo": "M",
            "pais": "Jamaica",
            "tipo": "Atleta",
            "esporte": "Atletismo",
        },
        {
            "_id": 47,
            "nome": "Yohan Blake",
            "idade": 31,
            "sexo": "M",
            "pais": "Jamaica",
            "tipo": "Atleta",
            "esporte": "Atletismo",
        },
        {
            "_id": 48,
            "nome": "Matuê",
            "idade": 22,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Atletismo",
        },
        {
            "_id": 49,
            "nome": "Michael Phelps",
            "idade": 36,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Natação",
        },
        {
            "_id": 50,
            "nome": "Caeleb Dressel",
            "idade": 24,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Natação",
        },
        {
            "_id": 51,
            "nome": "Gabriel Medina",
            "idade": 27,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Surfe",
        },
        {
            "_id": 52,
            "nome": "Italo Ferreira",
            "idade": 27,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Atleta",
            "esporte": "Surfe",
        },
        {
            "_id": 53,
            "nome": "John John Florence",
            "idade": 28,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Surfe",
        },
        {
            "_id": 54,
            "nome": "Carissa Moore",
            "idade": 28,
            "sexo": "F",
            "pais": "Estados Unidos",
            "tipo": "Atleta",
            "esporte": "Surfe",
        },
    ]
)

// Inserindo tecnicos de Futebol (1001-1009)
db.pessoas_tabela.insertMany(
    [
        {
            "_id": 1001,
            "nome": "Tite",
            "idade": 62,
            "sexo": "M",
            "pais": "Brasil",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1002,
            "nome": "Fernando Santos",
            "idade": 66,
            "sexo": "M",
            "pais": "Portugal",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1003,
            "nome": "Lionel Scaloni",
            "idade": 43,
            "sexo": "M",
            "pais": "Argentina",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1004,
            "nome": "Gregg Popovich",
            "idade": 72,
            "sexo": "M",
            "pais": "Estados Unidos",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1005,
            "nome": "Patrick Mouratoglou",
            "idade": 51,
            "sexo": "M",
            "pais": "França",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1006,
            "nome": "Hajime Moriyasu",
            "idade": 52,
            "sexo": "M",
            "pais": "Japão",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1007,
            "nome": "Marcelo Bielsa",
            "idade": 65,
            "sexo": "M",
            "pais": "Uruguai",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
        {
            "_id": 1008,
            "nome": "Otto Addo",
            "idade": 45,
            "sexo": "M",
            "pais": "Gana",
            "tipo": "Técnico",
            "esporte": "Futebol",
        },
    ]   
)

// Inserindo jogadoras de volei (id 100-123)

db.pessoas_tabela.insertMany([
    {
    "_id": 100,
    "nome": "Jaqueline Carvalho",
    "idade": 38,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    }, 
    {
    "_id": 101,
    "nome": "Sheilla Castro",
    "idade": 39,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 102,
    "nome": "Fernanda Garay",
    "idade": 30,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 103,
    "nome": "Natalia Pereira",
    "idade": 33,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 104,
    "nome": "Gabriela Guimarães",
    "idade": 27,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 105,
    "nome": "Thaisa Menezes",
    "idade": 34,
    "sexo": "F",
    "pais": "Brasil",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 106,
    "nome": "Misty May-Treanor",
    "idade": 44,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 107,
    "nome": "Kerri Walsh Jennings",
    "idade": 43,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 108,
    "nome": "Jordan Larson",
    "idade": 35,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 109,
    "nome": "April Ross",
    "idade": 39,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 110,
    "nome": "Foluke Akinradewo",
    "idade": 33,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 111,
    "nome": "Kim Hill",
    "idade": 31,
    "sexo": "F",
    "pais": "Estados Unidos",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 112,
    "nome": "Ekaterina Gamova",
    "idade": 41,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 113,
    "nome": "Yekaterina Kosianenko",
    "idade": 35,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 114,
    "nome": "Lioubov Sokolova",
    "idade": 43,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 115,
    "nome": "Nataliya Goncharova",
    "idade": 32,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 116,
    "nome": "Tatiana Kosheleva",
    "idade": 33,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 117,
    "nome": "Svetlana Kryuchkova",
    "idade": 34,
    "sexo": "F",
    "pais": "Rússia",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 118,
    "nome": "Saori Kimura",
    "idade": 36,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 119,
    "nome": "Yuki Ishii",
    "idade": 29,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 120,
    "nome": "Nana Iwasaka",
    "idade": 28,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 121,
    "nome": "Kana Oyama",
    "idade": 27,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 122,
    "nome": "Sarina Koga",
    "idade": 26,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    },
    {
    "_id": 123,
    "nome": "Miya Sato",
    "idade": 24,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Atleta",
    "esporte": "Voleibol"
    }
])

// Inserindo Atletas de Atletismo

db.pessoas_tabela.insertMany([
    {
        "_id": 124,
        "nome": "Usain Bolt",
        "idade": 35,
        "sexo": "M",
        "pais": "Jamaica",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 125,
        "nome": "Shelly-Ann Fraser-Pryce",
        "idade": 34,
        "sexo": "F",
        "pais": "Jamaica",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 126,
        "nome": "Elaine Thompson-Herah",
        "idade": 29,
        "sexo": "F",
        "pais": "Jamaica",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 127,
        "nome": "Yohan Blake",
        "idade": 31,
        "sexo": "M",
        "pais": "Jamaica",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 128,
        "nome": "Allyson Felix",
        "idade": 35,
        "sexo": "F",
        "pais": "Estados Unidos",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 129,
        "nome": "Wayde van Niekerk",
        "idade": 29,
        "sexo": "M",
        "pais": "África do Sul",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 130,
        "nome": "Dina Asher-Smith",
        "idade": 25,
        "sexo": "F",
        "pais": "Reino Unido",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 131,
        "nome": "Noah Lyles",
        "idade": 24,
        "sexo": "M",
        "pais": "Estados Unidos",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 132,
        "nome": "Sifan Hassan",
        "idade": 28,
        "sexo": "F",
        "pais": "Países Baixos",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    },
    {
        "_id": 133,
        "nome": "Karsten Warholm",
        "idade": 25,
        "sexo": "M",
        "pais": "Noruega",
        "tipo": "Atleta",
        "esporte": "Atletismo"
    }
])

// Inserindo Atletas de Natacao

db.pessoas_tabela.insertMany([
    {
        "_id": 134,
        "nome": "Michael Phelps",
        "idade": 36,
        "sexo": "M",
        "pais": "Estados Unidos",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 135,
        "nome": "Ryan Lochte",
        "idade": 37,
        "sexo": "M",
        "pais": "Estados Unidos",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 136,
        "nome": "Ian Thorpe",
        "idade": 39,
        "sexo": "M",
        "pais": "Austrália",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 137,
        "nome": "César Cielo",
        "idade": 34,
        "sexo": "M",
        "pais": "Brasil",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 138,
        "nome": "Sun Yang",
        "idade": 30,
        "sexo": "M",
        "pais": "China",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 139,
        "nome": "Pieter van den Hoogenband",
        "idade": 43,
        "sexo": "M",
        "pais": "Holanda",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 140,
        "nome": "Kosuke Kitajima",
        "idade": 38,
        "sexo": "M",
        "pais": "Japão",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 141,
        "nome": "Grant Hackett",
        "idade": 41,
        "sexo": "M",
        "pais": "Austrália",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 142,
        "nome": "Matt Biondi",
        "idade": 55,
        "sexo": "M",
        "pais": "Estados Unidos",
        "tipo": "Atleta",
        "esporte": "Natação"
    },
    {
        "_id": 143,
        "nome": "Alexander Popov",
        "idade": 50,
        "sexo": "M",
        "pais": "Rússia",
        "tipo": "Atleta",
        "esporte": "Natação"
    }
])

// Inserindo técnicos de Volei

db.pessoas_tabela.insertMany([
    {
    "_id": 224,
    "nome": "Karch Kiraly",
    "idade": 60,
    "sexo": "M",
    "pais": "Estados Unidos",
    "tipo": "Técnico",
    "esporte": "Voleibol"
    },
    {
    "_id": 225,
    "nome": "Sergei Ovchinnikov",
    "idade": 59,
    "sexo": "M",
    "pais": "Rússia",
    "tipo": "Técnico",
    "esporte": "Voleibol"
    },
    {
    "_id": 226,
    "nome": "José Roberto Guimarães",
    "idade": 67,
    "sexo": "M",
    "pais": "Brasil",
    "tipo": "Técnico",
    "esporte": "Voleibol"
    },
    {
    "_id": 227,
    "nome": "Kumi Nakada",
    "idade": 62,
    "sexo": "F",
    "pais": "Japão",
    "tipo": "Técnico",
    "esporte": "Voleibol"
    }
])

// Inserindo funcionarios de db.emissoras_tabela
db.pessoas_tabela.insertMany(
    [
        {
            "_id": 2001,
            "nome": "Tino Marcos",
            "idade": 62,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 12000,
            "emissora" : "SporTV"
        },
        {
            "_id": 2002,
            "nome": "Mauro Naves",
            "idade": 62,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Comentarista",
            "salario": 11000,
            "emissora" : "SporTV"
        },
        {
            "_id": 2003,
            "nome": "Fernanda Gentil",
            "idade": 43,
            "sexo": "F",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 10000,
            "emissora" : "SporTV"
        },
        {
            "_id": 2004,
            "nome": "Tadeu Schmidt",
            "idade": 72,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 16000,
            "emissora" : "SporTV"
        },
        {
            "_id": 2005,
            "nome": "Renata Vasconcellos",
            "idade": 47,
            "sexo": "F",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 90000,
            "emissora" : "SporTV"
        },
        {
            "_id": 2006,
            "nome": "Paulo Andrade",
            "idade": 52,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Narrador",
            "salario": 110000,
            "emissora": "ESPN"
        },
        {
            "_id": 2007,
            "nome": "Bruno Formiga",
            "idade": 30,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Comentarista",
            "salario": 95000,
            "emissora": "TNT"
        },
        {
            "_id": 2008,
            "nome": "Fred Caldeira",
            "idade": 35,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 105000,
            "emissora": "TNT"
        },
        {
            "_id": 2009,
            "nome": "Vitor Sérgio",
            "idade": 38,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Comentarista",
            "salario": 98000,
            "emissora": "TNT"
        },
        {
            "_id": 2010,
            "nome": "Galvão Bueno",
            "idade": 71,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Narrador",
            "salario": 1500000,
            "emissora": "SporTV"
        },
        {
            "_id": 2011,
            "nome": "André Henning",
            "idade": 50,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Narrador",
            "salario": 80000,
            "emissora": "TNT"
        },
        {
            "_id": 2012,
            "nome": "João Castelo Branco",
            "idade": 55,
            "sexo": "M",
            "pais": "Brasil",
            "cargo": "Comentarista",
            "salario": 120000,
            "emissora": "ESPN"
        },
        {
            "_id": 2013,
            "nome": "Nataly Gedra",
            "idade": 38,
            "sexo": "F",
            "pais": "Brasil",
            "cargo": "Repórter",
            "salario": 100000,
            "emissora": "ESPN"
        }
    ]
)

// db.equipes_tabela

// Times de Futebol

var atletasBrasil = db.pessoas_tabela.find({"pais": "Brasil", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoBrasil = db.pessoas_tabela.findOne({"pais": "Brasil", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasAlemanha = db.pessoas_tabela.find({"pais": "Alemanha", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoAlemanha = db.pessoas_tabela.findOne({"pais": "Alemanha", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasArgentina = db.pessoas_tabela.find({"pais": "Argentina", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoArgentina = db.pessoas_tabela.findOne({"pais": "Argentina", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasPortugal = db.pessoas_tabela.find({"pais": "Portugal", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoPortugal = db.pessoas_tabela.findOne({"pais": "Portugal", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasGana = db.pessoas_tabela.find({"pais": "Gana", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoGana = db.pessoas_tabela.findOne({"pais": "Gana", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasUruguai = db.pessoas_tabela.find({"pais": "Uruguai", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoUruguai = db.pessoas_tabela.findOne({"pais": "Uruguai", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasJapao = db.pessoas_tabela.find({"pais": "Japão", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoJapao = db.pessoas_tabela.findOne({"pais": "Japão", "esporte" : "Futebol", "tipo" : "Técnico"});
var atletasEUA = db.pessoas_tabela.find({"pais": "Estados Unidos", "esporte" : "Futebol", "tipo" : "Atleta"}).toArray();
var tecnicoEUA = db.pessoas_tabela.findOne({"pais": "Estados Unidos", "esporte" : "Futebol", "tipo" : "Técnico"});


db.equipes_tabela.insertMany(
    [
        {
            "_id": 1,
            "atletas": atletasBrasil,
            "tecnico": tecnicoBrasil,
            "pais": "Brasil",
            "esporte" : "Futebol"
        },
        {
            "_id": 2,
            "atletas": atletasAlemanha,
            "tecnico": tecnicoAlemanha,
            "pais": "Alemanha",
            "esporte" : "Futebol"
        },
        {
            "_id": 3,
            "atletas": atletasArgentina,
            "tecnico": tecnicoArgentina,
            "pais": "Argentina",
            "esporte" : "Futebol"
        },
        {
            "_id": 4,
            "atletas": atletasPortugal,
            "tecnico": tecnicoPortugal,
            "pais": "Portugal",
            "esporte" : "Futebol"
        },
        {
            "_id": 5,
            "atletas": atletasGana,
            "tecnico": tecnicoGana,
            "pais": "Gana",
            "esporte" : "Futebol"
        },
        {
            "_id": 6,
            "atletas": atletasUruguai,
            "tecnico": tecnicoUruguai,
            "pais": "Uruguai",
            "esporte" : "Futebol"
        },
        {
            "_id": 7,
            "atletas": atletasJapao,
            "tecnico": tecnicoJapao,
            "pais": "Japão",
            "esporte" : "Futebol"
        },
        {
            "_id": 8,
            "atletas": atletasEUA,
            "tecnico": tecnicoEUA,
            "pais": "Estados Unidos",
            "esporte" : "Futebol"
        },
    ]
)

// Times de Volei

var atletasBrasilVolei = db.pessoas_tabela.find({"pais": "Brasil", "esporte" : "Voleibol", "tipo" : "Atleta"}).toArray();
var tecnicoBrasilVolei = db.pessoas_tabela.findOne({"pais": "Brasil", "esporte" : "Voleibol", "tipo" : "Técnico"});
var atletasEUAVolei = db.pessoas_tabela.find({"pais": "Estados Unidos", "esporte" : "Voleibol", "tipo" : "Atleta"}).toArray();
var tecnicoEUAVolei = db.pessoas_tabela.findOne({"pais": "Estados Unidos", "esporte" : "Voleibol", "tipo" : "Técnico"});
var atletasJapaoVolei = db.pessoas_tabela.find({"pais": "Japão", "esporte" : "Voleibol", "tipo" : "Atleta"}).toArray();
var tecnicoJapaoVolei = db.pessoas_tabela.findOne({"pais": "Japão", "esporte" : "Voleibol", "tipo" : "Técnico"});
var atletasRussiaVolei = db.pessoas_tabela.find({"pais": "Rússia", "esporte" : "Voleibol", "tipo" : "Atleta"}).toArray();
var tecnicoRussiaVolei = db.pessoas_tabela.findOne({"pais": "Rússia", "esporte" : "Voleibol", "tipo" : "Técnico"});


// Volei
db.equipes_tabela.insertMany([
    {
        "_id": 9,
        "atletas": atletasBrasilVolei,
        "tecnico": tecnicoBrasilVolei,
        "pais": "Brasil",
        "esporte" : "Voleibol"
    },
    {
        "_id": 10,
        "atletas": atletasEUAVolei,
        "tecnico": tecnicoEUAVolei,
        "pais": "Estados Unidos",
        "esporte" : "Voleibol"
    },
    {
        "_id": 11,
        "atletas": atletasJapaoVolei,
        "tecnico": tecnicoJapaoVolei,
        "pais": "Japão",
        "esporte" : "Voleibol"
    },
    {
        "_id": 12,
        "atletas": atletasRussiaVolei,
        "tecnico": tecnicoRussiaVolei,
        "pais": "Rússia",
        "esporte" : "Voleibol"
    }
])

// db.emissoras_tabela

// Emissoras de TV

var narradorSportv = db.pessoas_tabela.findOne({"emissora": "SporTV", "cargo": "Narrador"});
var reporteresSportv = db.pessoas_tabela.find({"emissora": "SporTV", "cargo": "Repórter"}).toArray();
var comentaristasSportv = db.pessoas_tabela.find({"emissora": "SporTV", "cargo": "Comentarista"}).toArray();
var narradorTNT = db.pessoas_tabela.findOne({"emissora": "TNT", "cargo": "Narrador"});
var reporteresTNT = db.pessoas_tabela.find({"emissora": "TNT", "cargo": "Repórter"}).toArray();
var comentaristasTNT = db.pessoas_tabela.find({"emissora": "TNT", "cargo": "Comentarista"}).toArray();
var narradorESPN = db.pessoas_tabela.findOne({"emissora": "ESPN", "cargo": "Narrador"});
var reporteresESPN = db.pessoas_tabela.find({"emissora": "ESPN", "cargo": "Repórter"}).toArray();
var comentaristasESPN = db.pessoas_tabela.find({"emissora": "ESPN", "cargo": "Comentarista"}).toArray();


db.emissoras_tabela.insertMany(
    [
        {
            "_id" : 1,
            "nome" : "SporTV",
            "narrador" : narradorSportv,
            "reporteres" : reporteresSportv,
            "comentaristas" : comentaristasSportv,
        },
        {
            "_id" : 2,
            "nome" : "TNT",
            "narrador" : narradorTNT,
            "reporteres" : reporteresTNT,
            "comentaristas" : comentaristasTNT,
        },
        {
            "_id" : 3,
            "nome" : "ESPN",
            "narrador" : narradorESPN,
            "reporteres" : reporteresESPN,
            "comentaristas" : comentaristasESPN,
        },
])

// Partida





//

// Jogos de Futebol
db.partidas_tabela.insertMany([
    {   
        "_id" : 1,
        "nome" : "Futebol - Quartas Final - Brasil x EUA",
        "datahora_inicio" : "20:00 10/10/2023",
        "datahora_fim" : "22:00 10/10/2023",
        "cidade" : "Rio de Janeiro",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Estados Unidos", "esporte": "Futebol"})],
        "estadio" : "Maracana",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"})
    },
    {
        "_id" : 2,
        "nome" : "Futebol - Quartas Final - Gana x Argentina",
        "datahora_inicio" : "10:00 11/10/2023",
        "datahora_fim" : "12:00 11/10/2023",
        "cidade" : "São Paulo",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Gana", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"})],
        "estadio" : "Alianz Arena",
        "qnt_espectadores" : 60000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"})
    },
    {
        "_id" : 3,
        "nome" : "Futebol - Quartas Final - Franca x Japão",
        "datahora_inicio" : "16:00 11/10/2023",
        "datahora_fim" : "18:00 11/10/2023",
        "cidade" : "Recife",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Franca", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})],
        "estadio" : "Ilha do Retiro",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})
    },
    {
        "_id" : 4,
        "nome" : "Futebol - Quartas Final - Uruguai x Portugal",
        "datahora_inicio" : "22:00 12/10/2023",
        "datahora_fim" : "00:00 13/10/2023",
        "cidade" : "Fortaleza",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Uruguai", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Portugal", "esporte": "Futebol"})],
        "estadio" : "Castelao",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Portugal", "esporte": "Futebol"})
    },
    {
        "_id" : 5,
        "nome" : "Futebol - Semi-Final - Brasil x Portugal",
        "datahora_inicio" : "16:00 18/10/2023",
        "datahora_fim" : "18:00 18/10/2023",
        "cidade" : "Sao Paulo",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Portugal", "esporte": "Futebol"})],
        "estadio" : "Pacaembu",
        "qnt_espectadores" : 48000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"})
    },
    {
        "_id" : 6,
        "nome" : "Futebol - Semi-Final - Argentina x Japao",
        "datahora_inicio" : "16:00 20/10/2023",
        "datahora_fim" : "18:00 20/10/2023",
        "cidade" : "Rio de Janeiro",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})],
        "estadio" : "Maracana",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})
    },
    {
        "_id" : 7,
        "nome" : "Futebol - Bronze - Argentina x Portugal",
        "datahora_inicio" : "16:00 25/10/2023",
        "datahora_fim" : "18:00 25/10/2023",
        "cidade" : "Fortaleza",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Portugal", "esporte": "Futebol"})],
        "estadio" : "Castelao",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"}),
        "medalha_bronze" : db.equipes_tabela.findOne({"pais": "Argentina", "esporte": "Futebol"})
    },
    {
        "_id" : 8,
        "nome" : "Futebol - Final - Brasil x Japão",
        "datahora_inicio" : "16:00 27/10/2023",
        "datahora_fim" : "18:00 27/10/2023",
        "cidade" : "Fortaleza",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"}), db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})],
        "estadio" : "Castelao",
        "qnt_espectadores" : 68000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"}),
        "medalha_prata" : db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Futebol"}),
        "medalha_ouro" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Futebol"})
    },
])

// Jogos de Volei

db.partidas_tabela.insertMany([
    {
        "_id" : 9,
        "nome" : "Volei - Semi-Final - Brasil x Japão",
        "datahora_inicio" : "16:00 12/10/2023",
        "datahora_fim" : "18:00 12/10/2023",
        "cidade" : "Recife",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Voleibol"}), db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"})],
        "estadio" : "Geraldao",
        "qnt_espectadores" : 30000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"})
    },
    {
        "_id" : 10,
        "nome" : "Volei - Semi-Final - EUA x Rússia",
        "datahora_inicio" : "16:00 13/10/2023",
        "datahora_fim" : "18:00 13/10/2023",
        "cidade" : "Recife",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Estados Unidos", "esporte": "Voleibol"}), db.equipes_tabela.findOne({"pais": "Rússia", "esporte": "Voleibol"})],
        "estadio" : "Geraldao",
        "qnt_espectadores" : 20000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Estados Unidos", "esporte": "Voleibol"})
    },
    {
        "_id" : 11,
        "nome" : "Volei - Bronze - Rússia x Japão",
        "datahora_inicio" : "16:00 16/10/2023",
        "datahora_fim" : "18:00 16/10/2023",
        "cidade" : "Recife",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"}), db.equipes_tabela.findOne({"pais": "Rússia", "esporte": "Voleibol"})],
        "estadio" : "Geraldao",
        "qnt_espectadores" : 24000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"}),
        "medalha_bronze" : db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"})
    },
    {
        "_id" : 12,
        "nome" : "Volei - Final - Brasil x EUA",
        "datahora_inicio" : "16:00 18/10/2023",
        "datahora_fim" : "18:00 18/10/2023",
        "cidade" : "Recife",
        "competidores" : [db.equipes_tabela.findOne({"pais": "Japão", "esporte": "Voleibol"}), db.equipes_tabela.findOne({"pais": "Estados Unidos", "esporte": "Voleibol"})],
        "estadio" : "Geraldao",
        "qnt_espectadores" : 36000,
        "vencedor" : db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Voleibol"}),
        "medalha_prata" : db.equipes_tabela.findOne({"pais": "Estados Unidos", "esporte": "Voleibol"}),
        "medalha_ouro" : db.equipes_tabela.findOne({"pais": "Brasil", "esporte": "Voleibol"})
    }
])

// COMPETIÇÕES INDIVIDUAIS

let findAtletismo = db.pessoas_tabela.find({"tipo": "Atleta","esporte": "Atletismo"}).toArray()
let findNatacao = db.pessoas_tabela.find({"tipo": "Atleta","esporte": "Natação"}).toArray()

db.partidas_tabela.insertMany([
    {
        "_id" : 13,
        "nome" : "Atletismo",
        "datahora_inicio" : "16:00 23/10/2023",
        "datahora_fim" : "18:00 23/10/2023",
        "cidade" : "Rio de Janeiro",
        "competidores" : findAtletismo,
        "estadio" : "Maracana",
        "qnt_espectadores" : 60000,
        "medalha_ouro" : db.equipes_tabela.findOne({"nome": "Usain Bolt"}),
        "medalha_prata" : db.equipes_tabela.findOne({"nome": "Shelly-Ann Fraser-Pryce"}),
        "medalha_bronze" : db.equipes_tabela.findOne({"nome": "Elaine Thompson-Herah"})
    },
    {
        "_id" : 14,
        "nome" : "Natação",
        "datahora_inicio" : "16:00 24/10/2023",
        "datahora_fim" : "18:00 24/10/2023",
        "cidade" : "Recife",
        "competidores" : findNatacao,
        "estadio" : "Geraldao",
        "qnt_espectadores" : 20000,
        "medalha_ouro" : db.equipes_tabela.findOne({"nome": "César Cielo"}),
        "medalha_prata" : db.equipes_tabela.findOne({"nome": "Michael Phelps"}),
        "medalha_bronze" : db.equipes_tabela.findOne({"nome": "Ryan Lochte"})
    }
])
// Inserindo db.transmissoes_tabela

db.transmissoes_tabela.insertMany([
    {
        "_id" : 1,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Quartas Final - Brasil x EUA"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    },
    {
        "_id" : 2,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Quartas Final - Brasil x EUA"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "TNT"})
    },
    {
        "_id" : 3,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Quartas Final - Franca x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    },
    {
        "_id" : 4,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Quartas Final - Uruguai x Portugal"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "TNT"})
    },
    {
        "_id" : 5,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Quartas Final - Gana x Argentina"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    },
    {
        "_id" : 6,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Semi-Final - Brasil x Portugal"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 7,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Semi-Final - Argentina x Japao"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 8,
        "partida" : db.partidas_tabela.findOne({"nome" : "Futebol - Bronze - Argentina x Portugal"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 9,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Final - Brasil x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    },
    {
        "_id" : 10,
        "partida" : db.partidas_tabela.findOne({"nome": "Futebol - Final - Brasil x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 11,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Semi-Final - Brasil x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 12,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Semi-Final - EUA x Rússia"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 13,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Semi-Final - Brasil x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "TNT"})
    },
    {
        "_id" : 14,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Bronze - Rússia x Japão"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 15,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Final - Brasil x EUA"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "SporTV"})
    },
    {
        "_id" : 16,
        "partida" : db.partidas_tabela.findOne({"nome": "Volei - Final - Brasil x EUA"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "TNT"})
    },
    {
        "_id" : 17,
        "partida" : db.partidas_tabela.findOne({"nome": "Atletismo"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    },
    {
        "_id" : 18,
        "partida" : db.partidas_tabela.findOne({"nome": "Natação"}),
        "emissora" : db.emissoras_tabela.findOne({"nome" : "ESPN"})
    }  
])
