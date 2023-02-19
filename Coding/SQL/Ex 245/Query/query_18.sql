/*Elenco alfabetico di tutti gli studenti con cognome, 
nome e numero delle prove sufficienti in una 
determinata materia.*/
SELECT Studente.cognome, Studente.nome, COUNT(Prova.cod_prova) AS n_prove_sufficienti
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
INNER JOIN Materia ON Materia.cod_materia = Prova.cod_materia
WHERE Prova.voto >= 6 AND Materia.descrizione = 'Matematica'
GROUP BY Studente.cognome, Studente.nome
ORDER BY Studente.cognome ASC, Studente.nome ASC; 

/*Output
+-------------+--------+---------------------+
| cognome     | nome   | n_prove_sufficienti |
+-------------+--------+---------------------+
| Di Pasquale | Silvia |                   1 |
| Montale     | Luca   |                   1 |
+-------------+--------+---------------------+
2 rows in set (0.012 sec)
*/