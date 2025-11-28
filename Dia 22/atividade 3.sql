CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL,
    data_matricula DATE
);

INSERT INTO tb_estudantes (nome, idade, serie, nota_final, data_matricula) VALUES
('Gohan da Silva', 15, '9º Ano', 8.5, '2024-02-01'),
('Bruno Oliveira Santos', 16, '1º Ano EM', 6.8, '2024-02-02'),
('Yugi Coracao das Cartas', 14, '8º Ano', 9.2, '2024-02-01'),
('Sei la da Costa', 17, '2º Ano EM', 5.5, '2024-02-03'),
('Toyota Truno AE 86', 86, 'Trueno', 7.8, '2024-02-01'),
('Irineu', 16, '1º Ano EM', 4.9, '2024-02-04'),
('Nao te interessa', 14, '8º Ano', 8.9, '2024-02-02'),
('Roger', 17, '2º Ano EM', 7.1, '2024-02-03');

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET nota_final = 7.5 WHERE nome = 'Bruno Oliveira Santos';