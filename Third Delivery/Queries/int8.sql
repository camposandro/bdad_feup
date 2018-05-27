.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_key = ON;

-- 8. Seleciona as companhias aéreas e o número de  aeronaves, ordenadas por marca.
SELECT iata, marca, count(*) AS numAeronaves
FROM aeronave, modelo
WHERE aeronave.modelo = modelo.nome
GROUP BY iata
ORDER BY iata;