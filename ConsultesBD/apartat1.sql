--Trobar els funcionaris que no són pescadors i que no han posat cap multa a pescadors
--de Catalunya. Més concretament es demana el número de la seguretat social, el nom
--dels funcionaris, i el sou que cobren aquests funcionaris

select F.nss, P.nom, F.sou from Persones P, Funcionaris F
where F.DNI = P.DNI 
and P.DNI not in ( select DNI from Pescadors)
and P.DNI not in ( select M.funcionari from Pescadors P, Multes M
where P.comunitat = 'Catalunya' and M.infractor=P.DNI);


