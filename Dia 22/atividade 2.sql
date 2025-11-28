CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    data_cadastro DATE
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Nissan Skyline r34', 'Carro esportivo', 1200000.00, 15, '2024-01-10'),
('Fone de Ouvido Bluetooth', 'Áudio', 150.00, 30, '2024-02-15'),
('Notebook Gamer', 'Informática', 3500.00, 8, '2024-01-20'),
('Camiseta Básica', 'Vestuário', 49.90, 50, '2024-03-01'),
('Smart TV', 'Eletrônicos', 2800.00, 12, '2024-01-05'),
('Mouse Gamer', 'Informática', 120.00, 25, '2024-02-20'),
('Tênis Esportivo', 'Calçados', 299.90, 20, '2024-03-05'),
('Tablet 1', 'Eletrônicos', 800.00, 18, '2024-02-10');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 129.90 WHERE nome = 'Mouse Gamer';

SELECT * FROM tb_produtos WHERE nome = 'Mouse Gamer';
SELECT * FROM tb_produtos WHERE nome = 'Mouse Gamer';
