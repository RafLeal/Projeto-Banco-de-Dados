-- Populando a tabela Alunos
INSERT INTO Alunos (RA, Nome)
SELECT 
    generate_series(1, 20) as RA, 
    'Aluno ' || generate_series(1, 20) as Nome;

-- Populando a tabela Professor
INSERT INTO Professor (Professor_ID, Nome)
SELECT 
    generate_series(1, 5) as Professor_ID, 
    'Professor ' || generate_series(1, 5) as Nome;

-- Populando a tabela Curso
INSERT INTO Curso (Curso_ID, Nome)
SELECT 
    generate_series(1, 3) as Curso_ID, 
    'Curso ' || generate_series(1, 3) as Nome;

-- Populando a tabela Departamento
INSERT INTO Departamento (Departamento_ID, Nome, Chefe_ID)
SELECT 
    generate_series(1, 3) as Departamento_ID, 
    'Departamento ' || generate_series(1, 3) as Nome, 
    (random() * 4 + 1)::int as Chefe_ID;

-- Populando a tabela Matriz_Curricular
INSERT INTO Matriz_Curricular (Matriz_ID, Ano_Implementacao, Curso_ID)
SELECT 
    generate_series(1, 3) as Matriz_ID, 
    2018 + generate_series(0, 2) as Ano_Implementacao, 
    generate_series(1, 3) as Curso_ID;

-- Populando a tabela Disciplina
INSERT INTO Disciplina (Disciplina_ID, Nome, Departamento_ID)
SELECT 
    generate_series(1, 10) as Disciplina_ID, 
    'Disciplina ' || generate_series(1, 10) as Nome, 
    (random() * 2 + 1)::int as Departamento_ID;

-- Populando a tabela Professor_Disciplina
INSERT INTO Professor_Disciplina (Professor_ID, Disciplina_ID)
SELECT P.Professor_ID, D.Disciplina_ID
FROM Professor P, Disciplina D
WHERE D.Disciplina_ID <= 2 * P.Professor_ID;

-- Populando a tabela Matricula
INSERT INTO Matricula (Matricula_ID, Semestre, Ano, RA, Disciplina_ID)
SELECT 
    generate_series(1, 20) as Matricula_ID, 
    (random() * 1 + 1)::int as Semestre, 
    (random() * 5 + 2018)::int as Ano, 
    generate_series(1, 20) as RA, 
    (random() * 9 + 1)::int as Disciplina_ID;

-- Populando a tabela Matriz_Curricular_Disciplina
INSERT INTO Matriz_Curricular_Disciplina (Semestre, Matriz_ID, Disciplina_ID)
SELECT 
    (random() * 1 + 1)::int as Semestre, 
    (random() * 2 + 1)::int as Matriz_ID, 
    generate_series(1, 10) as Disciplina_ID;

-- Populando a tabela Notas
INSERT INTO Orientacao_TCC (Orientacao_ID, Titulo, RA, RA2, Professor_ID)
SELECT 
    generate_series(1, 5) as Orientacao_ID,
    'Titulo ' || generate_series(1, 5) as Titulo,
    floor(random() * 20) + 1 as RA,
    floor(random() * 20) + 1 as RA2,
    floor(random() * 5) + 1 as Professor_ID;
