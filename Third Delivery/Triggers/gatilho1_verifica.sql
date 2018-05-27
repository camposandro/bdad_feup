.mode columns
.headers on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

.print ''

SELECT count(*) AS 'Num Aeronave.matricula = CS-TTA'
FROM Aeronave
WHERE matricula = 'CS-TTA';

.print ''

.print '. Tentativa de inserção de uma aeronave com matricula CS-TTA'
INSERT INTO Aeronave(matricula, iata, modelo) VALUES ('CS-TTA', NULL, NULL);

.print ''

SELECT count(*) AS 'Novo num Aeronave.matricula = CS-TTA'
FROM Aeronave
WHERE matricula = 'CS-TTA';

.print ''
.print '. Observa-se que a aeronave não foi adicionada!'
.print ''