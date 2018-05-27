.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 4. Seleciona a nacionalidade que predomina na profissão de piloto, e o nº respetivo
SELECT nacionalidade, max(nrPilotos) AS nrPilotos
FROM (
   SELECT nacionalidade, count(*) AS nrPilotos
   FROM funcionario NATURAL JOIN pessoa
   WHERE cargo LIKE 'Piloto'
   GROUP BY nacionalidade
);