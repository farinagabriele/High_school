CREATE TABLE Versamento( id INT AUTO_INCREMENT,
                         importo FLOAT(8,2) NOT NULL,
                         data_versamento DATE NOT NULL,
                         periodo VARCHAR(20),
                         matricola CHAR(5),
                         codice CHAR(10),
                         PRIMARY KEY(id),
                         FOREIGN KEY(codice) REFERENCES Azienda(codice),
                         FOREIGN KEY(matricola) REFERENCES Dipendente(matricola));
                         