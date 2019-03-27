-- Database: Profesores

-- DROP DATABASE "Profesores";
--drop table imparte;
--drop table asignaturas;
--drop table profesores;

CREATE table Profesores(
dni varchar(10),
nombre varchar(40),
categoria char(4),
ingreso date,
constraint pk_profesores primary key(dni)	
);

create table Asignaturas(
codigo char(5),
descripcion varchar(35),
creditos numeric(3,1),
creditosp numeric(3,1),
constraint pk_asignaturas primary key(codigo)	
);

create table Imparte(
dni varchar(10),
asignatura char(5),
constraint pk_imparte primary key(dni, asignatura),
constraint fk_imparte_profesores foreign key (dni) references Profesores (dni),
constraint fk_imparte_asignaturas foreign key (asignatura) references Asignaturas (codigo)
);