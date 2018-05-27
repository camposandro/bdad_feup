.mode columns
.headers on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

.print ''

.print '. Voo 1140'
SELECT *
FROM Voo
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Bagagem.nrVoo = 1140'
FROM Bagagem
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Partida.nrVoo = 1140'
FROM Partida
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Chegada.nrVoo = 1140'
FROM Chegada
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Pilota.nrVoo = 1140'
FROM Pilota
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Atribuido.nrVoo = 1140'
FROM Atribuido
WHERE nrVoo = 1140;

.print ''

.print '. Remoção do voo nr 1140'
DELETE FROM Voo where nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Voo.nrVoo = 1140'
FROM Voo
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Bagagem.nrVoo = 1140'
FROM Bagagem
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Partida.nrVoo = 1140'
FROM Partida
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Chegada.nrVoo = 1140'
FROM Chegada
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Pilota.nrVoo = 1140'
FROM Pilota
WHERE nrVoo = 1140;

.print ''

SELECT count(*) AS 'Num Atribuido.nrVoo = 1140'
FROM Atribuido
WHERE nrVoo = 1140;

.print ''
.print '. Verifica-se a remoção de todas as referências a esse voo!'
.print ''