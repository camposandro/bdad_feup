.mode columns
.headers on

PRAGMA FOREIGN_KEYS=ON;

-- Elimina tabelas se existirem

DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS PASSAGEIRO;
DROP TABLE IF EXISTS BILHETE;
DROP TABLE IF EXISTS VOO;
DROP TABLE IF EXISTS AEROPORTO; 
DROP TABLE IF EXISTS COMPANHIAAEREA; 
DROP TABLE IF EXISTS AERONAVE;
DROP TABLE IF EXISTS MODELO;
DROP TABLE IF EXISTS MARCA;
DROP TABLE IF EXISTS PILOTO;
DROP TABLE IF EXISTS OPERA;
DROP TABLE IF EXISTS PARTIDA;
DROP TABLE IF EXISTS CHEGADA;
DROP TABLE IF EXISTS BAGAGEM;
DROP TABLE IF EXISTS PILOTA;
DROP TABLE IF EXISTS ATRIBUIDO;


--Criação das tabelas

CREATE TABLE PESSOA (
	nome TEXT NOT NULL,
	nif INTEGER PRIMARY KEY,
	dataNascimento TEXT NOT NULL,
	nacionalidade TEXT NOT NULL,
	morada TEXT,
	codPostal TEXT,
	telefone INTEGER UNIQUE
);

CREATE TABLE FUNCIONARIO (
	nif INTEGER PRIMARY KEY REFERENCES PESSOA NOT NULL,
	cargo TEXT NOT NULL,
	salario TEXT NOT NULL,
	aeroporto REFERENCES AEROPORTO NOT NULL
);

CREATE TABLE PASSAGEIRO (
	nif INTEGER PRIMARY KEY REFERENCES PESSOA NOT NULL
);

CREATE TABLE BILHETE (
	tipo INTEGER CHECK(tipo=1 or tipo=2 or tipo=3) NOT NULL,
	lugar TEXT NOT NULL,
	nif INTEGER REFERENCES PASSAGEIRO NOT NULL,
	nrVoo INTEGER REFERENCES VOO NOT NULL,
	PRIMARY KEY(lugar, nrVoo)
);

CREATE TABLE VOO (
	nrVoo INTEGER PRIMARY KEY,
	horaPartida INTEGER NOT NULL,
	horaChegada INTEGER NOT NULL,
	lotacao INTEGER CHECK(lotacao >= 0) NOT NULL,
	data TEXT NOT NULL,
	CHECK(horaPartida < horaChegada)
);

CREATE TABLE AEROPORTO (
	sigla TEXT PRIMARY KEY,
	nome TEXT,
	cidade TEXT
);

CREATE TABLE COMPANHIAAEREA (
	iata TEXT PRIMARY KEY,
	nome TEXT,
	pais TEXT
);

CREATE TABLE AERONAVE (
	matricula TEXT PRIMARY KEY,
	iata TEXT REFERENCES COMPANHIAAEREA NOT NULL,
	modelo TEXT REFERENCES MODELO NOT NULL
);

CREATE TABLE MODELO (
	nome TEXT PRIMARY KEY,
	marca TEXT REFERENCES MARCA NOT NULL,
	capacidade INTEGER CHECK(capacidade >= 0)
);

CREATE TABLE MARCA (
	nome TEXT PRIMARY KEY
);

CREATE TABLE PILOTO (
	nif INTEGER PRIMARY KEY REFERENCES FUNCIONARIO NOT NULL
);

CREATE TABLE PARTIDA (
	nrVoo INTEGER PRIMARY KEY REFERENCES VOO NOT NULL,
	sigla TEXT REFERENCES AEROPORTO NOT NULL
);

CREATE TABLE CHEGADA (
	nrVoo INTEGER PRIMARY KEY REFERENCES VOO NOT NULL,
	sigla TEXT REFERENCES AEROPORTO NOT NULL
);

CREATE TABLE BAGAGEM (
	nrVoo INTEGER NOT NULL,
	lugar TEXT NOT NULL,
	peso INTEGER CHECK(peso >= 0) NOT NULL,
	dimensoes TEXT,
	PRIMARY KEY(lugar, nrVoo),
	FOREIGN KEY(lugar, nrVoo) REFERENCES BILHETE
);

CREATE TABLE PILOTA (
	nrVoo INTEGER PRIMARY KEY REFERENCES VOO NOT NULL,
	nif INTEGER REFERENCES PILOTO NOT NULL
);

CREATE TABLE OPERA (
	iata TEXT REFERENCES COMPANHIAAEREA NOT NULL,
	sigla TEXT REFERENCES AEROPORTO NOT NULL,
	PRIMARY KEY (iata, sigla)
);

CREATE TABLE ATRIBUIDO (
	nrVoo INTEGER PRIMARY KEY REFERENCES VOO NOT NULL,
	matricula INTEGER REFERENCES AERONAVE NOT NULL
);