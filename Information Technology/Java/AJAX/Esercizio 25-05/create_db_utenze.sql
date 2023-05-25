CREATE DATABASE utenze;
USE utenze;
CREATE TABLE Utenti(
    IDUtente INT,
    Nome VARCHAR(50),
    Cognome VARCHAR(50),
    Indirizzo VARCHAR(50),
    Citta VARCHAR(50),
    PRIMARY KEY (IDUtente)
);

INSERT INTO Utenti VALUES
    (1, "MARIO", "BIANCHI", "VIA PARIGI 12", "ROMA"),
    (2, "PAOLO", "ROSSI", "CORSO BUENOS AIRES 120", "MILANO"),
    (3, "LUCA", "VERDI", "VIALE KENNEDY 143", "TORINO"),
    (4, "MARCO", "GIALLI", "VIALE JONIO 23", "GENOVA");