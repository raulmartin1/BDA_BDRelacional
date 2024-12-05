--Realitza una consulta que doni com a resultat totes les dades de totes les espècies que
--habiten només al riu Ara

select * from Especies where nom_popular in (select nom_especie from Habitats 
where massa_aigua = 'Riu Ara');
