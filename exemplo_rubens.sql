CREATE OR REPLACE TYPE tp_endereco as OBJECT(
    cep VARCHAR2(9),
    estado VARCHAR2(20),
    cidade VARCHAR2(50),
    bairro VARCHAR2(50),
    rua VARCHAR2(50)
);
/
CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
    numero VARCHAR2(14)
);
/
CREATE TABLE tb_telefones OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_usuario AS OBJECT(
    email VARCHAR2(50),
    nome VARCHAR2(30),
    endereco tp_endereco,
    numero VARCHAR2(50),
    complemento VARCHAR2(50)
) NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE vr_telefones AS VARRAY(5) OF tp_telefone;
/
ALTER TYPE tp_usuario
    ADD ATTRIBUTE telefones vr_telefones CASCADE;
/
CREATE OR REPLACE TYPE tp_vendedor UNDER tp_usuario (
    selo VARCHAR2(10),
    MEMBER FUNCTION selo_value RETURN INTEGER
);
/
CREATE OR REPLACE TYPE BODY tp_vendedor AS
    MEMBER FUNCTION selo_value RETURN INTEGER IS
    BEGIN 
        RETURN CASE
            WHEN SELF.selo = 'BRONZE' THEN 3
            WHEN SELF.selo = 'OURO'   THEN 2
            WHEN SELF.selo = 'PRATA'  THEN 1
            ELSE 0
        END;
    END;
END;
/
CREATE OR REPLACE TYPE tp_cartao_de_credito AS OBJECT(
    cvv VARCHAR2(3),
    numero VARCHAR2(20),
    validade VARCHAR2(5)
);
/
CREATE OR REPLACE TYPE tp_comprador UNDER tp_usuario(
    cartao tp_cartao_de_credito
);
/
CREATE OR REPLACE TYPE tp_favoritos AS OBJECT(
    comprador REF tp_comprador,
    vendedor REF tp_vendedor
);
/
CREATE OR REPLACE TYPE tp_anuncio AS OBJECT(
    vendedor REF tp_vendedor,
    codigo NUMBER,
    tipo_de_produto VARCHAR2(50),
    nome_do_produto VARCHAR2(50),
    descricao VARCHAR2(100),
    preco NUMBER,

    MEMBER PROCEDURE exibir_anuncio
);
/
CREATE OR REPLACE TYPE tp_cupom AS OBJECT (
    codigo NUMBER,
    desconto NUMBER,
    ORDER MEMBER FUNCTION order_by_desconto(p_self IN tp_cupom) RETURN NUMBER
);
/
CREATE OR REPLACE TYPE BODY tp_cupom AS
    ORDER MEMBER FUNCTION order_by_desconto(p_self IN tp_cupom) RETURN NUMBER IS
    BEGIN
        RETURN p_self.desconto;
    END;
END;
/
CREATE OR REPLACE TYPE tp_compra AS OBJECT (
    data_entrega DATE,
    data_compra DATE,
    anuncio REF tp_anuncio,
    cupom REF tp_cupom,
    valor_real NUMBER,
    
    CONSTRUCTOR FUNCTION tp_compra (
        data_entrega DATE,
        data_compra DATE,
        anuncio REF tp_anuncio,
        cupom REF tp_cupom
    ) RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY tp_compra AS
    CONSTRUCTOR FUNCTION tp_compra (
        data_entrega DATE,
        data_compra DATE,
        anuncio REF tp_anuncio,
        cupom REF tp_cupom
    ) RETURN SELF AS RESULT IS
    BEGIN
        SELF.data_entrega := data_entrega;
        SELF.data_compra := data_compra;
        SELF.anuncio := anuncio;
        SELF.cupom := cupom;
        
        IF cupom IS NOT NULL THEN
            SELF.valor_real := DEREF(anuncio).preco * (1 - (DEREF(cupom).desconto / 10));
        ELSE
            SELF.valor_real := DEREF(anuncio).preco;
        END IF;
        
        RETURN;
    END;
END;
/
CREATE TYPE nt_tp_compra AS TABLE OF REF tp_compra;
/
CREATE OR REPLACE TYPE tp_motoboy AS OBJECT (
    cpf VARCHAR2(50),
    cnh VARCHAR2(50),
    cidade VARCHAR2(50),
    indicador REF tp_motoboy,
    selo VARCHAR2(10),
    nt_compras_entregues nt_tp_compra,
    
    MAP MEMBER FUNCTION selo_value RETURN INTEGER
) NOT FINAL;
/
CREATE OR REPLACE TYPE BODY tp_motoboy AS
    MAP MEMBER FUNCTION selo_value RETURN INTEGER IS
    BEGIN
        CASE
            WHEN selo = 'OURO' THEN RETURN 1;
            WHEN selo = 'PRATA' THEN RETURN 2;
            WHEN selo = 'BRONZE' THEN RETURN 3;
            ELSE RETURN 4;
        END CASE;
    END;
END;
/
CREATE OR REPLACE TYPE tp_avalia AS OBJECT(
    comprador REF tp_comprador,
    motoboy REF tp_comprador,
    anuncio REF tp_anuncio,
    nota_anuncio NUMBER,
    nota_motoboy NUMBER
);
-- TUDO OK ATE AQUI