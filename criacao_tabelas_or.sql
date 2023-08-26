CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    cep VARCHAR2(8),
    estado VARCHAR2(50),
    complemento VARCHAR2(50),
    rua VARCHAR2(50),
    numero NUMBER(5),
    bairro VARCHAR2(50),
    cidade VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_fone AS OBJECT(
    numero VARCHAR2(11)
);
/

CREATE OR REPLACE TYPE tp_fones AS VARRAY(5) OF tp_fone;
/

CREATE OR REPLACE TYPE tp_usuario AS OBJECT(
    nome VARCHAR2(50),
    email VARCHAR2(50),
    endereco tp_endereco,
    fones tp_fones,

    CONSTRUCTOR FUNCTION tp_usuario(nome VARCHAR2, email VARCHAR2, endereco tp_endereco, fones tp_fones) RETURN SELF AS RESULT,

    MEMBER PROCEDURE exibir_detalhes (SELF tp_usuario),
    FINAL MEMBER PROCEDURE exibir_endereco_completo (SELF tp_usuario)
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE BODY tp_usuario AS
    CONSTRUCTOR FUNCTION tp_usuario(nome VARCHAR2, email VARCHAR2, endereco tp_endereco, fones tp_fones) RETURN SELF AS RESULT IS
    BEGIN
        SELF.nome := nome;
        SELF.email := email;
        SELF.endereco := endereco;
        SELF.fones := fones;
        RETURN;
    END;

    MEMBER PROCEDURE exibir_detalhes (SELF tp_usuario) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nome: ' || SELF.nome);
        DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.email);
        DBMS_OUTPUT.PUT_LINE('Rua: ' || SELF.endereco.rua);
        DBMS_OUTPUT.PUT_LINE('Bairro: ' || SELF.endereco.bairro);
        DBMS_OUTPUT.PUT_LINE('Cidade: ' || SELF.endereco.cidade);
        FOR i IN 1..SELF.fones.COUNT LOOP
            DBMS_OUTPUT.PUT_LINE('Fone ' || i || ': ' || SELF.fones(i).numero);
        END LOOP;
    END;

    FINAL MEMBER PROCEDURE exibir_endereco_completo (SELF tp_usuario) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Rua: ' || SELF.endereco.rua);
        DBMS_OUTPUT.PUT_LINE('Bairro: ' || SELF.endereco.bairro);
        DBMS_OUTPUT.PUT_LINE('Cidade: ' || SELF.endereco.cidade);
        DBMS_OUTPUT.PUT_LINE('Estado: ' || SELF.endereco.estado);
        DBMS_OUTPUT.PUT_LINE('CEP: ' || SELF.endereco.cep);
        DBMS_OUTPUT.PUT_LINE('Complemento: ' || SELF.endereco.complemento);
        DBMS_OUTPUT.PUT_LINE('Numero: ' || SELF.endereco.numero);
    END;
END;
/

CREATE OR REPLACE TYPE tp_anuncio AS OBJECT(
    codigo NUMBER(5),
    tipo VARCHAR2(50),
    nome VARCHAR2(50),
    descricao VARCHAR2(100),
    preco NUMBER(5),

    ORDER MEMBER FUNCTION e_maior (X tp_anuncio) RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY tp_anuncio AS
    ORDER MEMBER FUNCTION e_maior (X tp_anuncio) RETURN NUMBER IS
    BEGIN
        IF SELF.preco > X.preco THEN
            RETURN 1;
        ELSIF SELF.preco < X.preco THEN
            RETURN -1;
        ELSE
            RETURN 0;
        END IF;
    END;
END;
/

CREATE OR REPLACE TYPE tp_nt_anuncio AS TABLE OF tp_anuncio;
/

CREATE OR REPLACE TYPE tp_vendedor UNDER tp_usuario(
    selo VARCHAR2(20),
    lista_anuncios tp_nt_anuncio,

    MEMBER FUNCTION get_rank RETURN NUMBER,
    OVERRIDING MEMBER PROCEDURE exibir_detalhes (SELF tp_vendedor)
);
/

CREATE OR REPLACE TYPE BODY tp_vendedor AS
    MEMBER FUNCTION get_rank RETURN NUMBER IS
    BEGIN
        IF SELF.selo = 'ouro' THEN
            RETURN 1;
        ELSIF SELF.selo = 'prata' THEN
            RETURN 2;
        ELSIF SELF.selo = 'bronze' THEN
            RETURN 3;
        ELSE
            RETURN 4;
        END IF;
    END;

    OVERRIDING MEMBER PROCEDURE exibir_detalhes (SELF tp_vendedor) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nome: ' || SELF.nome);
        DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.email);
        DBMS_OUTPUT.PUT_LINE('Rua: ' || SELF.endereco.rua);
        DBMS_OUTPUT.PUT_LINE('Bairro: ' || SELF.endereco.bairro);
        DBMS_OUTPUT.PUT_LINE('Cidade: ' || SELF.endereco.cidade);
        FOR i IN 1..SELF.fones.COUNT LOOP
            DBMS_OUTPUT.PUT_LINE('Fone ' || i || ': ' || SELF.fones(i).numero);
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Selo: ' || SELF.selo);
    END;
