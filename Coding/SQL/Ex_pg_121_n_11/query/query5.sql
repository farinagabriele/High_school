--  studenti che sono stati valutati nel tipo di prova “Pratica”
SELECT Studenti.*
FROM Studenti
INNER JOIN Prove ON Prove.Matricola = Studenti.Matricola
WHERE Prove.TipoProva = "Pratico";