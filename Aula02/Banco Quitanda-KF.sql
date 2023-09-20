USE  db_quitanda

SELECT * FROM tb_tabelas;

SELECT * FROM tb_tabelas ORDER BY nome ASC;

SELECT * FROM tb_tabelas ORDER BY Preco DESC;

SELECT * FROM tb_tabelas WHERE NOT id = 1;

SELECT * FROM tb_tabelas WHERE preco IN (5, 2, 8) ORDER BY nome ASC;

SELECT * FROM tb_tabelas WHERE Preco BETWEEN 5 AND 15;

SELECT * FROM tb_tabelas WHERE Nome LIKE '%a%';

SELECT COUNT (*) AS 'NÚMERO DE LINHAS' FROM tb_tabelas

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

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (Descricao)VALUES ('Frutas');INSERT INTO tb_categorias (Descricao)VALUES ('Verduras');INSERT INTO tb_categorias (Descricao)VALUES ('Legumes');INSERT INTO tb_categorias (Descricao)VALUES ('Temperos');INSERT INTO tb_categorias (Descricao)VALUES ('Ovos');INSERT INTO tb_categorias (Descricao)VALUES ('outros');DROP TABLE tb_tabelas;CREATE TABLE tb_tabelas(	Id BIGINT IDENTITY(1,1),	Nome VARCHAR (255) NOT NULL,	Quantidade INT,	DataValidade DATE,	Preco DECIMAL (6,2),	PRIMARY KEY(Id),	categoria_Id BIGINT,	FOREIGN KEY (categoria_id) REFERENCES tb_categorias (Id));SELECT * FROM tb_tabelas;SELECT * FROM tb_categorias;INSERT INTO tb_tabelas(Nome, Quantidade, DataValidade, Preco, categoria_Id)VALUES('Abacate', 45, '2023-09-22', 5.25, 1);INSERT INTO tb_tabelas(Nome, Quantidade, DataValidade, Preco, categoria_Id)VALUES	('Maçã', 1000, '2022-03-07', 1.99, 1),	('Banana', 1300, '2022-03-08', 5.00, 1),	('Batata doce', 2000, '2022-03-09', 10.00, 3),	('Alface', 300, '2022-03-10', 7.00, 2),	('Cebola', 1020, '2022-03-08', 5.00, 3),	('Ovo Branco', 1000, '2022-03-07', 15.00, 5),	('Agrião', 1500, '2022-03-06', 3.00, 2),	('Cenoura', 1800, '2022-03-09', 3.50, 3),	('Pimenta', 1100, '2022-03-15', 10.00, 4),	('Alecrim', 130, '2022-03-10', 5.00, 4),	('Manga', 200, '2022-03-07', 5.49, 1),	('Laranja', 3000, '2022-03-13', 10.00, 1);SELECT * FROM tb_tabelas INNER JOIN tb_categorias -- ON tb_categorias.Id = tb_tabelas.categoria_Id;  --PEGAR O IDENTIFICADOR DA TABELA CATEGORIAS E LINKAR/INSERIR NA TABELA TABELAS DE ACORDO COM O ID DA CATEGORIASELECT tb_tabelas.Id, Nome, Quantidade, DataValidade, preco, categoria_id, DescricaoFROM tb_categorias LEFT JOIN tb_tabelasON tb_categorias.Id = tb_tabelas.categoria_Id;INSERT INTO tb_tabelas(Nome, Quantidade, Preco)VALUES	('Panela', 1118, 150.80);SELECT tb_tabelas.Id, Nome, Quantidade, DataValidade, preco, categoria_id, DescricaoFROM tb_tabelas LEFT JOIN tb_categorias ON tb_categorias.Id = tb_tabelas.categoria_IdWHERE nome like '%n%' ORDER BY tb_categorias.Id ASC;