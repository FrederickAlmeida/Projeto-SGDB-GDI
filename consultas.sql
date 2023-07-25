-- preço médio de anúncio por vendedor, ordenado pelo preço médio, cujo preço médio é maior que 100
SELECT u.nome, avg(i.preco) as preco_medio_anuncio FROM usuario u
INNER JOIN vendedor v ON v.email = u.email
INNER JOIN item i ON i.email_vendedor_anuncio = v.email
GROUP BY u.nome
HAVING avg(i.preco) > 100
ORDER BY avg(i.preco);

-- listar itens cujo preço é entre 5 e 20, e diferente de 15
SELECT i.nome_do_produto, i.preco FROM item i
WHERE i.preco BETWEEN 5 AND 20
AND i.preco NOT IN (15);

-- listar a quantidade de itens vendidos pelo "Caio Possídio" e a quantidade de itens vendidos pelo "Batheus Marney"
SELECT * FROM (SELECT u.nome, count(c.cod_anuncio) as total_vendas FROM compra c
INNER JOIN usuario u ON u.email = c.email_vendedor
WHERE u.nome = 'Caio Possídio'
GROUP BY u.nome)
UNION
(SELECT u.nome, count(c.cod_anuncio) as total_vendas FROM compra c
INNER JOIN usuario u ON u.email = c.email_vendedor
WHERE u.nome = 'Batheus Marney'
GROUP BY u.nome);

-- adicionar um novo telefone para o "Paguso"
INSERT INTO 
    Telefone (email, numero)
VALUES
    ('paguso_da_maldade@terra.br', '81949929989');



-- mostrar o item mais caro e o mais barato comprados pelo "Gabriel"
SELECT i.nome_do_produto, i.preco FROM item i
INNER JOIN compra c ON c.cod_anuncio = i.cod_anuncio
INNER JOIN usuario u ON u.email = c.email_comprador
WHERE u.nome = 'Gabriel'
AND i.preco IN((SELECT max(i.preco) FROM item i
                INNER JOIN compra c ON c.cod_anuncio = i.cod_anuncio
                INNER JOIN usuario u ON u.email = c.email_comprador
                WHERE u.nome = 'Gabriel'), 
                (SELECT min(i.preco) FROM item i
                INNER JOIN compra c ON c.cod_anuncio = i.cod_anuncio
                INNER JOIN usuario u ON u.email = c.email_comprador
                WHERE u.nome = 'Gabriel')
                );

-- listar todos os usuarios cujo nome possui mais de uma sílaba
SELECT u.nome FROM usuario u
WHERE u.nome LIKE '% %';

-- listar todos os itens que são mais baratos que os itens do "Caio Possídio", e seus preços
SELECT i.nome_do_produto, i.preco FROM item i
WHERE i.preco < ALL(SELECT i.preco FROM item i
                    INNER JOIN compra c ON c.cod_anuncio = i.cod_anuncio
                    INNER JOIN usuario u ON u.email = c.email_vendedor
                    WHERE u.nome = 'Caio Possídio');



-- lista se o cupom vale ou não a pena ser utilizado baseado no desconto

CREATE FUNCTION desconto (codigo_cupom IN cupom.codigo%type) RETURN VARCHAR2 IS
    desconto_cupom cupom.desconto%type;
BEGIN
    SELECT i. into conc FROM cupom X WHERE c

-- adicionar o atributo nome na tabela cupom

/
ALTER TABLE Cupom
ADD nome VARCHAR2(20);
    
/


-- Atualiza o cupom "123456"

UPDATE Cupom
SET desconto = 90
WHERE cod = 123456;
/

-- Deleta o cupom "666666" 

DELETE FROM Cupom
WHERE cod = 666666;
/

-- lista todos os itens que não tem descrição (descrição nula)

SELECT *
FROM Item
WHERE descricao IS NOT NULL

-- lista todos os usuários que também são compradores e seus números de cartões de crédito

SELECT U.nome, C.num_cartao
FROM Usuario U LEFT OUTER JOIN Comprador C
ON U.email = C.email
