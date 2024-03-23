CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe BIGINT AUTO_INCREMENT,
		categoria VARCHAR(255) NOT NULL,
        habilidade VARCHAR(255) NOT NULL,
	PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
	id_personagens BIGINT AUTO_INCREMENT,
		nome VARCHAR(255),
        dano INT,
        defesa INT,
        ataque_ult VARCHAR(255),
    PRIMARY KEY (id_personagens)
);

INSERT INTO tb_classes(categoria, habilidade) VALUES ("Controlador", "Smoke");
INSERT INTO tb_classes(categoria, habilidade) VALUES ("Duelista", "Ataque");
INSERT INTO tb_classes(categoria, habilidade) VALUES ("Iniciador", "Spot");
INSERT INTO tb_classes(categoria, habilidade) VALUES ("Sentinela", "Defesa");

INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Brimstone", 800, 700, "Ataque Orbital");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Astra", 700, 770, "Divisa Cósmica");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Phoenix", 1000, 820, "Renascimento");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Reyna", 1000, 900, "Imperatriz");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Sova", 800, 900, "Fúria do caçador");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Gekko", 800, 850, "Thrash");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Sage", 680, 1000, "Ressurreição");
INSERT INTO tb_personagens(nome, dano, defesa, ataque_ult) VALUES ("Killjoy", 800, 900, "Confinamento");

ALTER TABLE tb_personagens ADD classeid BIGINT;

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classeid) REFERENCES tb_classes (id_classe);

UPDATE tb_personagens SET classeid = 1 WHERE id_personagens = 1;
UPDATE tb_personagens SET classeid = 1 WHERE id_personagens = 2;
UPDATE tb_personagens SET classeid = 2 WHERE id_personagens = 3;
UPDATE tb_personagens SET classeid = 2 WHERE id_personagens = 4;
UPDATE tb_personagens SET classeid = 3 WHERE id_personagens = 5;
UPDATE tb_personagens SET classeid = 3 WHERE id_personagens = 6;
UPDATE tb_personagens SET classeid = 4 WHERE id_personagens = 7;
UPDATE tb_personagens SET classeid = 4 WHERE id_personagens = 8;

SELECT * FROM tb_personagens WHERE dano > 800;
SELECT * FROM tb_personagens WHERE 700 < defesa AND defesa < 1000;
SELECT * FROM tb_personagens WHERE nome LIKE "%A%";

SELECT tb_personagens.*, tb_classes.categoria, tb_classes.habilidade FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id_classe;

SELECT tb_personagens.*, tb_classes.categoria, tb_classes.habilidade FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id_classe WHERE tb_classes.id_classe = 1;