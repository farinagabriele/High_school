CREATE TABLE Studenti (
    Matricola CHAR(5),
    Nome VARCHAR(40) NOT NULL,
    Cognome VARCHAR(40) NOT NULL,
    Indirizzo VARCHAR(50),
    Telefono CHAR(10),
    PRIMARY KEY (Matricola)
);