END;
/

CREATE OR REPLACE TYPE tp_cartao_de_credito AS OBJECT(
    cvv VARCHAR2(3),
    numero VARCHAR2(16),
    validade VARCHAR2(5)
);
/

CREATE OR REPLACE TYPE tp_comprador UNDER tp_usuario(
    cartao tp_cartao_de_credito,
    OVERRIDING MEMBER PROCEDURE exibir_detalhes (SELF tp_comprador)
);
/

CREATE OR REPLACE TYPE BODY tp_comprador AS
    OVERRIDING MEMBER PROCEDURE exibir_detalhes (SELF tp_comprador) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nome: ' || SELF.nome);
        DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.email);
    END;
END;
/

CREATE OR REPLACE TYPE tp_favorita AS OBJECT(
    vendedor REF tp_vendedor,
    comprador REF tp_comprador
);
/

CREATE OR REPLACE TYPE tp_motoboy AS OBJECT(
    cpf VARCHAR2(11),
    cnh VARCHAR2(11),
    cidade VARCHAR2(50),
    selo VARCHAR2(20),

    MAP MEMBER FUNCTION qualidade RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY tp_motoboy AS
    MAP MEMBER FUNCTION qualidade RETURN NUMBER IS
    BEGIN
        IF SELF.selo = 'ouro' THEN
            RETURN 1;
        ELSIF SELF.selo = 'prata' THEN
            RETURN 2;
        ELSIF SELF.selo = 'bronze' THEN
            RETURN 3;
        ELSE
            RETURN 4;
        END IF;
    END;
END;
/

ALTER TYPE tp_motoboy
ADD ATTRIBUTE (indicador REF tp_motoboy) CASCADE;
/

CREATE OR REPLACE TYPE tp_avaliar AS OBJECT(
    anuncio_cod NUMBER(5),
    vendedor REF tp_vendedor,
    motoboy REF tp_motoboy,
    comprador REF tp_comprador,
    nota_anuncio NUMBER(1),
    nota_motoboy NUMBER(1)
);
/

CREATE OR REPLACE TYPE tp_cupom AS OBJECT(
    cod NUMBER(5),
    desconto NUMBER(3)
);
/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
    -- não conseguimos obter o anuncio como referencia, para passar no povoamento das tabelas compra e avalia, então botamos como number, só para não usar null :(
    anuncio_cod  NUMBER(5),
    vendedor REF tp_vendedor,
    comprador REF tp_comprador,
    motoboy REF tp_motoboy,
    cupom REF tp_cupom,
    dt_compra DATE,
    dt_entrega DATE
);
/

-- TABELAS
CREATE TABLE tb_vendedor OF tp_vendedor(
    email PRIMARY KEY
)NESTED TABLE lista_anuncios STORE AS nt_anuncio;
/

CREATE TABLE tb_comprador OF tp_comprador(
    email PRIMARY KEY
);
/

CREATE TABLE tb_motoboy OF tp_motoboy(
    cpf PRIMARY KEY,
    indicador SCOPE IS tb_motoboy
);
/

CREATE TABLE tb_cupom OF tp_cupom(
    cod PRIMARY KEY
);
/

CREATE TABLE tb_compra OF tp_compra(
    comprador WITH ROWID REFERENCES tb_comprador,
    motoboy WITH ROWID REFERENCES tb_motoboy,
    cupom WITH ROWID REFERENCES tb_cupom
);
/

CREATE TABLE tb_favorita OF tp_favorita(
    vendedor WITH ROWID REFERENCES tb_vendedor,
    comprador WITH ROWID REFERENCES tb_comprador
);
/
CREATE TABLE tb_avaliar OF tp_avaliar(
    vendedor WITH ROWID REFERENCES tb_vendedor,
    motoboy WITH ROWID REFERENCES tb_motoboy,
    comprador WITH ROWID REFERENCES tb_comprador  
);
/
