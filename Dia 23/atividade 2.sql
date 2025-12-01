CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255) NOT NULL,
    ingredientes TEXT,
    valor DECIMAL(6,2),
    tamanho VARCHAR(255),
    id_categoria BIGINT
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas com ingredientes salgados tradicionais'),
('Doce', 'Pizzas com coberturas doces e sobremesas'),
('Vegetariana', 'Pizzas sem carne, apenas com vegetais e queijos'),
('Especial', 'Pizzas premium com ingredientes especiais'),
('Vegana', 'Pizzas sem nenhum ingrediente de origem animal');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, valor, tamanho, id_categoria) VALUES
('Calabresa', 'Molho de tomate, calabresa, cebola, queijo mussarela', 45.90, 'Grande', 1),
('Marguerita', 'Molho de tomate, mussarela, tomate, manjericão fresco', 42.50, 'Grande', 1),
('Chocolate com Morango', 'Chocolate derretido, morangos frescos, leite condensado', 55.00, 'Média', 2),
('Portuguesa', 'Molho de tomate, presunto, mussarela, ovos, cebola, azeitonas', 52.90, 'Grande', 1),
('Vegetariana Especial', 'Molho de tomate, mussarela, berinjela, abobrinha, pimentões', 48.90, 'Grande', 3),
('Quatro Queijos', 'Molho de tomate, mussarela, provolone, parmesão, gorgonzola', 58.90, 'Grande', 4),
('Vegana Supreme', 'Molho de tomate, queijo vegano, palmito, champignon, ervilha', 49.90, 'Grande', 5),
('Romeu e Julieta', 'Goiabada, queijo mussarela, leite condensado', 47.50, 'Média', 2);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome_categoria, tb_categorias.descricao 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.nome_categoria, tb_categorias.descricao 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.id = 2;