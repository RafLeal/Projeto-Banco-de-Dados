SELECT
    a.Nome AS Aluno_Nome,
    d.Disciplina_ID,
    d.Nome AS Disciplina_Nome,
    m.Semestre,
    m.Ano,
    n.Nota AS Nota_Final
FROM
    Matricula m
JOIN
    Disciplina d ON m.Disciplina_ID = d.Disciplina_ID
JOIN
    Notas n ON m.Matricula_ID = n.Matricula_ID
JOIN
    Alunos a ON m.RA = a.RA
WHERE
    a.RA = 1018 -- Substitua :RA pelo RA do aluno que você deseja consultar
ORDER BY
    m.Ano, m.Semestre, d.Nome;
