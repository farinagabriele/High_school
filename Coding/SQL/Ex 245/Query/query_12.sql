/*Numero degli studenti di una classe.*/
SELECT COUNT(Studente.matricola) AS num_studenti
FROM Studente
WHERE classe = 'quinta' AND sezione = 'H';

/*Output
+--------------+
| num_studenti |
+--------------+
|            1 |
+--------------+
1 row in set (0.004 sec)
*/