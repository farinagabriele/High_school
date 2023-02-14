/*Numero dei dipendenti e reddito medio per i dipendenti 
con una professione prefi ssata, raggruppati per azienda.*/
SELECT COUNT(Dipendente.matricola) AS n_dip, AVG(Dipendente.reddito_lordo) AS reddito_medio, Azienda.denominazione
FROM Dipendente
INNER JOIN Versamento ON Versamento.matricola = Dipendente.matricola
INNER JOIN Azienda ON Azienda.codice = Versamento.codice
WHERE Dipendente.professione = 'Computer Science Engineer'
GROUP BY Azienda.denominazione;
/* Output
+-------+---------------+------------------+
| n_dip | reddito_medio | denominazione    |
+-------+---------------+------------------+
|     2 |  40585.898438 | Microsoft s.p.a. |
+-------+---------------+------------------+
1 row in set (0.007 sec)
*/