CREATE TABLE Docente(
    cod_docente CHAR(5),
    nome VARCHAR(40) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    data_nascita DATE,
    citta_nascita VARCHAR(30),
    email VARCHAR(40),
    cod_materia CHAR(4),
    PRIMARY KEY (cod_docente),
    FOREIGN KEY (cod_materia) REFERENCES Materia (cod_materia)
);