--Movimenti (ID, DataRegistrazione, C/D (credito/debito), Causale, Importo, NumeroConto)
CREATE TABLE Movimenti (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataRegistrazione DATE NOT NULL,
    CreditoDebito ENUM('credito', 'debito') DEFAULT 'debito' NOT NULL,
    Causale VARCHAR(50) NOT NULL,
    Importo DECIMAL(10,2) NOT NULL,
    NumeroConto INT,
    FOREIGN KEY (NumeroConto) REFERENCES Conti(NumeroConto)
);
