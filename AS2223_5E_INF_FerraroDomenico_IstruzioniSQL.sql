
CREATE TABLE statistica
(
	codice INT NOT NULL PRIMARY KEY,
	cognome CHAR(30) NOT NULL,
	annoNascita INT NOT NULL,
	altezza INT NOT NULL,
	peso INT NOT NULL
);	

INSERT INTO statistica
VALUES(1,"Barbieri",1980,178,75);

INSERT INTO statistica
VALUES(2,"Bianchi",1985,180,82);

INSERT INTO statistica
VALUES(3,"Conti",1978,165,68);

INSERT INTO statistica
VALUES(4,"Fontana",2000,177,74);

INSERT INTO statistica
VALUES(5,"Galli",2005,190,89);

INSERT INTO statistica
VALUES(6,"Mancini",1997,185,87);

INSERT INTO statistica
VALUES(7,"Rossi",2001,187,90);

-- PUNTO 3

INSERT INTO statistica
VALUES(8,"Generali",1991,161,89);

INSERT INTO statistica
VALUES(9,"Simoncelli",2005,175,87);

INSERT INTO statistica
VALUES(10,"Verdi",1967,200,90);

-- PUNTO 4
ALTER TABLE statistica
ADD nazionalità CHAR(30);

-- PUNTO 5
DELETE
FROM statistica
WHERE codice=5;


-- PUNTO 6
UPDATE statistica
SET annoNascita=1981
WHERE codice=3;


-- PUNTO 7
UPDATE statistica
SET altezza=altezza+1;

-- PUNTO 8

ALTER TABLE statistica
DROP peso;


-- PUNTO 9(METTERE LA nazionalità ITALIANA A TUTTI)
UPDATE statistica
SET nazionalità="ITA"

-- PUNTO 10(CAMBIARE L'ANNO DI NASCITA A TUTTI QUELLI NATI PRIMA DEL 1980 IN 1980)
UPDATE statistica
SET annoNascita=1980
WHERE annoNascita<1978

-- PUNTO 11(AGGIUNGERE CAMPO PESO TIPO INT)
ALTER TABLE statistica
ADD peso INT;

-- PUNTO 13

ALTER TABLE statistica
MODIFY COLUMN peso DOUBLE;

-- PUNTO 14

UPDATE statistica
SET peso = altezza/10*5