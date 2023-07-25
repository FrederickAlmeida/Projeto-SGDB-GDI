ALTER SESSION
SET
    NLS_DATE_FORMAT = 'DD-MM-YYYY';

-- Inicio Cupom
INSERT INTO
    Cupom (cod, desconto)
VALUES
    (172835, 25);

INSERT INTO
    Cupom (cod, desconto)
VALUES
    (123456, 20);

INSERT INTO
    Cupom (cod, desconto)
VALUES
    (696867, 45);

INSERT INTO
    Cupom (cod, desconto)
VALUES
    (666666, 1);


INSERT INTO
    Cupom (cod, desconto)
VALUES
    (204060, 55);
    
INSERT INTO
    Cupom (cod, desconto)
VALUES
    (319432, 20);

INSERT INTO
    Cupom (cod, desconto)
VALUES
    (812372, 10);

INSERT INTO
    Cupom (cod, desconto)
VALUES
    (543242, 13);

-- Fim Cupom
-- Inicio cartao de credito
INSERT INTO
    Cartao_de_credito (cvv, numero, validade)
VALUES
    ('257', '9292 5200 0118 7816', '03/30');

INSERT INTO
    Cartao_de_credito (cvv, numero, validade)
VALUES
    ('123', '1111 2222 3333 4444', '01/25');

INSERT INTO
    Cartao_de_credito (cvv, numero, validade)
VALUES
    ('456', '5555 6666 7777 8888', '02/26');

INSERT INTO
    Cartao_de_credito (cvv, numero, validade)
VALUES
    ('789', '9999 0000 1111 2222', '03/27');

INSERT INTO
    Cartao_de_credito (cvv, numero, validade)
VALUES
    ('012', '3333 4444 5555 6666', '04/28');

-- Fim cartao de credito
-- Inicio Regiao
INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '51111-111',
        'Pernambuco',
        'Recife',
        'Cidade Universitária',
        'Rua do CAC'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '51111-110',
        'Pernambuco',
        'Recife',
        'Cidade Universitária',
        'Rua do CIN'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '51111-100',
        'Pernambuco',
        'Recife',
        'Cidade Universitária',
        'Rua do CTG'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '51111-000',
        'Pernambuco',
        'Recife',
        'Cidade Universitária',
        'Rua do CFCH'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '608122-90',
        'Ceará',
        'Fortaleza',
        'Aldeota',
        'Rua do corrente'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '82831-232',
        'Paraná',
        'Curitiba',
        'Centro',
        'Rua das Flores'
    );

INSERT INTO
    Regiao (cep, estado, cidade, bairro, rua)
VALUES
    (
        '52020-095',
        'Liquid',
        'Ponta Grossa',
        'Morada do Sol',
        'Rua das Tulipas'
    );

