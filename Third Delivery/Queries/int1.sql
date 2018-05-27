.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 1. Seleciona aeronaves a operar voos no dia 12/04/2018
SELECT nrVoo, matricula
FROM voo JOIN atribuido USING(nrVoo)
WHERE data LIKE '12/04/2018';