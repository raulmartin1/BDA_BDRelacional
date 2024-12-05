--Trobar totes les multes imposades en zones que actualment no tenen cap assignació
--activa. Més concretament, es vol saber el nom del funcionari que ha imposat la multa,
--el nom de l’infractor, el motiu pel qual s’ha imposat la multa i data d’imposició de la
--multa.

select M.funcionari, M.infractor, M.motiu, M.data_multa from Multes M
where not exists (from Assignacions A 
where M.num_zona=A.num_zona and M.nom_massa=A.nom_massa);