CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_notas(
	Id BIGINT IDENTITY (1,1),
	Escola VARCHAR (255) NOT NULL,
	Nome VARCHAR (255) NOT NULL,
	AnoLetivo VARCHAR (255) NOT NULL,
	NotaFinal DECIMAL (4,1) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_notas;

INSERT INTO tb_notas
(Escola, Nome, AnoLetivo, NotaFinal)
VALUES
('Escola Jo�o Theodoro', 'Karina', '2� ano', 9.5),
('Escola Jo�o Theodoro', 'Jo�o', '2� ano', 6.5),
('Escola Jo�o Theodoro', 'Shomara', '2� ano', 5.9),
('Escola Jo�o Theodoro', 'Julia', '2� ano', 10),
('Escola Jo�o Theodoro', 'Lucas', '2� ano', 7.5),
('Escola Jo�o Theodoro', 'Pedro', '2� ano', 8),
('Escola Jo�o Theodoro', 'Victor', '2� ano', 4),
('Escola Jo�o Theodoro', 'Eduardo', '2� ano', 9.5);

SELECT * FROM tb_notas WHERE NotaFinal > 7;
SELECT * FROM tb_notas WHERE NotaFinal < 7;

UPDATE tb_notas SET NotaFinal = 7.5 WHERE Id = 3;

