CREATE TABLE Dipendente (matricola CHAR(5),
                         cognome VARCHAR(50) NOT NULL,
                         nome VARCHAR(40) NOT NULL,
                         l_nascita VARCHAR(30),
                         data_nascita DATE,
                         n_fam INT,
                         reddito_lordo FLOAT(8,2),
                         totTratt FLOAT(8,2),
                         professione VARCHAR(30) NOT NULL,
                         PRIMARY KEY(matricola));
                         