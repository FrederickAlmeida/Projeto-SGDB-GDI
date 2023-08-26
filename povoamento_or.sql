-- Compradores
INSERT INTO tb_comprador VALUES(
    tp_comprador(
        'Caio Possidio',
        'cpv@gmail.com',
        tp_endereco(
            '51111111',
            'Recife',
            'apto 123',
            'Rua do Caio',
            11,
            'Bairro do Caio',
            'Recife'
            ),
        tp_fones(tp_fone('81999991234'),tp_fone('83978871243')),
        tp_cartao_de_credito('123', '123456789012345', '11/31')
    )
);
/

INSERT INTO tb_comprador VALUES(
    tp_comprador(
        'Rubens',
        'rubinho@gmail.com',
        tp_endereco(
            '52222222',
            'Recife',
            'apto 456',
            'Rua do Rubens',
            22,
            'Bairro do Rubens',
            'Recife'
            ),
        tp_fones(tp_fone('81999991234'),tp_fone('83978871243')),
        tp_cartao_de_credito('456', '123456789015445', '12/24')
    )
);
/

INSERT INTO tb_comprador VALUES(
    tp_comprador(
        'Vitor Maldesto',
        'vitinho30@gmail.com',
        tp_endereco(
            '53333333',
            'Recife',
            'apto 789',
            'Rua do Vitor',
            33,
            'Bairro do Vitor',
            'Recife'
            ),
            tp_fones(tp_fone('5555555555'), tp_fone('6666666666')),
            tp_cartao_de_credito('789', '535356789012345', '11/28')
        )
);
/
-- Povoamento de Motoboys
INSERT INTO tb_motoboy VALUES(
    tp_motoboy(
        '12345678902',
        '12345678902',
        'Recife',
        'Prata',
        NULL
    )
);
/
INSERT INTO tb_motoboy VALUES(
    tp_motoboy(
        '12345678904',
        '12345678904',
        'Recife',
        'Ouro',
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678902'))
    );
/
INSERT INTO tb_motoboy VALUES(
    tp_motoboy(
        '12345678903',
        '12345678903',
        'Jaboatao',
        'Bronze',
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678904')
    )
);
/
INSERT INTO tb_motoboy VALUES(
    tp_motoboy(
        '12345678901',
        '12345678901',
        'Olinda',
        'Bronze',
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678902')
        )
    );
/
-- Povoamento de Cupons

INSERT INTO tb_cupom VALUES(tp_cupom(12345,10));
/
INSERT INTO tb_cupom VALUES(tp_cupom(54321,20));
/
INSERT INTO tb_cupom VALUES(tp_cupom(67890,30));
/
INSERT INTO tb_cupom VALUES(tp_cupom(09876,40));
/

-- Vendedores e Anucicios

INSERT INTO tb_vendedor VALUES(
    tp_vendedor(
        'Batheus Marney',
        'tocomfome@yahoo.com',
        tp_endereco(
            '50630030',
            'Recife',
            NULL,
            'R. Nissin Bensoussan',
            98,
            'Cordeiro',
            'Recife'
            ),
        tp_fones(tp_fone('1111111111'), tp_fone('2222222222')),
        'Prata',
        tp_nt_anuncio(
            tp_anuncio(11111, 'Moveis', 'Cama de solteiro semi-nova', 'Cama muito boa', 300),
            tp_anuncio(22222, 'Eletronicos', 'TV 50 4K', 'TV Samsung que peguei quando a caminhao tombou', 200)
            )
    )
);
/

INSERT INTO tb_vendedor VALUES(
    tp_vendedor(
        'Ian Gabriel',
        'underseadeer218@gmail.com',
        tp_endereco(
            '55555555',
            'Recife',
            'apto 131415',
            'Rua do Ian',
            55,
            'Bairro do Ian',
            'Recife'
            ),
        tp_fones(tp_fone('4564564564'), tp_fone('6546546546')),
        'Prata',
        tp_nt_anuncio(
            tp_anuncio(55555, 'Livros', 'Coleção completa de Harry Potter', 'Livros em excelente estado', 150),
            tp_anuncio(66666, 'Esportes', 'Bicicleta de montanha', 'Bike em boas condições', 120)
        )
    )
);
/

INSERT INTO tb_vendedor VALUES(
    tp_vendedor(
        'Victoria Sabino',
        'leloco61@gmail.com',
        tp_endereco(
            '56666666',
            'Recife',
            'apto 161718',
            'Rua da Victoria',
            66,
            'Bairro da Victoria',
            'Recife'
            ),
        tp_fones(tp_fone('7897897897'), tp_fone('9879879879')), -- colocar os fones
        'Bronze',
        tp_nt_anuncio(
            tp_anuncio(33333, 'Roupas', 'Vestido de festa usado uma vez', 'Vestido em ótimo estado', 50), 
            tp_anuncio(44444, 'Acessrios', 'Bolsa de couro', 'Bolsa com pouco uso', 30))
        )
);
/

UPDATE TABLE(SELECT l.lista_anuncios FROM tb_vendedor l WHERE l.nome = 'Batheus Marney') e SET VALUE(e) = tp_anuncio(33343, 'Roupas', 'Vestido de festa usado uma vez', 'Vestido em ótimo estado', 50) WHERE e.codigo = 11111;
/

INSERT INTO tb_vendedor VALUES(
    tp_vendedor(
        'Palao Matematica',
        'palao@gmail.com',
        tp_endereco(
            '50080123',
            'Recife',
            'apto 303',
            'Rua da Matematica',
            66,
            'Boa Viagem',
            'Recife'
            ),
        tp_fones(tp_fone('2342342342'), tp_fone('4324324324')), -- colocar os fones
        'Bronze',
        tp_nt_anuncio(tp_anuncio(77777, 'Livros', 'Algebra Linear Vetorial', 'Otimo para quem quer estudar PG e AVLC', 50))
    )
);
/

-- compra
INSERT INTO tb_compra VALUES(
    tp_compra(
        11111,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Batheus Marney'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Caio Possidio'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678902'),
        (SELECT REF(x) FROM tb_cupom x WHERE x.cod = 12345),
        to_date('10/04/2023','dd/mm/yyyy'), 
        to_date('11/04/2023','dd/mm/yyyy')
    )
);
/
INSERT INTO tb_compra VALUES(
    tp_compra(
        66666, 
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Ian Gabriel'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Vitor Maldesto'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678903'),
        (SELECT REF(x) FROM tb_cupom x WHERE x.cod = 67890),
        to_date('12/04/2023','dd/mm/yyyy'), 
        to_date('12/04/2023','dd/mm/yyyy')
    )
);
/
INSERT INTO tb_compra VALUES(
    tp_compra(
        44444,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Victoria Sabino'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Caio Possidio'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678904'),
        (SELECT REF(x) FROM tb_cupom x WHERE x.cod = 54321),
        to_date('15/04/2023','dd/mm/yyyy'), 
        to_date('30/06/2023','dd/mm/yyyy')
    )
);
/

INSERT INTO tb_compra VALUES(
    tp_compra(
        33333,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Victoria Sabino'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678901'),
        (SELECT REF(x) FROM tb_cupom x WHERE x.cod = 09876),
        to_date('15/04/2023','dd/mm/yyyy'), 
        to_date('15/04/2023','dd/mm/yyyy')
    )
);
/
INSERT INTO tb_compra VALUES(
    tp_compra(
        55555,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Ian Gabriel'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678901'),
        (SELECT REF(x) FROM tb_cupom x WHERE x.cod = 67890),
        to_date('15/04/2023','dd/mm/yyyy'), 
        to_date('15/04/2023','dd/mm/yyyy')
    )
);
/

