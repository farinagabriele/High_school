CREATE TABLE Studente(
    matricola CHAR(5),
    nome VARCHAR(40) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    data_nascita DATE,
    citta_nascita VARCHAR(30),
    indirizzo VARCHAR(40),
    classe VARCHAR(10) NOT NULL,
    sezione CHAR(1),
    PRIMARY KEY (matricola)
);