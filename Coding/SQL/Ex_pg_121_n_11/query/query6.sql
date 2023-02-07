/* Cognome degli  studenti che hanno ottenuto valutazioni 
   insufficienti  */
SELECT Cognome
FROM studenti
INNER JOIN Prove ON studenti.matricola = Prove.matricola
WHERE Prove.voto < 6;

/* Output:
+---------+
| Cognome |
+---------+
| Rossi   |
+---------+
1 row in set (0.089 sec)
*/