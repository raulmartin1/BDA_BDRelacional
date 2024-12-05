--Trobar les zones sobre les quals no existeix cap vedat i que concedeixen el nombre de
--permisos més gran. Concretament es demana el número de zona, el nom de la massa i
--la data de vigència d’aquests permisos.

select P.num_zona, P.nom_massa, P.data_vigencia from Permisos P
where (P.num_zona, P.nom_massa) not in (select Z.num_zona, Z.nom_massa from Vedes V, Zones Z
where V.nom_massa=Z.nom_massa and V.num_zona=Z.num_zona)
and num_max >= All (select num_max from Permisos);
