/* String-Funktionen */

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
    LINK: https://dev.mysql.com/doc/refman/5.6/en/string-functions.html
*/

-- CONCAT() / Verknuepfung "string" + "string" ....
/*
SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    CONCAT("Ops: ",sector," : ",industry) "Operation"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;
*/

-- UPPER() --> alles in Großbuchstaben
/*
SELECT
	ticker AS "SYM",
    UPPER(c_name) "Unternehmen"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;
*/


-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
/*
SELECT
	ticker AS "SYM",
    LOWER(c_name) "Unternehmen"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;
*/


-- LENGTH() / CHAR_LENGTH()--> String-Laenge
/*
SELECT
	ticker SYM,
    c_name Unternehmen,
    concat("Ops: ",sector," : ",industry) Operation,
    LENGTH(concat("Ops: ",sector,":",industry)) StrLen -- in Byte
    #CHAR_LENGTH(concat("Ops: ",sector,":",industry)) StrLen -- in Chars
FROM stocks.ccc
ORDER BY StrLen DESC
LIMIT 20;
*/
 

-- REPLACE() --> Ersetzen von Stringanteilen
/*
SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    #REPLACE(c_name,"Inc.","Incorporated") AS "Incorporated"
    REPLACE(c_name,"Corp.","Corporation") AS "Corporation"
FROM stocks.ccc
#WHERE c_name LIKE "%Inc."
WHERE c_name LIKE "%Corp."
LIMIT 20;
/*

-- TRIM() --> Trimmen vor/nach String (Whitespace) Siehe Link



