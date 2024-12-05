insert into Masses_aigua(nom_massa) values ('Rio Tajo');
insert into Masses_aigua(nom_massa) values ('Mar Mediterraneo');
insert into Masses_aigua(nom_massa) values ('Lago del Valle');
insert into Masses_aigua(nom_massa) values ('Riu Ara');

insert into Zones(num_zona, nom_massa, municipi, limit_superior, limit_inferior) values(1 ,'Rio Tajo','Barcelona', 70.4, 23.6);
insert into Zones(num_zona, nom_massa, municipi, limit_superior, limit_inferior) values(3 ,'Mar Mediterraneo','Vilanova', 60.5, 12.3);
insert into Zones(num_zona, nom_massa, municipi, limit_superior, limit_inferior) values(2 ,'Lago del Valle','Vic', 80.2, 47.1);
insert into Zones(num_zona, nom_massa, municipi, limit_superior, limit_inferior) values(4 ,'Riu Ara','Calella',72.2, 43.1);

insert into Vedes(num_zona, nom_massa, data_inici_veda) values(1,'Rio Tajo', '23-02-2022');
insert into Vedes(num_zona, nom_massa, data_inici_veda) values(3,'Mar Mediterraneo', '15-08-2022');
insert into Vedes(num_zona, nom_massa, data_inici_veda) values(2,'Lago del Valle', '15-12-2022');


insert into Lliures(num_zona, nom_massa, data_darrera_repoblacio) values(1,'Rio Tajo', '12-01-1998');
insert into Lliures(num_zona, nom_massa, data_darrera_repoblacio) values(3,'Mar Mediterraneo', '12-01-1976');
insert into Lliures(num_zona, nom_massa, data_darrera_repoblacio) values(2,'Lago del Valle', '12-01-1989');

insert into Controlades(num_zona, nom_massa) values(1,'Rio Tajo');
insert into Controlades(num_zona, nom_massa) values(3,'Mar Mediterraneo');
insert into Controlades(num_zona, nom_massa) values(2,'Lago del Valle');

insert into Sense_mort(num_zona, nom_massa, poble_proper) values(1,'Rio Tajo', 'Segur de Calafell');
insert into Sense_mort(num_zona, nom_massa, poble_proper) values(3,'Mar Mediterraneo', 'Calafell');
insert into Sense_mort(num_zona, nom_massa, poble_proper) values(2,'Lago del Valle', 'Cunit');

insert into Amb_mort(num_zona, nom_massa) values(1,'Rio Tajo');
insert into Amb_mort(num_zona, nom_massa) values(3,'Mar Mediterraneo');
insert into Amb_mort(num_zona, nom_massa) values(2,'Lago del Valle');

insert into Regim_normal(num_zona, nom_massa) values(1,'Rio Tajo');
insert into Regim_normal(num_zona, nom_massa) values(3,'Mar Mediterraneo');
insert into Regim_normal(num_zona, nom_massa) values(2,'Lago del Valle');

insert into Esportives(num_zona, nom_massa, societat_gestora) values(1,'Rio Tajo', '360 CORA SGIIC');
insert into Esportives(num_zona, nom_massa, societat_gestora) values(3,'Mar Mediterraneo', 'A&G FONDOS');
insert into Esportives(num_zona, nom_massa, societat_gestora) values(2,'Lago del Valle', 'ABACO CAPITAL');

insert into Societat_gestora(nom_societat, responsable) values('360 CORA SGIIC', 'Alex Viro');
insert into Societat_gestora(nom_societat, responsable) values('A&G FONDOS', 'Juan Hilo');
insert into Societat_gestora(nom_societat, responsable) values('ABACO CAPITAL', 'Dani Perez');

insert into Especies(nom_popular, nom_cientific, long_mitja) values('Tiburon blanco', 'Carcgarodon carcharias', 23.56);
insert into Especies(nom_popular, nom_cientific, long_mitja) values('Tortuga marina', 'Tortus gonca', 14.6);
insert into Especies(nom_popular, nom_cientific, long_mitja) values('Pez espada', 'Pex espadus', 13.9);

insert into Dates(dataa) values ('06-12-2021');
insert into Dates(dataa) values ('06-12-2021');
insert into Dates(dataa) values ('26-03-2021');

