CREATE DATABASE db_pizzaria_legal

GO
USE db_pizzaria_legal
GO

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	CategoriaCardapio VARCHAR (255) NOT NULL,
	TamanhoPizza VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias (CategoriaCardapio, TamanhoPizza)VALUES ('Pizza Vegetariana', 'Inteira e Meia'),('Pizza Vegana', 'Inteira e Meia'),('Pizza Doce', 'Inteira'),('Pizza Tradicional', 'Inteira e Meia'),('Pizza Kids', 'Meia');

SELECT * FROM tb_categorias;
CREATE TABLE tb_pizzas(	Id BIGINT IDENTITY(1,1),	Nome VARCHAR (255) NOT NULL,	Quantidade INT,	Preco DECIMAL (6,2),	Descricao VARCHAR (255) NOT NULL,	PRIMARY KEY(Id),	categoria_Id BIGINT,	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id));INSERT INTO tb_pizzas
(Nome, Quantidade, Preco, Descricao, categoria_Id)
VALUES
('Broccoli', 5, 60.5,'Pizza de Brocolis Vegana', 2),
('Shimeji e Shitake', 8, 105, 'Pizza Shimeji e Shitake Vegetariana ' , 1),
('Mozzarella', 10, 40, 'Pizza de Mussarela' , 4),
('Catupiry ', 8, 45, 'Pizza de Catupiry', 4),
('Calabrese', 10, 50, 'Pizza de Calabresa',  4),
('Banana', 11, 40.5, 'Pizza de Banana Doce', 3),
('Pollo e Catupiry', 5, 90, 'Pizza de Pollo e Catupiry', 4),
('Kit-kat', 10, 40, 'Pizza Kit-kat para crianças',5);

SELECT * FROM tb_pizzas WHERE Preco > 45;

SELECT * FROM tb_pizzas WHERE preco > 50 AND preco < 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT tb_pizzas.Id, nome, quantidade, preco, descricao, CategoriaCardapio, TamanhoPizza FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_Id = tb_categorias.Id;
