.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_key = ON;

-- 9. Selecionar todas as partidas de todos os aeroportos no dia 11/04/2018.
SELECT distinct ap.nome, comp.nome, voo.nrvoo, horapartida
FROM aeroporto, companhiaaerea comp, aeroporto ap, partida, voo, atribuido, aeronave
WHERE partida.nrvoo = voo.nrvoo AND
    ap.sigla = partida.sigla AND
    voo.nrvoo = atribuido.nrvoo AND
    atribuido.matricula = aeronave.matricula AND
    aeronave.iata = comp.iata AND
    voo.data LIKE '11/04/2018'
ORDER BY ap.nome, comp.nome, horapartida;