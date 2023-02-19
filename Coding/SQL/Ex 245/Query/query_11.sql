/*Media dei voti di Inglese di uno studente 
di cui si conosce il nome*/
SELECT AVG(Prova.voto) AS media_voti
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
INNER JOIN Materia ON Materia.cod_materia = Prova.cod_materia
WHERE Materia.descrizione = 'Inglese' AND Studente.nome = 'Marco';

/*Output
+------------+
| media_voti |
+------------+
|   3.000000 |
+------------+
1 row in set (0.011 sec)
*/