CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Cargo VARCHAR (255) NOT NULL,
	Salario DECIMAL NOT NULL,
	DataDeEntrada DATE,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_funcionarios;

ALTER TABLE tb_funcionarios ALTER COLUMN salario DECIMAL(6,2);

INSERT INTO tb_funcionarios
(Nome, Cargo, Salario, DataDeEntrada)
VALUES
('Karina', 'Desenvolvedor(a) FullStack', 5000, '2023-12-01');

INSERT INTO tb_funcionarios
(Nome, Cargo, Salario, DataDeEntrada)
VALUES
('João', 'Desenvolvedor(a) FullStack', 4500.69, '2023-12-01'),
('Lucas', 'Desenvolvedor(a) FullStack', 1999.99, '2023-12-01'),
('Shomara', 'Desenvolvedor(a) Back-end', 4999.99, '2023-12-01'),
('Victor', 'Desenvolvedor(a) Front-end', 3999.99, '2023-12-01');

DELETE FROM tb_funcionarios WHERE Id = 1;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET Salario = 3999.99 WHERE Id = 4;