-- Fim Regiao
-- Inicio Usuario
INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Comprador
VALUES
    (
        'jvnq@cin.ufpe.br',
        'João Vitor',
        '51111-111',
        '1111',
        'Jardim do CAC'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Comprador
VALUES
    (
        'gqmv@cin.ufpe.br',
        'Gabriel',
        '51111-110',
        '1110',
        'Jardim do CIN'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Comprador
VALUES
    (
        'pasg@cin.ufpe.br',
        'Pedro',
        '51111-100',
        '1100',
        'Jardim do CTG'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Comprador
VALUES
    (
        'paguso_da_maldade@terra.br',
        'Paguso',
        '51111-000',
        '1000',
        'Jardim do CFCH'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Vendedor
VALUES
    (
        'caiopossidio@gmail.com',
        'Caio Possídio',
        '51111-000',
        '1234',
        'Beira mar'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Vendedor
VALUES
    (
        'asp@gmail.com',
        'Amanda Sanches',
        '52020-095',
        '102',
        'Boa Viagem'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Vendedor
VALUES
    (
        'namoradadefred@gmail.com',
        'Bia Teixeira Aguiar',
        '82831-232',
        '1234',
        'Beira mar'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Vendedor
VALUES
    (
        'precisodecomida@gmail.com',
        'Batheus Marney',
        '51111-000',
        '1234',
        'Beira mar'
    );

INSERT INTO
    Usuario (email, nome, cep, numero, complemento) -- Vendedor
VALUES
    (
        'robertmiller@gmail.com',
        'Robert Miller',
        '51111-100',
        '555',
        'Apto 202'
    );

-- Fim Usuario
-- Inicio Telefone
INSERT INTO
    Telefone (email, numero)
VALUES
    ('jvnq@cin.ufpe.br', '81999999999');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('gqmv@cin.ufpe.br', '81999999998');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('pasg@cin.ufpe.br', '81999999997');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('paguso_da_maldade@terra.br', '81999999996');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('caiopossidio@gmail.com', '81999999995');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('asp@gmail.com', '81999999994');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('namoradadefred@gmail.com', '81999999993');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('precisodecomida@gmail.com', '81999999992');

INSERT INTO
    Telefone (email, numero)
VALUES
    ('robertmiller@gmail.com', '81999999991');

-- Fim Telefone
-- Inicio Comprador
INSERT INTO
    Comprador (email, num_cartao)
VALUES
    ('jvnq@cin.ufpe.br', '9292 5200 0118 7816');

INSERT INTO
    Comprador (email, num_cartao)
VALUES
    ('gqmv@cin.ufpe.br', '1111 2222 3333 4444');

INSERT INTO
    Comprador (email, num_cartao)
VALUES
    ('pasg@cin.ufpe.br', '5555 6666 7777 8888');

INSERT INTO
    Comprador (email, num_cartao)
VALUES
    (
        'paguso_da_maldade@terra.br',
        '9999 0000 1111 2222'
    );

INSERT INTO
    Comprador (email, num_cartao)
VALUES
    ('asp@gmail.com', '3333 4444 5555 6666');

-- Fim Comprador
-- Inicio Vendedor
INSERT INTO
    Vendedor (email)
VALUES
    ('caiopossidio@gmail.com');

INSERT INTO
    Vendedor (email)
VALUES
    ('asp@gmail.com');

INSERT INTO
    Vendedor (email)
VALUES
    ('namoradadefred@gmail.com');

INSERT INTO
    Vendedor (email)
VALUES
    ('precisodecomida@gmail.com');

INSERT INTO
    Vendedor (email)
VALUES
    ('robertmiller@gmail.com');

-- Fim Vendedor
-- Inicio Motoboy
INSERT INTO
    Motoboy (cpf, cnh, cidade, cpf_indicador)
VALUES
    (
        '12345678901',
        '12345678901',
        'Recife',
        '12345678901'
    );

INSERT INTO
    Motoboy (cpf, cnh, cidade, cpf_indicador)
VALUES
    (
        '12345678902',
        '12345678902',
        'Recife',
        '12345678901'
    );

INSERT INTO
    Motoboy (cpf, cnh, cidade, cpf_indicador)
VALUES
    (
        '12345678903',
        '12345678903',
        'Recife',
        '12345678901'
    );

INSERT INTO
    Motoboy (cpf, cnh, cidade, cpf_indicador)
VALUES
    (
        '12345678904',
        '12345678904',
        'Sao Paulo',
        '12345678903'
    );

-- Fim Motoboy
-- Inicio Anuncio
CREATE SEQUENCE cod_anuncio
INCREMENT BY 1 START WITH 1;

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('caiopossidio@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('caiopossidio@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('asp@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('namoradadefred@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('precisodecomida@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('precisodecomida@gmail.com', cod_anuncio.NEXTVAL);

INSERT INTO
    Anuncio (email_vendedor, cod)
VALUES
    ('robertmiller@gmail.com', cod_anuncio.NEXTVAL);

-- Fim Anuncio
-- Inicio Item
INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        1,
        'caiopossidio@gmail.com',
        'Comida',
        'Pizza',
        'Pizza de calabresa bem gostosa',
        20.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        2,
        'caiopossidio@gmail.com',
        'Comida',
        'Pizza de frango',
        NULL,
        15.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        3,
        'asp@gmail.com',
        'Bebida',
        'Coca-cola Café',
        'Coca-cola Café. Modelo destinado a armazenamento nas geladeiras do CIn.',
        5.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        4,
        'namoradadefred@gmail.com',
        'Comida',
        'Bolo de chocolate',
        'Bolo de chocolate com cobertura de chocolate',
        10.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        5,
        'precisodecomida@gmail.com',
        'Móveis e decoração',
        'Cama Usada',
        'Cama usada, mas em bom estado',
        100.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        6,
        'precisodecomida@gmail.com',
        'Móveis e decoração',
        'Sofá Usado',
        'Sofá usado, mas em bom estado',
        200.00
    );

INSERT INTO
    Item (
        cod_anuncio,
        email_vendedor_anuncio,
        tipo_de_produto,
        nome_do_produto,
        descricao,
        preco
    )
VALUES
    (
        7,
        'robertmiller@gmail.com',
        'Móveis e decoração',
        'Mesa de escritório',
        NULL,
        300.00
    );

-- Fim Item
--Inicio Favorita
INSERT INTO
    Favorita (email_vendedor, email_comprador)
VALUES
    (
        'caiopossidio@gmail.com',
        'paguso_da_maldade@terra.br'
    );

INSERT INTO
    Favorita (email_vendedor, email_comprador)
VALUES
    ('caiopossidio@gmail.com', 'gqmv@cin.ufpe.br');

INSERT INTO
    Favorita (email_vendedor, email_comprador)
VALUES
    ('precisodecomida@gmail.com', 'asp@gmail.com');

--Fim Favorita
--Inicio Compra
INSERT INTO
    Compra (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        cod_cupom,
        data_compra,
        data_entrega
    )
VALUES
    (
        'precisodecomida@gmail.com',
        'gqmv@cin.ufpe.br',
        5,
        '12345678901',
        172835,
        '01-01-2021',
        '02-01-2021'
    );

INSERT INTO
    Compra (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        cod_cupom,
        data_compra,
        data_entrega
    )
VALUES
    (
        'precisodecomida@gmail.com',
        'jvnq@cin.ufpe.br',
        6,
        '12345678902',
        123456,
        '01-01-2022',
        '02-01-2022'
    );

INSERT INTO
    Compra (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        cod_cupom,
        data_compra,
        data_entrega
    )
VALUES
    (
        'caiopossidio@gmail.com',
        'gqmv@cin.ufpe.br',
        1,
        '12345678903',
        696867,
        '01-01-2023',
        '02-01-2023'
    );

INSERT INTO
    Compra (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        cod_cupom,
        data_compra,
        data_entrega
    )
VALUES
    (
        'caiopossidio@gmail.com',
        'pasg@cin.ufpe.br',
        2,
        '12345678904',
        204060,
        '01-01-2024',
        '02-01-2024'
    );

--Fim Compra
--Inicio Avalia
INSERT INTO
    Avalia (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        nota_anuncio,
        nota_motoboy
    )
VALUES
    (
        'precisodecomida@gmail.com',
        'gqmv@cin.ufpe.br',
        5,
        '12345678901',
        8,
        9
    );

INSERT INTO
    Avalia (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        nota_anuncio,
        nota_motoboy
    )
VALUES
    (
        'precisodecomida@gmail.com',
        'jvnq@cin.ufpe.br',
        6,
        '12345678902',
        7,
        5
    );

INSERT INTO
    Avalia (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        nota_anuncio,
        nota_motoboy
    )
VALUES
    (
        'caiopossidio@gmail.com',
        'gqmv@cin.ufpe.br',
        1,
        '12345678903',
        10,
        10
    );

INSERT INTO
    Avalia (
        email_vendedor,
        email_comprador,
        cod_anuncio,
        cpf_motoboy,
        nota_anuncio,
        nota_motoboy
    )
VALUES
    (
        'caiopossidio@gmail.com',
        'pasg@cin.ufpe.br',
        2,
        '12345678904',
        9,
        1
    );

--Fim Avalia