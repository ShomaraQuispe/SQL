CREATE DATABASE db_quitanda;

USE db_quitanda; --após criar a estrutura da tabela utilize USE para selecionar a qual banco de dado se refere--

CREATE TABLE tb_tabelas(
	Id BIGINT IDENTITY (1,1), --1,1 é para ir de uma em uma linha, é sequencial--
	Nome VARCHAR (255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_tabelas; --o * sginfica SELECIONAR TUDO || selecionar só essa linha mostra a tabela toda--

INSERT INTO tb_tabelas
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Laranja', 20, '2023-09-18', 8.00);

INSERT INTO tb_tabelas
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Maça', 10, '2023-09-18', 15.25);

INSERT INTO tb_tabelas
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16.00); --é possível adicionar as linhas seguida desta maneira--

SELECT * FROM tb_tabelas WHERE Id = 1; 

SELECT * FROM tb_tabelas WHERE Nome = 'banana';

SELECT Nome, Quantidade, Preco FROM tb_tabelas WHERE Nome = 'banana';

SELECT * FROM tb_tabelas WHERE Id = 1 OR Id = 2 OR Id = 3;

SELECT * FROM tb_tabelas WHERE preco > 4 AND preco < 10;

ALTER TABLE tb_tabelas ALTER COLUMN preco DECIMAL(6,2); --serve para alterar tabelas, não é recomendável alterar após de ter dados--

INSERT INTO tb_tabelas
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Milho', 20, '2023-09-18', 10.25);

ALTER TABLE tb_tabelas ADD Descricao VARCHAR (255);

UPDATE tb_tabelas SET Descricao = 'Milho verde natural' WHERE Id = 6;

DELETE FROM tb_tabelas WHERE Id = 5;