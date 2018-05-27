.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- 5. Seleciona todos os passageiros portugueses que partem dos aeroportos ‘JFK’ e ‘LAX’
SELECT nome, nif
FROM pessoa
WHERE nacionalidade LIKE 'portuguesa' AND nif IN (
    SELECT nif
    FROM Bilhete
    WHERE nrVoo IN (
   	 SELECT nrVoo
   	 FROM partida
   	 WHERE sigla LIKE 'JFK' OR sigla LIKE 'LAX'
    )
);