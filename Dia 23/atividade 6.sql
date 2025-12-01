CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    area_conhecimento VARCHAR(255) NOT NULL,
    nivel_dificuldade VARCHAR(100)
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10,2),
    duracao_horas INT,
    instrutor VARCHAR(255),
    id_categoria BIGINT
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (area_conhecimento, nivel_dificuldade) VALUES
('Tecnologia', 'Avançado'),
('Negócios', 'Intermediário'),
('Design', 'Básico'),
('Saúde', 'Intermediário'),
('Idiomas', 'Básico');

INSERT INTO tb_cursos (nome_curso, descricao, valor, duracao_horas, instrutor, id_categoria) VALUES
('Java Avançado', 'Curso completo de Java com Spring Boot e microserviços', 850.00, 80, 'Carlos Silva', 1),
('Python para Data Science', 'Análise de dados com Pandas, NumPy e Machine Learning', 750.00, 60, 'Ana Santos', 1),
('Gestão de Projetos', 'Metodologias ágeis e gestão de equipes', 450.00, 40, 'Roberto Almeida', 2),
('Design Gráfico', 'Photoshop, Illustrator e fundamentos do design', 350.00, 30, 'Juliana Costa', 3),
('JavaScript Full Stack', 'Desenvolvimento web com React, Node.js e MongoDB', 950.00, 100, 'Paulo Mendes', 1),
('Nutrição Esportiva', 'Planejamento alimentar para atletas', 600.00, 45, 'Dr. Marcelo Lima', 4),
('Inglês Avançado', 'Curso completo de inglês para fluência', 1200.00, 120, 'Teacher John', 5),
('Marketing Digital', 'Estratégias de marketing para redes sociais', 550.00, 35, 'Camila Oliveira', 2);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT tb_cursos.*, tb_categorias.area_conhecimento, tb_categorias.nivel_dificuldade 
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;

SELECT tb_cursos.*, tb_categorias.area_conhecimento, tb_categorias.nivel_dificuldade 
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id
WHERE tb_categorias.id = 1;