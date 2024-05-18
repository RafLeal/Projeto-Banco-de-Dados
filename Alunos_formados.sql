SELECT 
    A.RA,
    A.Nome AS Aluno
FROM 
    Alunos A
WHERE
    NOT EXISTS (
        SELECT 1
        FROM Matricula M
        JOIN Notas N ON M.Matricula_ID = N.Matricula_ID
        JOIN Matriz_Curricular_Disciplina MCD ON M.Disciplina_ID = MCD.Disciplina_ID
        WHERE M.RA = A.RA AND N.Nota < 5
    ) 
    AND EXISTS (
        SELECT 1
        FROM Matricula M
        WHERE M.RA = A.RA 
		AND M.Ano = 2023 -- Substitua com o ano desejado
		AND M.Semestre = 2 -- Substitua com o semestre desejado
    );
