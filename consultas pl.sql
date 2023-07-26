-- usando record e table fazer uma lista de itens vendidos e seus preços, num bloco anonimo, usando um for in loop para inserir os elementos e um while loop para printá-los
DECLARE
    TYPE item_value IS RECORD(
        item_nome VARCHAR2(30),
        valor_venda NUMBER
    );
    
    TYPE item_table IS TABLE OF item_value INDEX BY BINARY_INTEGER;
    
    vendidos item_table;

    contador NUMBER := 1;
    contador2 NUMBER := 1;
BEGIN
    FOR compra IN 
        (SELECT i.nome_do_produto as nome, i.preco as preco FROM item i
        INNER JOIN compra c ON c.cod_anuncio = i.cod_anuncio)
    LOOP
        vendidos(contador).item_nome := compra.nome;
        vendidos(contador).valor_venda := compra.preco;
        
        contador := contador + 1;
    END LOOP;
    

    WHILE contador2 <= contador LOOP
        dbms_output.put_line('item: ' || vendidos(contador2).item_nome);
        dbms_output.put_line('valor: ' || vendidos(contador2).valor_venda);
        
        contador2 := contador2 + 1;
    END LOOP;
END;


-- lista se o cupom vale ou não a pena ser utilizado baseado no desconto

CREATE OR REPLACE FUNCTION desconto (codigo_cupom IN Cupom.cod%type) RETURN VARCHAR2 IS
    desconto_cupom Cupom.desconto%type;
BEGIN
    SELECT C.desconto INTO desconto_cupom FROM Cupom C WHERE C.cod = codigo_cupom;
    IF desconto_cupom > 50 THEN
        RETURN 'Desconto magnifico';
    ELSIF desconto_cupom > 30 THEN
        RETURN 'Desconto mid';
    ELSE
        RETURN 'Desconto ruim';
    END IF;
	EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Cupom não existente ):';
END;
/

DECLARE
    aux VARCHAR2(255);
    codigo_c NUMBER := 204060;
BEGIN
    aux := desconto(codigo_c);
    dbms_output.put_line(aux);
END;
/ 
 -- analisa se o produto é caro ou barato baseado no seu código e no email do vendedor

CREATE OR REPLACE FUNCTION preco (
    codigo_anuncio IN Item.cod_anuncio%type,
    email_vendedor IN Item.email_vendedor_anuncio%type
) RETURN VARCHAR2
IS
    preco_item Item.preco%type;
    analise_preco VARCHAR2(50);
BEGIN
    SELECT i.preco INTO preco_item
    FROM Item i
    WHERE i.cod_anuncio = codigo_anuncio AND i.email_vendedor_anuncio = email_vendedor;

    analise_preco :=
        CASE
            WHEN preco_item > 100 THEN 'O produto é considerado caro'
            WHEN preco_item > 50 THEN 'O produto tem um preço médio'
            ELSE 'O produto é barato'
        END;

    RETURN analise_preco;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'Item não existente ):';
END;
/

DECLARE
    aux VARCHAR2(255);
BEGIN
    aux := preco(2, 'caiopossidio@gmail.com');
    dbms_output.put_line(aux);
END;
/


-- retorna dados do primeiro anuncio criado na plataforma
DECLARE
    primeiro_anuncio anuncio%ROWTYPE;
    item_primeiro_anuncio item%ROWTYPE;

BEGIN
    SELECT * INTO primeiro_anuncio FROM anuncio WHERE cod=1;
    SELECT * INTO item_primeiro_anuncio FROM item WHERE cod_anuncio=1;

    dbms_output.put_line('Email do vendedor do anuncio: ' || primeiro_anuncio.email_vendedor);
    dbms_output.put_line('Nome do item: ' || item_primeiro_anuncio.nome_do_produto);
    dbms_output.put_line('Preço do item: ' || item_primeiro_anuncio.preco);
    dbms_output.put_line('Descrição do item: ' || item_primeiro_anuncio.descricao);
END;
/

-- procedimento para inserir um cupom
CREATE OR REPLACE PROCEDURE InsereCupom(
    p_cod IN OUT Cupom.cod%TYPE,
    p_desconto IN OUT Cupom.desconto%TYPE
)
IS
BEGIN   
    INSERT INTO Cupom(cod, desconto) VALUES (p_cod, p_desconto);
END;
/

DECLARE
	codinho NUMBER := 12;
	descontinho NUMBER := 12;
BEGIN
	InsereCupom(codinho,descontinho);
END;
/
-- package para inserir um cupom e ver se seu desconto é bom

CREATE OR REPLACE PACKAGE insercao_julgamento AS
    PROCEDURE InsereCupom(p_cod IN OUT Cupom.cod%TYPE, p_desconto IN OUT Cupom.desconto%TYPE);
    FUNCTION desconto(codigo_cupom IN Cupom.cod%type) RETURN VARCHAR2;
