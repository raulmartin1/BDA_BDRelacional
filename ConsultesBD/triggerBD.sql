--Garantir que no existeixen captures permeses amb longitud mínima per sobre de la
--longitud mitja de l’espècie en estat adult.

delimiter //
create trigger restriccio_longmin
before insert on Captures 
for each row
begin
if not( select count(*) from Especies E 
where NEW.nom_especie=SE.nom_popular and NEW.long_min > E.long_mitja)=NULL
then
signal SQLSTATE '45000' set MESSAGE_TEXT='La longitud minima de la especie supera la mitjana';
end if;
end//

delimiter;
