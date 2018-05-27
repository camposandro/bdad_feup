.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''

SELECT nrVoo, horaPartida, horaChegada
FROM voo
WHERE nrVoo=16;

.print ''

.print '. Tentativa de alteração da hora de partida do voo para as 17 horas'

UPDATE Voo
SET horaPartida = 17
WHERE nrVoo = 16;

.print ''

SELECT nrVoo, horaPartida, horaChegada
FROM voo
WHERE nrVoo = 16;

.print ''
.print '. Observa-se que a hora de partida não foi alterada!'
.print ''