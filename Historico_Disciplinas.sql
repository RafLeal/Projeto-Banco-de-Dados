SELECT 
    PD.Professor_ID,
    P.Nome AS Professor,
    D.Disciplina_ID,
    D.Nome AS Disciplina,
    M.Semestre,
    M.Ano
FROM 
    Professor_Disciplina PD
    JOIN Professor P ON PD.Professor_ID = P.Professor_ID
    JOIN Disciplina D ON PD.Disciplina_ID = D.Disciplina_ID
    JOIN Matricula M ON D.Disciplina_ID = M.Disciplina_ID
WHERE 
    P.Professor_ID = :ID; -- Substitua :ID pelo ID do professor desejado
