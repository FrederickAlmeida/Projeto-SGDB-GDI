-- cupons com desconto maiores que 20
SELECT
    C.cod
FROM
    tb_cupom C
WHERE
    C.desconto > 20;

/
-- vendededores com selo bronze
SELECT
    V.nome,
    V.email,
    V.endereco.cidade
from
    tb_vendedor V
WHERE
    V.selo = 'Bronze';

/
-- Vendedores mais favoritados
SELECT
    DEREF(F.vendedor).nome,
    COUNT(*)
FROM
    tb_favorita F
GROUP BY
    DEREF(F.vendedor).nome
HAVING
    COUNT(*) = (
        SELECT
            MAX(COUNT(*))
        FROM
            tb_favorita F
        GROUP BY
            DEREF(F.vendedor).nome
    );

/
-- Vendedores menos favoritados
SELECT
    DEREF(F.vendedor).nome,
    COUNT(*)
FROM
    tb_favorita F
GROUP BY
    DEREF(F.vendedor).nome
HAVING
    COUNT(*) = (
        SELECT
            MIN(COUNT(*))
        FROM
            tb_favorita F
        GROUP BY
            DEREF(F.vendedor).nome
    );

/
-- Numeros de telefone do comprador Vitor Maldesto
SELECT
    *
FROM
    TABLE (
        SELECT
            U.fones
        FROM
            tb_comprador U
        WHERE
            U.nome = 'Vitor Maldesto'
    );

/
-- Anuncios do vendedor Ian Gabriel
SELECT
    *
FROM
    TABLE (
        SELECT
            V.lista_anuncios
        FROM
            tb_vendedor V
        WHERE
            V.nome = 'Ian Gabriel'
    );
/

-- Quanto de dinheiro comprador Caio Possidio gastou

SELECT
    SUM(A.preco)
FROM
    tb_compra C,
    TABLE (C.vendedor.lista_anuncios) A
WHERE
    C.comprador.nome = 'Caio Possidio';
/

-- Quanto de dinheiro o vendedor Ian Gabriel ganhou com vendas

SELECT
    SUM(A.preco)
FROM
    tb_compra C,
    TABLE (C.vendedor.lista_anuncios) A
WHERE
    C.vendedor.nome = 'Ian Gabriel';
/

-- Quais motoboys foram avaliados com nota 5
 
SELECT DISTINCT
    M.cpf
FROM
    tb_avaliar A,
    tb_motoboy M
WHERE
    A.motoboy.cpf = M.cpf
    AND A.nota_motoboy = 5;


-- Alterar o indicador do motoboy com cpf 12345678902 para o motoboy com cpf 12345678904
UPDATE tb_motoboy M
SET
    M.indicador = (
        SELECT
            REF(M)
        FROM
            tb_motoboy M
        WHERE
            M.cpf = '12345678904'
    )
WHERE
    M.cpf = '12345678902';


/

-- Testar o procedimento do vendedor exibir_detalhes

DECLARE 
    V tp_vendedor;
BEGIN
    SELECT VALUE(VE)
    INTO V
    FROM tb_vendedor VE
    WHERE VE.nome = 'Ian Gabriel';

    V.exibir_detalhes();
END;

/


-- Testar o procedimento do comprador exibir_detalhes

DECLARE 
    cpv tp_comprador;
BEGIN
    SELECT VALUE(C)
    INTO cpv
    FROM tb_comprador C
    WHERE C.nome = 'Caio Possidio';

    cpv.exibir_detalhes();
END;

/
-- Testar o procedimento do usuário exibir_endereco_completo

DECLARE 
    cpv tp_comprador;
BEGIN
    SELECT VALUE(C)
    INTO cpv
    FROM tb_comprador C
    WHERE C.nome = 'Caio Possidio';

    cpv.exibir_endereco_completo();
END;
/

-- Testar a função do anúncio e_maior

DECLARE 
    anu1 tp_anuncio;
    anu2 tp_anuncio;
BEGIN
    SELECT VALUE(T) 
    INTO anu1
    FROM TABLE (SELECT lista_anuncios FROM tb_vendedor WHERE email='leloco61@gmail.com') T 
    WHERE T.codigo=33333;

    SELECT VALUE(T) 
    INTO anu2
    FROM TABLE (SELECT lista_anuncios FROM tb_vendedor WHERE email='leloco61@gmail.com') T 
    WHERE T.codigo=44444;
    

    DBMS_OUTPUT.PUT_LINE(anu2.e_maior(anu1));
END;
/

-- Testar a função do vendedor get_rank

DECLARE 
    vnd tp_vendedor;
BEGIN
    SELECT VALUE(T) 
    INTO vnd
    FROM tb_vendedor T 
    WHERE T.nome='Ian Gabriel';

    DBMS_OUTPUT.PUT_LINE(vnd.get_rank());
END;
/

-- Testar a função do motoboy qualidade

DECLARE 
    mot tp_motoboy;
BEGIN
    SELECT VALUE(T) 
    INTO mot
    FROM tb_motoboy T 
    WHERE T.cpf='12345678904';

    DBMS_OUTPUT.PUT_LINE(mot.qualidade());
END;
/

