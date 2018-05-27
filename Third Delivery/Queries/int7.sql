.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 7. Seleciona o nome e nacionalidade de todos os funcionários estrangeiros
SELECT nome, nacionalidade 
FROM pessoa NATURAL JOIN funcionario
EXCEPT
SELECT nome, nacionalidade
FROM pessoa NATURAL JOIN funcionario
WHERE nacionalidade LIKE 'portuguesa';