/*Per ciascuna azienda: denominazione, numero dei 
dipendenti, totale dei redditi.*/
SELECT Azienda.denominazione, COUNT(Dipendente.matricola) AS n_dip, SUM(Dipendente.reddito_lordo) AS tot_redditi
FROM Azienda
INNER JOIN Versamento ON Azienda.codice = Versamento.codice
INNER JOIN Dipendente ON Versamento.matricola = Dipendente.matricola
GROUP BY denominazione;

/* Output
+------------------+-------+-------------+
| denominazione    | n_dip | tot_redditi |
+------------------+-------+-------------+
| Accenture s.p.a. |     1 |    30285.90 |
| IBM s.p.a.       |     1 |    80985.90 |
| Microsoft s.p.a. |     3 |   101172.30 |
+------------------+-------+-------------+
3 rows in set (0.002 sec)
*/