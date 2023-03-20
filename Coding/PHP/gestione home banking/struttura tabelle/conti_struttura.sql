--Conti (NumeroConto, Cognome, Nome, DataNascita, CodiceFiscale)
CREATE TABLE Conti (
    NumeroConto INT AUTO_INCREMENT PRIMARY KEY,
    Cognome VARCHAR(50) NOT NULL,
    Nome VARCHAR(40) NOT NULL,
    DataNascita DATE NOT NULL,
    CodiceFiscale VARCHAR(16) NOT NULL,
    password CHAR(255) NOT NULL
);