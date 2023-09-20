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
('Escola João Theodoro', 'Karina', '2º ano', 9.5),
('Escola João Theodoro', 'João', '2º ano', 6.5),
('Escola João Theodoro', 'Shomara', '2º ano', 5.9),
('Escola João Theodoro', 'Julia', '2º ano', 10),
('Escola João Theodoro', 'Lucas', '2º ano', 7.5),
('Escola João Theodoro', 'Pedro', '2º ano', 8),
('Escola João Theodoro', 'Victor', '2º ano', 4),
('Escola João Theodoro', 'Eduardo', '2º ano', 9.5);

SELECT * FROM tb_notas WHERE NotaFinal > 7;
SELECT * FROM tb_notas WHERE NotaFinal < 7;

UPDATE tb_notas SET NotaFinal = 7.5 WHERE Id = 3;

