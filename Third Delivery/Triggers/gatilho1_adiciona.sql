.mode columns
.headers on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS VerificaAeronave
BEFORE INSERT ON Aeronave
FOR EACH ROW
WHEN EXISTS (
    SELECT matricula
    FROM Aeronave
    WHERE matricula = New.matricula
)
    BEGIN
        SELECT raise(ignore);
    END;