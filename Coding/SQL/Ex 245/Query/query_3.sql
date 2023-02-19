/* Elenco, con cognome e nome, degli studenti 
delle quinte classi.*/
SELECT nome, cognome
FROM Studente
WHERE classe = 'quinta';

/*Output
+---------+-------------+
| nome    | cognome     |
+---------+-------------+
| Valerio | Lalli       |
| Elena   | Laurenti    |
| Silvia  | Di Pasquale |
+---------+-------------+
3 rows in set (0.001 sec)
*/