-- Nome, cognome studenti interrogati nel mese di marzo dell'anno in corso in una
-- Materia di cui si conosce il nome
SELECT Studenti.nome, Studenti.cognome
FROM Studenti
INNER JOIN Prove ON studenti.matricola = Prove.matricola
WHERE Prove.Data_prova LIKE "2020-03*" AND Materia.NomeMateria = materiaX;