--Realitza una consulta que doni com a resultat totes aquelles espècies que habiten
--simultàniament a totes les masses d’aigua de la comunitat. Més concretament es
--demana el nom científic i la longitud mitja en estat adult.

select nom_cientific, long_mitja from Especies
where nom_popular in (select nom_especie from Habitats 
group by nom_especie having count(massa_aigua) = (select count(*) from masses_aigua));

