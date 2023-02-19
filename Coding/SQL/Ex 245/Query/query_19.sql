/*Elenco dei cognomi e nomi degli studenti di una 
certa classe con il numero delle prove con voto 
inferiore a 5 di ciascuno studente.*/
SELECT Studente.cognome, Studente.nome, COUNT(Prova.cod_prova) AS n_prove_inf_a_5
FROM Studente
INNER JOIN Prova ON Prova.matricola = Studente.matricola
WHERE Studente.classe = 'quinta' AND Studente.sezione = 'H' AND Prova.voto < 5
GROUP BY Studente.cognome, Studente.nome;

/*Output
+---------+---------+-----------------+
| cognome | nome    | n_prove_inf_a_5 |
+---------+---------+-----------------+
| Lalli   | Valerio |               1 |
+---------+---------+-----------------+
1 row in set (0.003 sec)
*/