--Proces de MODIFICACIO
--Realitza un augment del 5% en el sou dels funcionaris, pero nomes d'aquells funcionaris
--pels quals existeixin mes de dues assignacions (vigents o no) a les diferents zones
--establertes per la comunitat.

start transaction;

update Funcionaris
set sou=sou*1.05
where exists (select funcionari from Assignacions 
group by funcionari having count(*) > 2 );

commit;
