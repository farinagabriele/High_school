-- Elenco delle materie per le quali non è stato valutato alcuno studente
SELECT Materie.* 
FROM Materie
LEFT OUTER JOIN Prove ON Materie.Codice = Prove.Codice
WHERE Prove.Matricola = NULL;