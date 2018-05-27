.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER VerificaHora
BEFORE UPDATE OF horaPartida ON Voo
FOR EACH ROW
WHEN (new.horaPartida > new.horaChegada)
    BEGIN
        SELECT raise(ABORT, 'Restrição Hora partida < hora chegada violada!');
    END;
