CREATE TABLE Prova(
    cod_prova CHAR(7),
    voto DECIMAL(4, 2) NOT NULL,
    data_prova DATE NOT NULL,
    matricola CHAR(5),
    cod_materia CHAR(4),
    PRIMARY KEY (cod_prova),
    FOREIGN KEY (matricola) REFERENCES Studente (matricola),
    FOREIGN KEY (cod_materia) REFERENCES Materia (cod_materia)
);