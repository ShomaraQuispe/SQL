CREATE DATABASE db_cidade_das_carnes

USE db_cidade_das_carnes

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	TipoCarne VARCHAR (255) NOT NULL,
	Disponibilidade VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias (TipoCarne, Disponibilidade)
('Bovino', 'Dispon�vel'),
('Suino', 'Dispon�vel'),
('Aves', 'Dispon�vel'),
('Ovinos', 'Indispon�vel');

CREATE TABLE tb_produtos(
(Nome, Marca, Preco, Estoque, categoria_Id)
VALUES
('Lingui�a Toscana Aurora kg', 'Aurora', 60.5, 50, 1),

SELECT * FROM tb_produtos WHERE preco > 60 AND preco < 100;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT tb_produtos.Id, nome, Marca, preco, Estoque, TipoCarne, Disponibilidade FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_Id;