insert into Persones(DNI, nom) values ('45643218-B', 'Paco Martinez');
insert into Persones(DNI, nom) values ('49374816-A', 'Pedro Suarez');
insert into Persones(DNI, nom) values ('48201485-E', 'Mario Neles');
insert into Persones(DNI, nom) values ('49953485-J', 'Juan Ternero');
insert into Persones(DNI, nom) values ('48249735-H', 'Raul Martin');
insert into Persones(DNI, nom) values ('44234245-D', 'Andres Chenio');

insert into Funcionaris(DNI, nss, sou) values ('45643218-B', 552871234, 1210.80);
insert into Funcionaris(DNI, nss, sou) values ('49374816-A', 552761934, 1410.22);
insert into Funcionaris(DNI, nss, sou) values ('48201485-E', 552881114, 1540.12);

insert into Pescadors(DNI, carrer, ciutat, comunitat) values('49953485-J', 'Carrer Mexic', 'Madrid', 'Madrid');
insert into Pescadors(DNI, carrer, ciutat, comunitat) values('48249735-H', 'Carrer Peru', 'Barcelona', 'Catalunya');
insert into Pescadors(DNI, carrer, ciutat, comunitat) values('44234245-D', 'Carrer Murcia', 'Tarragona', 'Catalunya');

insert into Licencies(referencia, titular, import, dataa) values(1, '49953485-J', 602.56, '23-02-2022');
insert into Licencies(referencia, titular, import, dataa) values(2, '48249735-H', 304.28, '12-12-2022');
insert into Licencies(referencia, titular, import, dataa) values(3, '44234245-D', 435.70, '07-05-2022');

insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Rio Tajo', 'Tiburon blanco', 26);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Mar Mediterraneo', 'Tortuga marina', 35);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Lago del Valle', 'Pez espada', 23);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Rio Ara', 'Pez Lapa', 23);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Mar Mediterraneo', 'Tiburon negro', 23);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Lago del Valle', 'Caballo de mar', 23);
insert into Habitats(massa_aigua, nom_especie, index_poblacio) values('Rio Tajo', 'Pez espada', 23);

insert into Assignacions(funcionari, data_inici, num_zona, nom_massa, data_fi) values('45643218-B', '12-06-2022', 1, 'Rio Tajo', '26-11-2023' );
insert into Assignacions(funcionari, data_inici, num_zona, nom_massa, data_fi) values('49374816-A', '25-09-2022' , 2, 'Lago del Valle', '12-06-2023');
insert into Assignacions(funcionari, data_inici, num_zona, nom_massa, data_fi) values('48201485-E', '02-08-2022', 3, 'Mar Mediterraneo', '15-11-2023');

insert into Permisos(num_zona, nom_massa, data_vigencia, num_max) values(1, 'Rio Tajo', '26-06-2023', 24);
insert into Permisos(num_zona, nom_massa, data_vigencia, num_max) values(2, 'Lago del Valle', '13-07-2023', 45);
insert into Permisos(num_zona, nom_massa, data_vigencia, num_max) values(3, 'Mar Mediterraneo', '07-11-2023', 32);

insert into Captures(num_zona, nom_massa, nom_especie, num_max, long_min) values(1, 'Rio Tajo', 'Tiburon blanco', 12 , 10.2 );
insert into Captures(num_zona, nom_massa, nom_especie, num_max, long_min) values(2, 'Lago del Valle' , 'Tortuga marina', 26, 8.6);
insert into Captures(num_zona, nom_massa, nom_especie, num_max, long_min) values(3, 'Mar Mediterraneo', 'Pez espada', 37 , 12.2);

insert into Multes(funcionari, infractor, data_multa, num_zona, nom_massa, motiu, import) values('45643218-B', '49953485-J', '12-05-2022' , 1 , 'Rio Tajo', 'Pesca ilegal', 200.00);
insert into Multes(funcionari, infractor, data_multa, num_zona, nom_massa, motiu, import) values('49374816-A', '48249735-H', '24-11-2022' , 2 , 'Lago del Valle', 'Canya ilegal', 300.00);
insert into Multes(funcionari, infractor, data_multa, num_zona, nom_massa, motiu, import) values('48201485-E', '44234245-D', '15-09-2022' , 3 , 'Mar Mediterraneo', 'Barca ilegal', 150.00);