-- Favorita

INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Ian Gabriel'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'))
);
/
INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Palao Matematica'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'))
);
/
INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Batheus Marney'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Caio Possidio'))
);
/
INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Victoria Sabino'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Vitor Maldesto'))
);
/
INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Batheus Marney'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Vitor Maldesto'))
);
/
INSERT INTO tb_favorita VALUES(
    tp_favorita(
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Victoria Sabino'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Caio Possidio'))
);
/

-- Inserção de avaliar

INSERT INTO tb_avaliar VALUES(
    tp_avaliar(
        11111,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Batheus Marney'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678902'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Caio Possidio'),
        5,
        5
    )
);
/

INSERT INTO tb_avaliar VALUES(
    tp_avaliar(
        55555,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Ian Gabriel'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678901'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'),
        5,
        5
    )
);
/

INSERT INTO tb_avaliar VALUES(
    tp_avaliar(
        33333,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Victoria Sabino'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678901'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'),
        5,
        5
    )
);
/
INSERT INTO tb_avaliar VALUES(
    tp_avaliar(
        22222,
        (SELECT REF(x) FROM tb_vendedor x WHERE x.nome = 'Batheus Marney'),
        (SELECT REF(x) FROM tb_motoboy x WHERE x.cpf = '12345678903'),
        (SELECT REF(x) FROM tb_comprador x WHERE x.nome = 'Rubens'),
        5,
        5
    )
);
/
