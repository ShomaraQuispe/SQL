CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	Trilhas VARCHAR (255) NOT NULL,
	Modalidade VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias (Trilhas, Modalidade)VALUES ('Front-End', 'Presencial'),('Data Science', 'Online'),('Inteligência Artificial', 'Online'),('UX & Design', 'Presencial'),('Mobile', 'Online');

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

CREATE TABLE tb_cursos(	Id BIGINT IDENTITY(1,1),	Nome VARCHAR (255) NOT NULL,	Duracao INT,	Preco DECIMAL (6,2),	Classificacao DECIMAL (6,2),	PRIMARY KEY(Id),	categoria_Id BIGINT,	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id));INSERT INTO tb_cursos
(Nome, Duracao, Preco, Classificacao, categoria_Id)
VALUES
('HTML & CSS', 50, 500, 4.5, 1),
('React', 60, 800, 4.0, 1),
('Machine Learning', 100, 1050, 5.0, 3),
('SQL e Banco de Dados', 90, 900, 5.0, 2),
('UI', 60, 450, 4.8, 4),
('UX', 80, 450, 4.7, 4),
('Android', 110, 700, 4.8, 5),
('Flutter', 90, 800, 4.5, 5);

SELECT * FROM tb_cursos WHERE Preco > 500;

SELECT * FROM tb_cursos WHERE Preco > 600 AND Preco < 1000;

SELECT * FROM tb_cursos WHERE nome LIKE '%A%';

SELECT tb_cursos.Id, Nome, Duracao, Preco, Classificacao, Trilhas, Modalidade FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.categoria_Id;
