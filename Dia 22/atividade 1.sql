CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('João Silva', 'Analista de RH', 'Recursos Humanos', 3500.00, '2023-01-15'),
('Maria Santos', 'Assistente Administrativo', 'Administração', 1800.00, '2024-03-20'),
('Pedro Oliveira', 'Desenvolvedor', 'TI', 4200.00, '2022-11-10'),
('Ana Costa', 'Estagiária', 'Marketing', 1500.00, '2024-06-01'),
('Carlos Lima', 'Gerente', 'Vendas', 5500.00, '2021-08-05'),
('Fernanda Rocha', 'Analista Financeiro', 'Financeiro', 2800.00, '2023-09-12');


SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1900.00 WHERE nome = 'Maria Santos';
