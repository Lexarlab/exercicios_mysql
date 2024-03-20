CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR (255) NOT NULL,
		datanasc DATE,
        funcao VARCHAR (255) NOT NULL,
		salario DECIMAL NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, datanasc, funcao, salario) 
VALUES ("José Marcos dos Santos", "1996-11-25", "Estagiário Desenvolvedor Java Jr.", 1500.00),
("Isadora Maria da Silva", "1998-05-01", "Desenvolvedor Java Pleno", 6600.75),
("Caroline Menezes de Carvalho", "2000-08-14", "Analista de Dados Jr.", 4400.45),
("Maria Santos da Silva", "1996-04-03", "Analista de Dados Pleno", 7200.00),
("Marcos Vinicius Fernades", "1999-02-05", "Estagiário de Desenvolvimento em Java", 1500.00);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

ALTER TABLE colaboradores MODIFY salario DECIMAL(6,2);

UPDATE colaboradores SET salario = 6600.76 WHERE id = 2;
