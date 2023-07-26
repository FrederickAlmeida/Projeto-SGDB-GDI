CREATE TABLE
    Regiao (
        cep VARCHAR2(9),
        estado VARCHAR2(20) NOT NULL,
        cidade VARCHAR2(50) NOT NULL,
        bairro VARCHAR2(50) NOT NULL,
        rua VARCHAR2(50) NOT NULL,
        CONSTRAINT reigao_pk PRIMARY KEY (cep)
    );

/
CREATE TABLE
    Usuario (
        email VARCHAR2(50),
        nome VARCHAR2(30) NOT NULL,
        cep VARCHAR2(9),
        numero VARCHAR2(50),
        complemento VARCHAR2(50),
        CONSTRAINT usuario_pk PRIMARY KEY (email),
        CONSTRAINT usuario_regiao_fk FOREIGN KEY (cep) REFERENCES Regiao (cep)
    );

/
CREATE TABLE
    Telefone (
        email VARCHAR2(50),
        numero VARCHAR2(14),
        CONSTRAINT telefone_pk PRIMARY KEY (email, numero),
        CONSTRAINT telefone_usuario_fk FOREIGN KEY (email) REFERENCES Usuario (email)
    );

/
CREATE TABLE
    Cupom (
        cod NUMBER,
        desconto NUMBER NOT NULL,
        CONSTRAINT cupom_pk PRIMARY KEY (cod),
        CONSTRAINT cupom_desconto_ck CHECK (desconto BETWEEN 1 AND 100)
    );

/


/
CREATE TABLE
    Cartao_de_credito (
        cvv VARCHAR2(3) NOT NULL,
        numero VARCHAR2(20),
        validade VARCHAR2(5) NOT NULL,
        CONSTRAINT cartao_de_credito_pk PRIMARY KEY (numero),
        CONSTRAINT cartao_de_credito_validade_ck CHECK (validade LIKE '__/__')
    );

/
CREATE TABLE
    Comprador (
        email VARCHAR2(50),
        num_cartao VARCHAR2(20),
        CONSTRAINT comprador_pk PRIMARY KEY (email),
        CONSTRAINT comprador_usuario_fk FOREIGN KEY (email) REFERENCES Usuario (email),
        CONSTRAINT comprador_cartao_de_credito_fk FOREIGN KEY (num_cartao) REFERENCES Cartao_de_credito (numero)
    );

/
CREATE TABLE
    Motoboy (
        cpf VARCHAR2(50),
        cnh VARCHAR2(50) NOT NULL,
        cidade VARCHAR2(50),
        cpf_indicador VARCHAR2(50),
        selo VARCHAR2(10),
        CONSTRAINT motoboy_pk PRIMARY KEY (cpf),
        CONSTRAINT motoboy_motoboy_fk FOREIGN KEY (cpf_indicador) REFERENCES Motoboy (cpf)
    );

/

CREATE TABLE
    Vendedor (
        email VARCHAR2(50),
        selo VARCHAR2(10),
        CONSTRAINT vendedor_pk PRIMARY KEY (email),
        CONSTRAINT vendedor_usuario_fk FOREIGN KEY (email) REFERENCES Usuario (email)
    );

/
CREATE TABLE
    Anuncio (
        email_vendedor VARCHAR2(50),
        cod NUMBER,
        CONSTRAINT anuncio_pk PRIMARY KEY (email_vendedor, cod),
        CONSTRAINT anuncio_vendedor_fk FOREIGN KEY (email_vendedor) REFERENCES Vendedor (email)
    );

/
CREATE TABLE
    Item (
        cod_anuncio NUMBER,
        email_vendedor_anuncio VARCHAR2(50),
        tipo_de_produto VARCHAR2(50),
        nome_do_produto VARCHAR2(50),
        descricao VARCHAR2(100),
        preco NUMBER,
        CONSTRAINT item_pk PRIMARY KEY (cod_anuncio, email_vendedor_anuncio),
        CONSTRAINT item_anuncio_fk FOREIGN KEY (cod_anuncio, email_vendedor_anuncio) REFERENCES Anuncio (cod, email_vendedor)
    );

/

/

CREATE TABLE
    Favorita (
        email_vendedor VARCHAR2(50),
        email_comprador VARCHAR2(50),
        CONSTRAINT favorita_pk PRIMARY KEY (email_vendedor, email_comprador),
        CONSTRAINT favorita_vendedor_fk FOREIGN KEY (email_vendedor) REFERENCES Vendedor (email),
        CONSTRAINT favorita_comprador_fk FOREIGN KEY (email_comprador) REFERENCES Comprador (email)
    );

CREATE TABLE
    Compra (
        email_vendedor VARCHAR2(50),
        email_comprador VARCHAR2(50),
        cod_anuncio NUMBER,
        cpf_motoboy VARCHAR2(50),
        cod_cupom NUMBER,
        data_compra DATE,
        data_entrega DATE,
        CONSTRAINT compra_pk PRIMARY KEY (email_vendedor, email_comprador, cod_anuncio),
        CONSTRAINT compra_comprador_fk FOREIGN KEY (email_comprador) REFERENCES Comprador (email),
        CONSTRAINT compra_anuncio_fk FOREIGN KEY (email_vendedor, cod_anuncio) REFERENCES Anuncio (email_vendedor, cod),
        CONSTRAINT compra_motoboy_fk FOREIGN KEY (cpf_motoboy) REFERENCES Motoboy (cpf),
        CONSTRAINT compra_cupom_fk FOREIGN KEY (cod_cupom) REFERENCES Cupom (cod)
    );
    
/

/
CREATE TABLE
    Avalia (
        email_vendedor VARCHAR2(50),
        email_comprador VARCHAR2(50),
        cod_anuncio NUMBER,
        cpf_motoboy VARCHAR2(50),
        nota_anuncio NUMBER,
        nota_motoboy NUMBER,
        CONSTRAINT avalia_pk PRIMARY KEY (email_vendedor, cod_anuncio),
        CONSTRAINT avalia_anuncio_fk FOREIGN KEY (email_vendedor, cod_anuncio) REFERENCES Anuncio (email_vendedor, cod),
        CONSTRAINT avalia_comprador_fk FOREIGN KEY (email_comprador) REFERENCES Comprador (email),
        CONSTRAINT avalia_motoboy_fk FOREIGN KEY (cpf_motoboy) REFERENCES Motoboy (cpf),
        CONSTRAINT avalia_nota_anuncio_ck CHECK (nota_anuncio BETWEEN 0 AND 10),
        CONSTRAINT avalia_nota_motoboy_ck CHECK (nota_motoboy BETWEEN 0 AND 10)
    );

/