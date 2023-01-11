CREATE TABLE Prove(
    Numero INT AUTO_INCREMENT,
    Matricola CHAR(5),
    Codice INT,
    Data_prova DATE NOT NULL,
    Voto INT NOT NULL,
    TipoProva VARCHAR(20),
    PRIMARY KEY (Numero),
    FOREIGN KEY (Matricola) REFERENCES Studenti(Matricola),
    FOREIGN KEY (Codice) REFERENCES Materie(Codice)
);