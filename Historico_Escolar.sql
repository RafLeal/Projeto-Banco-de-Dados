SELECT 
    D.Disciplina_ID AS Codigo_Disciplina,
    D.Nome AS Nome_Disciplina,
    M.Semestre,
    M.Ano,
    N.Nota
FROM 
    Matricula M
    JOIN Disciplina D ON M.Disciplina_ID = D.Disciplina_ID
    JOIN Notas N ON M.Matricula_ID = N.Matricula_ID
WHERE
    M.RA = :RA; -- Substitua :RA com o RA do aluno desejado
