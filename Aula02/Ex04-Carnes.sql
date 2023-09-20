CREATE DATABASE db_cidade_das_carnes

USE db_cidade_das_carnes

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	TipoCarne VARCHAR (255) NOT NULL,
	Disponibilidade VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias (TipoCarne, Disponibilidade)VALUES ('Linguiça', 'Disponível'),
('Bovino', 'Disponível'),
('Suino', 'Disponível'),
('Aves', 'Disponível'),
('Ovinos', 'Indisponível');

CREATE TABLE tb_produtos(	Id BIGINT IDENTITY(1,1),	Nome VARCHAR (255) NOT NULL,	Marca VARCHAR (255) NOT NULL,	Preco DECIMAL (6,2),	Estoque INT,	PRIMARY KEY(Id),	categoria_Id BIGINT,	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id));INSERT INTO tb_produtos
(Nome, Marca, Preco, Estoque, categoria_Id)
VALUES
('Linguiça Toscana Aurora kg', 'Aurora', 60.5, 50, 1),('Linguiça Toscana Na Brasa Perdigão kg', 'Perdigão', 80.5, 80, 1),('Linguiça Toscana Sadia kg', 'Sadia', 50, 30, 1),('Peito de Frango Sem Osso kg', 'Aurora', 60.5, 60, 4),('Bisteca Suína kg', 'Aurora', 30.5, 60, 3),('Acém Bovino kg', 'Perdigão', 90.5, 40, 2),('Carne Bovino Ponta Agulha kg', 'Aurora', 60.5, 50, 2),('Pernil de Cordeiro com Osso', 'Swift', 120, 0, 5);SELECT * FROM tb_categorias;SELECT * FROM tb_produtos;SELECT * FROM tb_produtos;SELECT * FROM tb_produtos WHERE Preco > 50;

SELECT * FROM tb_produtos WHERE preco > 60 AND preco < 100;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT tb_produtos.Id, nome, Marca, preco, Estoque, TipoCarne, Disponibilidade FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_Id;