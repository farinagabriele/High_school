/* Miglior voto e peggior voto di uno studente di 
cui si conosce il codice.*/
SELECT MAX(Prova.voto) AS voto_migliore, MIN(Prova.voto) AS voto_peggiore
FROM Prova
INNER JOIN Studente ON Studente.matricola = Prova.matricola
WHERE Studente.matricola = 'G0318';

/*Output
+---------------+---------------+
| voto_migliore | voto_peggiore |  
+---------------+---------------+  
|          7.00 |          2.00 |  
+---------------+---------------+  
1 row in set (0.011 sec)
*/