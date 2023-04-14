/* Utente(ID, Cognome, Nome, Email, Telefono, 
   Citta, Provincia, Password, Newsletter) */
CREATE TABLE Utente (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cognome VARCHAR(50) NOT NULL,
    Nome VARCHAR(40) NOT NULL,
    Email VARCHAR(40),
    Telefono VARCHAR(20),
    Citta VARCHAR(30),
    Provincia CHAR(2),
    Password VARCHAR(255),
    Newsletter BOOLEAN NOT NULL
);