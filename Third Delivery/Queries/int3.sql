.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 3. Seleciona o peso médio das bagagens de voos com chegada a Madrid
SELECT avg(peso) as PesoMedioBagagensMadrid
FROM bagagem, chegada
WHERE bagagem.nrVoo = chegada.nrVoo
AND sigla LIKE 'MAD';