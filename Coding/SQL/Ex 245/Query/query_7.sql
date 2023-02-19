/*Elenco delle prove sostenute dagli studenti in una 
materia, della quale viene fornito il codice, 
con cognome, nome e voto.*/
SELECT Studente.nome, Studente.cognome, Prova.voto
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
INNER JOIN Materia ON Materia.cod_materia = Prova.cod_materia
WHERE Materia.cod_materia = "0012";

/*Output
+---------+-------------+------+
| nome    | cognome     | voto |
+---------+-------------+------+
| Valerio | Lalli       | 4.00 |
| Silvia  | Di Pasquale | 2.00 |   
| Luca    | Montale     | 7.00 |   
+---------+-------------+------+   
3 rows in set (0.003 sec)
*/