END insercao_julgamento;
/



CREATE OR REPLACE PACKAGE BODY insercao_julgamento AS
    PROCEDURE InsereCupom(
        p_cod IN OUT Cupom.cod%TYPE,
        p_desconto IN OUT Cupom.desconto%TYPE
    ) IS
    BEGIN   
        INSERT INTO Cupom(cod, desconto) VALUES (p_cod, p_desconto);
    END InsereCupom;

    FUNCTION desconto(codigo_cupom IN Cupom.cod%TYPE) RETURN VARCHAR2 IS
        desconto_cupom Cupom.desconto%TYPE;
    BEGIN
        SELECT C.desconto INTO desconto_cupom FROM Cupom C WHERE C.cod = codigo_cupom;
        IF desconto_cupom > 50 THEN
            RETURN 'Desconto magnifico';
        ELSIF desconto_cupom > 30 THEN
            RETURN 'Desconto mid';
        ELSE
            RETURN 'Desconto ruim';
        END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN 'Cupom não existente ):';
    END desconto;
END insercao_julgamento;
/

-- Trigger (em linha) para por o selo do vendedor ao inserir uma compra:
--ALTER TABLE VENDEDOR ADD (SELO VARCHAR2(10));

CREATE TRIGGER SELO_VENDEDOR_TG
AFTER INSERT ON COMPRA
FOR EACH ROW
DECLARE T_VENDAS INT;
BEGIN
	SELECT COUNT(*) INTO T_VENDAS
    FROM COMPRA WHERE email_vendedor = :NEW.EMAIL_VENDEDOR;

	UPDATE VENDEDOR
        SET SELO = CASE
        	WHEN  T_VENDAS = 2 THEN 'BRONZE'
        	WHEN T_VENDAS  = 3 THEN 'PRATA'
        	WHEN T_VENDAS  = 5 THEN 'OURO'
        	ELSE SELO
        END
	WHERE email = :NEW.EMAIL_VENDEDOR;
END;


-- Trigger (comando) para por os selos dos motoboys:
--ALTER TABLE MOTOBOY ADD (SELO VARCHAR2(10));

CREATE TRIGGER SELO_MOTOBOY_TG
AFTER INSERT ON COMPRA
DECLARE
    CURSOR C_MOTOBOY IS
        SELECT M.cpf FROM MOTOBOY M;
    T_VENDAS INT;
BEGIN
    FOR MOTOBOY IN C_MOTOBOY LOOP
        SELECT COUNT(*) INTO T_VENDAS FROM COMPRA WHERE cpf_motoboy = MOTOBOY.cpf;
        UPDATE MOTOBOY
        SET SELO = CASE
            WHEN T_VENDAS >= 1 AND T_VENDAS < 3 THEN 'BRONZE'
            WHEN T_VENDAS >= 2 AND T_VENDAS < 5 THEN 'PRATA'
            WHEN T_VENDAS >= 5 THEN 'OURO'
            ELSE SELO
        END
        WHERE cpf = MOTOBOY.cpf;
    END LOOP;
    
END;
-- printa os 3 itens mais caros e seus precos
DECLARE
    TYPE lista_itens IS TABLE OF item%ROWTYPE INDEX BY BINARY_INTEGER;
    
    items lista_itens;
    
    counter NUMBER := 1;
    counter2 NUMBER := 1;
BEGIN
    FOR item in (SELECT * FROM item ORDER BY preco DESC) LOOP
        items(counter).nome_do_produto := item.nome_do_produto;
        items(counter).preco := item.preco;
        
        counter := counter + 1;
    END LOOP;

    LOOP
        dbms_output.put_line(counter2);
        dbms_output.put_line('nome: ' || items(counter2).nome_do_produto);
        dbms_output.put_line('preco: ' || items(counter2).preco);
        
        IF counter2 = 3 THEN
            EXIT;
        END IF;
        
        counter2 := counter2 + 1;
    END LOOP;
END;

-- cursor que calcula a média do preço de todos os itens

DECLARE
    preco Item.preco%TYPE;
    quantidade_de_itens NUMBER;
    soma NUMBER;
    valor_total NUMBER;
    media NUMBER(10, 2);

    CURSOR preco_item IS
        SELECT preco FROM Item;

BEGIN
    OPEN preco_item;
    quantidade_de_itens := 0;
    soma := 0;
    LOOP
    FETCH preco_item INTO preco;
        IF preco_item%FOUND THEN
            quantidade_de_itens := quantidade_de_itens + 1;
            soma := soma + preco;
        END IF;
    EXIT WHEN preco_item%NOTFOUND;
    END LOOP;
    
    CLOSE preco_item;

    media := soma/quantidade_de_itens;
    dbms_output.put_line('Média dos preços: ' || media);

END;
