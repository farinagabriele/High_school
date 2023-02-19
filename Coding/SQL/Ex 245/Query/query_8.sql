/*Cognome, nome e classe degli studenti che hanno 
ottenuto voti inferiori a 5 in una certa materia di 
cui viene fornita la descrizione, facendo comparire 
ciascuno studente una sola volta nell’elenco*/
SELECT DISTINCT Studente.cognome, Studente.nome, Studente.classe
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
INNER JOIN Materia ON Materia.cod_materia = Prova.cod_materia
WHERE Materia.descrizione = 'Matematica' AND Prova.voto < 5;

/*Output
+-------------+---------+--------+
| cognome     | nome    | classe |
+-------------+---------+--------+
| Lalli       | Valerio | quinta |
| Di Pasquale | Silvia  | quinta | 
+-------------+---------+--------+ 
2 rows in set (0.006 sec)
*/