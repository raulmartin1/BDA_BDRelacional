--CREACIO de vistes

create view Funcionaris_Y_Persones(DNI,nom,ciutat) as select P.DNI, P.nom, PE.ciutat 
from Persones P, Pescadors PE
where P.DNI = PE.DNI and PE.DNI in (select DNI from funcionaris);

create view LongitudPromig20(nom_popular, nom_cientific, long_mitja) as 
select nom_popular, nom_cientific, long_mitja
from Especies
where long_mitja >20;
