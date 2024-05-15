-- Gerar dados aleatórios para a tabela Alunos
INSERT INTO Alunos (RA, Nome, Ano_ingresso)
SELECT 
    generate_series(100001, 100100) AS RA, -- Gera números de RA sequenciais
    'Aluno ' || generate_series(1, 100) AS Nome, -- Gera nomes de aluno sequenciais
    2018 + floor(random() * 5)::int AS Ano_ingresso -- Gera anos de ingresso entre 2018 e 2022
;

-- Gerar dados aleatórios para a tabela Curso
INSERT INTO Curso (Curso_ID, Nome)
SELECT 
    generate_series(1, 5) AS Curso_ID, -- Gera números de curso sequenciais
    'Curso ' || generate_series(1, 5) AS Nome -- Gera nomes de curso sequenciais
;

-- Gerar dados aleatórios para a tabela Matriz_Curricular
INSERT INTO Matriz_Curricular (Matriz_ID, Ano_Implementacao, Curso_ID)
SELECT 
    generate_series(1, 5) AS Matriz_ID, -- Gera números de matriz sequenciais
    2015 + floor(random() * 10)::int AS Ano_Implementacao, -- Gera anos de implementação entre 2015 e 2024
    floor(random() * 5) + 1 AS Curso_ID -- Seleciona um Curso_ID aleatório entre 1 e 5
;

-- Gerar dados aleatórios para a tabela Professor
INSERT INTO Professor (Professor_ID, Nome, Departamento_ID)
SELECT 
    generate_series(1, 20) AS Professor_ID, -- Gera números de professor sequenciais
    'Professor ' || generate_series(1, 20) AS Nome, -- Gera nomes de professor sequenciais
    floor(random() * 5) + 1 AS Departamento_ID -- Seleciona um Departamento_ID aleatório entre 1 e 5
;

-- Gerar dados aleatórios para a tabela Departamento
INSERT INTO Departamento (Departamento_ID, Nome, Chefe_ID)
SELECT 
    generate_series(1, 5) AS Departamento_ID, -- Gera números de departamento sequenciais
    'Departamento ' || generate_series(1, 5) AS Nome, -- Gera nomes de departamento sequenciais
    generate_series(1, 20) AS Chefe_ID -- Associa um Chefe_ID aleatório entre 1 e 20
;

-- Gerar dados aleatórios para a tabela Disciplina
INSERT INTO Disciplina (Disciplina_ID, Nome, Departamento_ID)
SELECT 
    generate_series(1, 20) AS Disciplina_ID, -- Gera números de disciplina sequenciais
    'Disciplina ' || generate_series(1, 20) AS Nome, -- Gera nomes de disciplina sequenciais
    floor(random() * 5) + 1 AS Departamento_ID -- Seleciona um Departamento_ID aleatório entre 1 e 5
;

-- Gerar dados aleatórios para a tabela Matriz_Curricular_Disciplina
INSERT INTO Matriz_Curricular_Disciplina (Semestre, Matriz_ID, Disciplina_ID)
SELECT 
    floor(random() * 2) + 1 AS Semestre, -- Gera um semestre aleatório entre 1 e 2
    floor(random() * 5) + 1 AS Matriz_ID, -- Seleciona uma Matriz_ID aleatória entre 1 e 5
    floor(random() * 20) + 1 AS Disciplina_ID -- Seleciona uma Disciplina_ID aleatória entre 1 e 20
;

-- Gerar dados aleatórios para a tabela Matricula
INSERT INTO Matricula (Matricula_ID, Semestre, Ano, RA, Disciplina_ID)
SELECT 
    generate_series(1, 1000) AS Matricula_ID, -- Gera números de matrícula sequenciais
    floor(random() * 2) + 1 AS Semestre, -- Gera um semestre aleatório entre 1 e 2
    2020 + floor(random() * 5)::int AS Ano, -- Gera anos entre 2020 e 2024
    floor(random() * 100) + 100001 AS RA, -- Seleciona um RA aleatório entre 100001 e 100100
    floor(random() * 20) + 1 AS Disciplina_ID -- Seleciona uma Disciplina_ID aleatória entre 1 e 20
;

-- Gerar dados aleatórios para a tabela Orientacao_TCC
INSERT INTO Orientacao_TCC (Orientacao_ID, Titulo, RA, Professor_ID)
SELECT 
    generate_series(1, 50) AS Orientacao_ID, -- Gera números de orientação sequenciais
    'Título ' || generate_series(1, 50) AS Titulo, -- Gera títulos de orientação sequenciais
    floor(random() * 100) + 100001 AS RA, -- Seleciona um RA aleatório entre 100001 e 100100
    floor(random() * 20) + 1 AS Professor_ID -- Seleciona um Professor_ID aleatório entre 1 e 20
;

-- Gerar dados aleatórios para a tabela Notas
INSERT INTO Notas (Nota_ID, Nota, Matricula_ID)
SELECT 
    generate_series(1, 1000) AS Nota_ID, -- Gera números de nota sequenciais
    floor(random() * 11)::int AS Nota, -- Gera notas entre 0 e 10
    floor(random() * 1000) + 1 AS Matricula_ID -- Seleciona uma Matricula_ID aleatória entre 1 e 1000
;
