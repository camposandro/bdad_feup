.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 2. Seleciona voos ainda sem bilhetes vendidos
SELECT *
FROM voo
WHERE nrVoo NOT IN (
    SELECT nrVoo
    FROM bilhete
);