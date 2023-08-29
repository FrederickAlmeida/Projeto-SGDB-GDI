-- cupons com desconto maiores que 20
SELECT C.cod FROM tb_cupom C WHERE C.desconto > 20;
/

-- vendededores com selo bronze
SELECT V.nome, V.email, V.endereco.cidade from tb_vendedor V WHERE V.selo = 'Bronze';
/

-- Vendedores mais favoritados
SELECT DEREF(F.vendedor).nome, COUNT(*) FROM tb_favorita F GROUP BY DEREF(F.vendedor).nome HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM tb_favorita F GROUP BY DEREF(F.vendedor).nome);
/

-- Vendedores menos favoritados
SELECT DEREF(F.vendedor).nome, COUNT(*) FROM tb_favorita F GROUP BY DEREF(F.vendedor).nome HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM tb_favorita F GROUP BY DEREF(F.vendedor).nome);
/

-- Numeros de telefone do comprador Vitor Maldesto
SELECT * FROM TABLE(SELECT U.fones FROM tb_comprador U WHERE U.nome = 'Vitor Maldesto');
/


-- Anuncios do vendedor Ian Gabriel
SELECT * FROM TABLE(SELECT V.lista_anuncios FROM tb_vendedor V WHERE V.nome = 'Ian Gabriel');
/

-- Alterar o indicador do motoboy com cpf 12345678902 para o motoboy com cpf 12345678904
UPDATE tb_motoboy M SET M.indicador = (SELECT REF(M) FROM tb_motoboy M WHERE M.cpf = '12345678904') WHERE M.cpf = '12345678902';
/