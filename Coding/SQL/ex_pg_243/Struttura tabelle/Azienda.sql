CREATE TABLE Azienda( codice CHAR(10),
                      denominazione VARCHAR(40) NOT NULL,
                      comune VARCHAR(30),
                      indirizzo VARCHAR(40),
                      settore VARCHAR(30) NOT NULL,
                      PRIMARY KEY(codice));