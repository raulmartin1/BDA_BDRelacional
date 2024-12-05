drop database BD_PESCA;
create database BD_PESCA;
use BD_PESCA;

create table Masses_aigua (
  nom_massa varchar(50) not null,
  constraint pk_nommassa primary key (nom_massa)
);

create table Rius (
  nom_riu varchar(50), 
  constraint pk_nomriu primary key (nom_riu),
  constraint fk_nomriu foreign key (nom_riu) references Masses_aigua(nom_massa),
  longitud decimal,
  afluent varchar(50),
  constraint fk_afluent foreign key (afluent) references Rius(nom_riu)
);
  
create table Pantans (
  nom_panta varchar(50),
  constraint pk_nompanta primary key (nom_panta),
  constraint fk_nompanta foreign key (nom_panta) references Masses_aigua(nom_massa),
  riu varchar (50),
  constraint fk_riu foreign key (riu) references Rius(nom_riu),
  volum decimal
);

create table Estanys (
nom_estany varchar(50), 
constraint pk_nomestany primary key (nom_estany),
constraint fk_nomestany foreign key (nom_estany) references Masses_aigua(nom_massa)
);

create table Zones (
num_zona int not null, 
nom_massa varchar(50) not null, 
constraint pk_zones primary key (num_zona, nom_massa),
constraint fk_nommassa foreign key (nom_massa) references Masses_aigua(nom_massa),
municipi varchar(50) not null,
limit_superior decimal not null,
limit_inferior decimal not null
);

create table Vedes (
num_zona int,
constraint pk_vedes primary key (num_zona, nom_massa),
constraint fk_vedes foreign key (num_zona) references Zones(num_zona),
nom_massa varchar(50),
constraint fk_nommassa_vedes foreign key (nom_massa) references Zones(nom_massa),
data_inici_veda date
);

create table Lliures (
num_zona int, 
constraint pk_lliures primary key (num_zona, nom_massa),
constraint fk_lliures foreign key (num_zona, nom_massa) references Zones(num_zona, nom_massa),
nom_massa varchar(50), 
data_darrera_repoblacio date
);

create table Controlades (
num_zona int,
constraint pk_controlades primary key (num_zona, nom_massa),
constraint fk_controlades foreign key (num_zona, nom_massa) references Zones(num_zona, nom_massa),
nom_massa varchar(50)
);

create table Sense_mort (
num_zona int,
constraint pk_sensemort primary key (num_zona, nom_massa),
constraint fk_sensemort foreign key (num_zona, nom_massa) references Controlades(num_zona, nom_massa),
nom_massa varchar(50),
poble_proper varchar(50)
);

create table Amb_mort (
num_zona int,
constraint pk_ambmort primary key (num_zona, nom_massa),
constraint fk_ambmort foreign key (num_zona, nom_massa) references Controlades(num_zona, nom_massa),
nom_massa varchar(50)
);

create table Regim_normal(
num_zona int,
constraint pk_regimnormal primary key (num_zona, nom_massa),
constraint fk_regimnormal foreign key (num_zona, nom_massa) references Amb_mort(num_zona, nom_massa),
nom_massa varchar(50)
);

create table Societat_gestora (
nom_societat varchar(50) not null,
constraint pk_nomsocietat primary key (nom_societat),
responsable varchar(50) not null 
);

create table Esportives (
num_zona int not null,
constraint pk_esportives primary key (num_zona, nom_massa, societat_gestora),
constraint fk_esportibes foreign key (num_zona, nom_massa) references Amb_mort(num_zona, nom_massa),
nom_massa varchar(50) not null,
societat_gestora varchar(50) not null,
constraint fk_societatgestora foreign key (societat_gestora) references Societat_gestora(nom_societat)
);

create table Especies (
nom_popular varchar(50) not null,
constraint pk_nompopular primary key (nom_popular),
nom_cientific varchar(50) not null unique,
long_mitja decimal
);

create table Dates (
dataa date,
constraint pk_data primary key (dataa)
);

create table Persones (
DNI varchar(50),
constraint pk_persones primary key (DNI),
nom varchar (50)
);

create table Funcionaris(
DNI varchar(50),
constraint pk_funcionaris primary key (DNI),
constraint fk_funcionaris foreign key (DNI) references Persones(DNI),
nss int unique,
sou decimal
);

create table Pescadors (
DNI varchar(50) not null,
constraint pk_prescadors primary key (DNI),
constraint fk_pescadors foreign key (DNI) references Persones(DNI),
carrer varchar(50) not null,
ciutat varchar(50) not null,
comunitat varchar(50) not null 
);

create table Licencies (
referencia int not null,
constraint pk_referencia primary key (referencia),
titular varchar(50) not null,
constraint fk_titular foreign key (titular) references Pescadors(DNI),
import decimal not null,
dataa date not null
);

create table Habitats (
massa_aigua varchar(50) not null,
constraint pk_habitats primary key (massa_aigua, nom_especie),
constraint fk_habitatsaigua foreign key (massa_aigua) references Masses_aigua(nom_massa),
nom_especie varchar(50) not null,
constraint fk_habitatsespecie foreign key (nom_especie) references Especies(nom_popular),
index_poblacio decimal
);

create table Assignacions(
funcionari varchar(50),
constraint pk_assignacions primary key (num_zona, nom_massa, funcionari, data_inici),
constraint fk_funcionari foreign key (funcionari) references Funcionaris(DNI),
data_inici date,
constraint fk_datainici foreign key (data_inici) references Dates(dataa),
num_zona int,
constraint fk_assignacions foreign key (num_zona, nom_massa) references Zones(num_zona, nom_massa),
nom_massa varchar(50),
data_fi date
);

create table Permisos(
num_zona int,
constraint pk_permisos primary key (num_zona, nom_massa, data_vigencia),
constraint fk_permisos foreign key (num_zona, nom_massa) references Controlades(num_zona, nom_massa),
nom_massa varchar(50),
data_vigencia date,
constraint fk_datavigencia foreign key (data_vigencia) references Dates(dataa),
num_max int,
constraint restriccion_nummax check (num_max<=50) 
);

create table Captures (
num_zona int,
constraint pk_captures primary key (num_zona, nom_massa, nom_especie),
constraint fk_captures foreign key (num_zona, nom_massa) references Amb_mort(num_zona, nom_massa),
nom_massa varchar(50),
nom_especie varchar(50),
constraint fk_nomespecie foreign key (nom_especie) references Especies(nom_popular),
num_max int,
long_min decimal
);

create table Multes (
funcionari varchar(50),
constraint pk_multes primary key (funcionari, infractor, data_multa, num_zona, nom_massa),
constraint fk_multesfuncionari foreign key (funcionari) references Funcionaris(DNI),
infractor varchar(50),
constraint fk_infractor foreign key (infractor) references Pescadors(DNI),
data_multa date,
constraint fk_datamulta foreign key (data_multa) references Dates(dataa),
num_zona int,
constraint fk_multeszonaymassa foreign key (num_zona,nom_massa) references Zones(num_zona, nom_massa),
nom_massa varchar(50),
motiu varchar(50),
import decimal
);

