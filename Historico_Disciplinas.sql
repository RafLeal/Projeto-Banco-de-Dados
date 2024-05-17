-- Relatório de histórico de disciplinas ministradas por um professor
SELECT
    p.Nome AS Professor_Nome,
    d.Disciplina_ID,
    d.Nome AS Disciplina_Nome,
    m.Semestre,
    m.Ano
FROM
    Matricula m
JOIN
    Disciplina d ON m.Disciplina_ID = d.Disciplina_ID
JOIN
    Departamento dep ON d.Departamento_ID = dep.Departamento_ID
JOIN
    Professor p ON dep.Chefe_ID = p.Professor_ID
WHERE
    p.Professor_ID = 106 -- Substitua :Professor_ID pelo ID do professor que você deseja consultar
ORDER BY
    m.Ano, m.Semestre, d.Nome;
