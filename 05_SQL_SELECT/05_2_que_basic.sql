/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    #industry Branche
    #sector Industriesektor
    CONCAT(sector, "|", industry) AS "Operations",
    CONCAT(yield, "|", dividend) AS "Dividenden"
FROM stocks.ccc 
LIMIT 10
#LIMIT 1
#LIMIT 200,10 -- offset
;
