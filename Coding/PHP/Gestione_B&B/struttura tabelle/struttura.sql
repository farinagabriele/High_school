/* Struttura (COD_STRUTTURA, nome, località, provincia, 
   indirizzo, telefono, email, foto, prezzo_per_notte, COD_CAT,
   COD_REG) */
CREATE TABLE Struttura (
    cod_struttura INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    localita VARCHAR(40) NOT NULL,
    provincia CHAR(2) NOT NULL,
    indirizzo VARCHAR(40),
    telefono VARCHAR(20),
    email VARCHAR(40),
    foto BLOB,
    prezzo_per_notte REAL(8,2),
    cod_cat INT,
    cod_reg CHAR(5),
    PRIMARY KEY (cod_struttura),
    FOREIGN KEY (cod_cat) REFERENCES Categoria(cod_cat),
    FOREIGN KEY (cod_reg) REFERENCES Regione (cod_reg)
);
