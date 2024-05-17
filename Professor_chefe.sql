SELECT
    p.Nome AS Nome_Professor,
    d.Nome AS Nome_Departamento
FROM
    Professor p
JOIN
    Departamento d ON p.Professor_ID = d.Chefe_ID
