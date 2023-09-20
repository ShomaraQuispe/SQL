USE  db_quitanda

SELECT * FROM tb_tabelas;

SELECT * FROM tb_tabelas ORDER BY nome ASC;

SELECT * FROM tb_tabelas ORDER BY Preco DESC;

SELECT * FROM tb_tabelas WHERE NOT id = 1;

SELECT * FROM tb_tabelas WHERE preco IN (5, 2, 8) ORDER BY nome ASC;

SELECT * FROM tb_tabelas WHERE Preco BETWEEN 5 AND 15;

SELECT * FROM tb_tabelas WHERE Nome LIKE '%a%';

SELECT COUNT (*) AS 'N�MERO DE LINHAS' FROM tb_tabelas

SELECT SUM (Preco) AS 'VALOR TOTAL DOS PRODUTOS' FROM tb_tabelas

SELECT AVG (Preco) FROM tb_tabelas;

SELECT MIN (Preco) FROM tb_tabelas

--RELACIONAMENTO ENTRE TABELAS --

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	Descricao VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categorias