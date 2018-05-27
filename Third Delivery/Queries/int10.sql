.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_key = ON;

-- 10. Selecionar todos os funcionários que vivem e trabalham na mesma cidade.
SELECT nome, morada
FROM pessoa, funcionario
WHERE pessoa.nif = funcionario.nif AND
	aeroporto IN
    (SELECT sigla
	FROM aeroporto, pessoa
	WHERE aeroporto.cidade = pessoa.morada)
ORDER BY nome;