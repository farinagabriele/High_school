/*Elenco dei voti ottenuti da uno studente di cui si 
conosce il codice.*/
SELECT Prova.*
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
WHERE Studente.matricola  = 'A0012';

/*Output
+-----------+------+------------+-----------+-------------+
| cod_prova | voto | data_prova | matricola | cod_materia |
+-----------+------+------------+-----------+-------------+
| AD00231   | 4.00 | 2023-01-20 | A0012     | 0012        |
+-----------+------+------------+-----------+-------------+
1 row in set (0.017 sec)
*/