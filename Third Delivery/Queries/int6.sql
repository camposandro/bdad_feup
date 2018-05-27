.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 6. Seleciona o nome e cargo dos funcionários do aeroporto BCN, ordenados por cargo
SELECT nome, cargo
FROM pessoa NATURAL JOIN funcionario
WHERE aeroporto LIKE 'BCN'
ORDER BY cargo;