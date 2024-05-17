  -- Gerar dados aleatórios para a tabela Alunos 
INSERT INTO Alunos (RA, Nome)
SELECT 
    generate_series(1000, 1019) as RA, -- Gera RA de 1000 a 1019
    'Aluno ' || generate_series(1, 50) as Nome -- Gera nomes de Aluno 1 a 50

  -- Gerar dados aleatórios para a tabela Professor 
INSERT INTO Professor (Professor_ID, Nome)
SELECT 
    generate_series(1000, 1019) as Professor_ID, -- Gera Professor_ID de 1000 a 1019
    'Professor ' || generate_series(1, 20) as Nome -- Gera nomes de Professor 1 a 20

  -- Gerar dados aleatórios para a tabela Curso 
INSERT INTO Curso (Curso_ID, Nome)
SELECT 
    generate_series(1, 5) as Curso_ID, -- Gera Curso_ID de 1 a 5
    'Curso ' || generate_series(1, 5) as Nome; -- Gera nomes de Curso 1 a 5

  -- Gerar dados aleatórios para a tabela Orientacao_TCC
INSERT INTO Orientacao_TCC (Orientacao_ID, Titulo, RA, Professor_ID)
SELECT 
    generate_series(1, 50) as Orientacao_ID, -- Gera Orientacao_ID de 1 a 50
    'TCC ' || generate_series(1, 50) as Titulo, -- Gera títulos de TCC 1 a 50
    FLOOR(random() * 20) + 1000 as RA, -- Gera RA de 1000 a 1019
    FLOOR(random() * 20) + 1000 as Professor_ID -- Gera Professor_ID de 1000 a 1019

  -- Gerar dados aleatórios para a tabela Departamento 
INSERT INTO Departamento (Departamento_ID, Nome, Chefe_ID)
SELECT 
    generate_series(1, 5) as Departamento_ID, -- Gera Departamento_ID de 1 a 5
    'Departamento ' || generate_series(1, 5) as Nome, -- Gera nomes de Departamento 1 a 5
    FLOOR(random() * 20) + 1000 as Chefe_ID -- Gera Chefe_ID de 1000 a 1019

  -- Gerar dados aleatórios para a tabela TCC
INSERT INTO TCC (TCC_ID, Titulo, Professor_ID)
SELECT 
    generate_series(1, 50) as TCC_ID, -- Gera TCC_ID de 1 a 50
    'TCC ' || generate_series(1, 50) as Titulo, -- Gera títulos de TCC 1 a 50
    FLOOR(random() * 20) + 1000 as Professor_ID -- Gera Professor_ID de 1000 a 1019

  -- Gerar dados aleatórios para a tabela TCC_Aluno
INSERT INTO TCC_Aluno (RA, TCC_ID)
SELECT 
    FLOOR(random() * 20) + 1000 as RA, -- Gera RA de 1000 a 1019
    generate_series(1, 50) as TCC_ID -- Gera TCC_ID de 1 a 50

  -- Gerar dados aleatórios para a tabela Matriz_Curricular
INSERT INTO Matriz_Curricular (Matriz_ID, Ano_Implementacao, Curso_ID)
SELECT 
    generate_series(1, 5) as Matriz_ID, -- Gera Matriz_ID de 1 a 5
    FLOOR(random() * 5) + 2017 as Ano_Implementacao, -- Gera Ano de implementação entre 2017 e 2021
    generate_series(1, 5) as Curso_ID -- Gera Curso_ID de 1 a 5

  -- Gerar dados aleatórios para a tabela Disciplina
INSERT INTO Disciplina (Disciplina_ID, Nome, Departamento_ID)
SELECT 
    generate_series(1, 20) as Disciplina_ID, -- Gera Disciplina_ID de 1 a 20
    'Disciplina ' || generate_series(1, 20) as Nome, -- Gera nomes de Disciplina 1 a 20
    FLOOR(random() * 5) + 1 as Departamento_ID -- Gera Departamento_ID de 1 a 5

  -- Gerar dados aleatórios para a tabela Matricula
INSERT INTO Matricula (Matricula_ID, Semestre, Ano, RA, Disciplina_ID)
SELECT 
    generate_series(1, 200) as Matricula_ID, -- Gera Matricula_ID de 1 a 200
    FLOOR(random() * 2) + 1 as Semestre, -- Gera Semestre entre 1 e 2
    FLOOR(random() * 5) + 2017 as Ano, -- Gera Ano entre 2017 e 2021
    FLOOR(random() * 20) + 1000 as RA, -- Gera RA de 1000 a 1019
    FLOOR(random() * 20) + 1 as Disciplina_ID -- Gera Disciplina_ID de 1 a 20

  -- Gerar dados aleatórios para a tabela Matriz_Curricular_Disciplina
INSERT INTO Matriz_Curricular_Disciplina (Semestre, Matriz_ID, Disciplina_ID)
SELECT
    generate_series(1, 5) as Matriz_ID, -- Gera Matriz_ID de 1 a 5
    generate_series(1, 20) as Disciplina_ID, -- Gera Disciplina_ID de 1 a 20
    FLOOR(random() * 2) + 1 as Semestre -- Gera Semestre entre 1 e 2

  -- Gerar dados aleatórios para a tabela Notas
INSERT INTO Notas (Nota_ID, Nota, Matricula_ID)
SELECT 
    generate_series(1, 200) as Nota_ID, -- Gera Nota_ID de 1 a 200
    FLOOR(random() * 100) as Nota, -- Gera Nota entre 0 e 100
    generate_series(1, 200) as Matricula_ID -- Gera Matricula_ID de 1 a 200
