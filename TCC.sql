SELECT
    t.Titulo AS Titulo_TCC,
    p.Nome AS Nome_Professor_Orientador,
    a.RA,
    a.Nome AS Nome_Aluno
FROM
    TCC t
JOIN
    Professor p ON t.Professor_ID = p.Professor_ID
JOIN
    TCC_Aluno ta ON t.TCC_ID = ta.TCC_ID
JOIN
    Alunos a ON ta.RA = a.RA
