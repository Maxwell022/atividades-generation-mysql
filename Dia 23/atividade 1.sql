CREATE DATABASE db_jogo;

USE db_jogo;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	elemento VARCHAR(255),
	classe VARCHAR(255)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	id_classe BIGINT,
	nome VARCHAR(255),
	arma_primaria VARCHAR(255),
	ataque BIGINT,
	defesa BIGINT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY(id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes (elemento, classe) VALUES
('Fogo', 'Guerreiro Flamejante'),
('Água', 'Mestre dos Mares'),
('Terra', 'Guardião da Montanha'),
('Ar', 'Arqueiro do Vento'),
('Luz', 'Paladino Sagrado');

INSERT INTO tb_personagens (nome, arma_primaria, ataque, defesa, id_classe) VALUES
('Ignis', 'Espada de Fogo', 2500, 1200, 1),
('Marina', 'Tridente das Marés', 1800, 2200, 2),
('Terran', 'Martelo de Pedra', 2200, 3000, 3),
('Zephyr', 'Arco do Furacão', 2100, 1100, 4),
('Luminus', 'Lança da Luz', 2400, 2000, 5),
('Pyra', 'Machado de Lava', 2300, 1500, 1),
('Nereus', 'Adaga de Gelo', 1900, 1800, 2),
('Gacius', 'Clava de Cristal', 2000, 2500, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.elemento, tb_classes.classe 
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.*, tb_classes.elemento, tb_classes.classe 
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.classe = 'Guerreiro Flamejante';