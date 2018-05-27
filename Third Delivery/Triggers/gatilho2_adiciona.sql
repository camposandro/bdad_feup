.mode columns
.headers on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS ApagaVoo
AFTER DELETE ON Voo
FOR EACH ROW
    BEGIN
        DELETE FROM Bilhete WHERE nrVoo = Old.nrVoo;
        DELETE FROM Bagagem WHERE nrVoo = Old.nrVoo;
        DELETE FROM Partida WHERE nrVoo = Old.nrVoo;
        DELETE FROM Chegada WHERE nrVoo = Old.nrVoo;
        DELETE FROM Pilota WHERE nrVoo = Old.nrVoo;
        DELETE FROM Atribuido WHERE nrVoo = Old.nrVoo;
    END;