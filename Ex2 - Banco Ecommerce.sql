CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Preco DECIMAL NOT NULL,
	Marca VARCHAR (255) NOT NULL,
	Quantidade DECIMAL NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ALTER COLUMN preco DECIMAL(6,2);

INSERT INTO tb_produtos
(Nome, Preco, Marca, Quantidade)
VALUES
('Headset Gamer', 299.99, 'Hyperx', 60),
('Monitor Gamer', 1099.99, 'LG', 90),
('Mouse Gamer Sem Fio', 549.99, 'Logitech', 200),
('Console Microsoft Xbox Series S', 2049.99, 'Microsoft', 40),
('PC Gamer', 1904.02, 'Certox', 60),
('Cadeira Office', 1189.99, 'DT3 Office', 210),
('Placa de Vídeo', 2249.99, 'MSI', 70),
('Mousepad Gamer', 39.99, 'Husky', 200);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;