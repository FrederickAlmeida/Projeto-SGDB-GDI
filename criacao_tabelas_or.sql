CREATE OR REPLACE TYPE tp_regiao AS OBJECT(
	cep VARCHAR2(9),
  	estado VARCHAR2(20),
  	cidade VARCHAR2(50),
  	bairro VARCHAR2(50),
  	rua VARCHAR2(50),
    MEMBER FUNCTION cidade_natal RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE tp_fone AS OBJECT(
    numero VARCHAR2(30)
);
/

CREATE OR REPLACE TYPE tp_fones AS VARRAY(5) OF tp_fone;
/

CREATE OR REPLACE TYPE tp_usuario AS OBJECT(
    nome VARCHAR2(30),
    email VARCHAR2(30),
    regiao REF tp_regiao,
    complemento VARCHAR2(50),
    numero NUMBER,
    fones tp_fones 
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_cartao_de_credito AS OBJECT(
	cvv VARCHAR2(100),
    numero NUMBER,
    validade VARCHAR2(100)
);
/

CREATE OR REPLACE TYPE tp_comprador UNDER tp_usuario(
    cartao tp_cartao_de_credito
);
/

CREATE OR REPLACE TYPE tp_vendedor UNDER tp_usuario(
    selo VARCHAR2(40)
);
/

CREATE OR REPLACE TYPE tp_motoboy AS OBJECT(
	cpf VARCHAR2(50),
    cnh VARCHAR2(50),
    cidade VARCHAR2(50),
    cpf_indicador REF tp_motoboy,
    selo VARCHAR2(10)
);
/

CREATE OR REPLACE TYPE tp_cupom AS OBJECT(
	cod NUMBER,
	desconto NUMBER
);
/

CREATE OR REPLACE TYPE tp_favorita AS OBJECT (
    email_vendedor REF tp_vendedor,
    email_comprador REF tp_comprador
);
/

CREATE OR REPLACE TYPE tp_anuncio AS OBJECT (
    email_vendedor REF tp_vendedor,
    cod NUMBER
);
/

CREATE OR REPLACE TYPE tp_item AS OBJECT(
    cod_anuncio REF tp_anuncio,
    email_vendedor REF tp_vendedor,
    tipo_produto VARCHAR2(100),
    nome_do_produto VARCHAR2(100),
    descricao VARCHAR2(100),
    preco NUMBER
);
/

CREATE OR REPLACE TYPE tp_avalia AS OBJECT(
    email_vendedor REF tp_vendedor,
    email_comprador REF tp_comprador,
    cod_anuncio REF tp_anuncio,
    cpf_motoboy REF tp_motoboy,
    nota_anuncio NUMBER,
    nota_motoboy NUMBER
);
/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
    email_vendedor REF tp_vendedor,
    email_comprador REF tp_comprador,
    cod_anuncio REF tp_anuncio,
    cpf_motoboy REF tp_motoboy,
    codigo_cupom REF tp_Cupom,
    data_compra DATE,
    data_entrega DATE
);
/


-- TABELAS


CREATE TABLE tb_regiao OF tp_regiao(
    cep PRIMARY KEY
);
/

CREATE TABLE tb_usuario OF tp_usuario(
    email PRIMARY KEY,
    regiao WITH ROWID REFERENCES tb_regiao
);
/


CREATE TABLE tb_comprador OF tp_comprador(
    email PRIMARY KEY REFERENCES tb_usuario
);
/

CREATE TABLE tb_vendedor OF tp_vendedor(
    email PRIMARY KEY REFERENCES tb_usuario
);
/

CREATE TABLE tb_motoboy OF tp_motoboy(
    cpf PRIMARY KEY,
    cpf_indicador WITH ROWID REFERENCES tb_motoboy
);
/

CREATE TABLE tb_cupom OF tp_cupom(
    cod PRIMARY KEY
);
/

CREATE TABLE tb_favorita OF tp_favorita(
    email_vendedor WITH ROWID REFERENCES tb_vendedor,
    email_comprador WITH ROWID REFERENCES tb_comprador,
    PRIMARY KEY(email_vendedor, email_comprador)
);
/


CREATE TABLE tb_anuncio OF tp_anuncio(
    email_vendedor WITH ROWID REFERENCES tb_vendedor,
    cod PRIMARY KEY
);
/

CREATE TABLE tb_item OF tp_item(
    cod_anuncio WITH ROWID REFERENCES tb_anuncio,
    email_vendedor WITH ROWID REFERENCES tb_vendedor,
    PRIMARY KEY(cod_anuncio, email_vendedor)
);
/

CREATE TABLE tb_avalia OF tp_avalia(
    email_vendedor WITH ROWID REFERENCES tb_vendedor,
    email_comprador WITH ROWID REFERENCES tb_comprador,
    cod_anuncio WITH ROWID REFERENCES tb_anuncio,
    cpf_motoboy WITH ROWID REFERENCES tb_motoboy,
    PRIMARY KEY(email_vendedor, email_comprador, cod_anuncio, cpf_motoboy)
);
/

CREATE TABLE tb_compra OF tp_compra(
    email_vendedor WITH ROWID REFERENCES tb_vendedor,
    email_comprador WITH ROWID REFERENCES tb_comprador,
    cod_anuncio WITH ROWID REFERENCES tb_anuncio,
    cpf_motoboy WITH ROWID REFERENCES tb_motoboy,
    codigo_cupom WITH ROWID REFERENCES tb_cupom,
    PRIMARY KEY(email_vendedor, email_comprador, cod_anuncio, cpf_motoboy)
);
/


CREATE 