-- cupons com desconto maiores que 20
SELECT C.cod FROM tb_cupom C WHERE C.desconto > 20;
/
-- vendededores com selo bronze
SELECT V.nome, V.email, V.endereco.cidade from tb_vendedor V WHERE V.selo = 'Bronze';
/