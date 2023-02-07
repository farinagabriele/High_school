/* Elenco degli studenti che hanno ottenuto valutazioni positive 
nell'ultimo trimestre con indicazione del nome della materia e 
del voto
*/
SELECT Studenti.*, Materie.NomeMateria, Prove.voto
FROM Studenti
INNER JOIN Prove ON Prove.matricola = Studenti.matricola
INNER JOIN Materie ON Prove.codice = Materie.codice
WHERE Prove.voto > 6 AND Prove.Data_Prova BETWEEN '2019-09-15' AND '2020-01-10';

/*Output:
+-----------+---------+-------------+------------------------+------------+-------------+------+
| Matricola | Nome    | Cognome     | Indirizzo              | Telefono   | NomeMateria | voto |
+-----------+---------+-------------+------------------------+------------+-------------+------+
| A1256     | Valerio | De Michelis | Via di Decima 24, Roma | 3214578965 | Informatica |    8 |
| D1456     | Pippo   | Laurenti    | Via Ostiense 8, Roma   | 3212456387 | Italiano    |    7 |
+-----------+---------+-------------+------------------------+------------+-------------+------+
2 rows in set (0.005 sec)
*/