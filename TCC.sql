SELECT 
    O.Orientacao_ID,
    O.Titulo,
    A1.Nome AS Aluno1,
    A2.Nome AS Aluno2,
    P.Nome AS Professor_Orientador
FROM 
    Orientacao_TCC O
    JOIN Alunos A1 ON O.RA = A1.RA
    JOIN Alunos A2 ON O.RA2 = A2.RA AND A1.RA <> A2.RA
    JOIN Professor P ON O.Professor_ID = P.Professor_ID;
