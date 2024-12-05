--Proces d'ESBORRAT
--Esborra totes les multes que corresponguin a pescadors que tinguin un nombre mes petit o
--igual de multes que el pescador amb DNI 98765435.

delete from Multes where infractor in (select infractor from Multes
having count(*) <= (select count(*) from Multes where infractor='98765435')
)