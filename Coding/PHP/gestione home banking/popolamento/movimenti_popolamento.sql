-- Popolamento tabella Movimenti
-- Inserire 7 record
INSERT INTO Movimenti (DataRegistrazione, CreditoDebito, Causale, Importo, NumeroConto) 
VALUES ('2019-01-01', 'debito', 'imposta', -100.00, 1),
       ('2019-06-02', 'credito', 'Causale 2', +200.00, 1),
       ('2019-03-03', 'credito', 'imposte', +300.00, 1),
       ('2019-02-04', 'credito', 'Causale 4', +400.00, 1),
       ('2019-01-05', 'debito', 'Causale 5', -500.00, 1),
       ('2019-03-06', 'credito', 'imposta', +600.00, 1),
       ('2019-06-07', 'debito', 'Causale 7', -700.00, 1);
