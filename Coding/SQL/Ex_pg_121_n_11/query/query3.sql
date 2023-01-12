-- valutazioni di uno studente di cui si conosce 
-- il nominativo (elenco con: nome materia, data, voto, tipo prova)
SELECT Materia.NomeMateria, Prove.Data_prova, Prove.Voto, Prove.TipoProva
FROM Materia
INNER JOIN Prove ON Materia.Codice = Prove.Codice
INNER JOIN Studenti ON Studenti.Matricola = Prove.Matricola
WHERE Studenti.Nome = NomeX;