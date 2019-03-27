DROP TABLE Apuestas;
DROP TABLE Clientes;
DROP TABLE Participaciones;
DROP TABLE Carreras;
DROP TABLE Caballos;


CREATE TABLE Caballos(
	codCaballo varchar(4) NOT NULL,
	nombre varchar(20) NOT NULL,
	peso numeric(3)	CHECK(peso between 240 and 300),
	fechanacimiento date CHECK(TO_CHAR(fechanacimiento, 'YYYY')>'2000'),
	propietario varchar(25),
	nacionalidad varchar(20),
	
	CONSTRAINT pk_caballos PRIMARY KEY(codCaballo)
);
CREATE TABLE Carreras(
	codCarrera varchar(4) NOT NULL,
	fechayhora timestamp CHECK(TO_CHAR(fechayhora, 'HH24:MI')between '09:00' AND '14:30'),
	nombre varchar(20),
	importepremio numeric(6),
	apuestalimite numeric(7,2) CHECK(apuestalimite<20000),
	
	CONSTRAINT pk_carreras PRIMARY KEY(codCarrera)
);
CREATE TABLE Participaciones(
	codCaballo varchar(4) NOT NULL,
	codCarrera varchar(4) NOT NULL,
	dorsal numeric(2) NOT NULL,
	jockey varchar(20) NOT NULL,
	posicionfinal numeric(2) CHECK(posicionfinal>0),
	
	CONSTRAINT pk_participaciones PRIMARY KEY(codCaballo, codCarrera),
	CONSTRAINT fk1_participaciones FOREIGN KEY(codCaballo) REFERENCES Caballos(codCaballo),
	CONSTRAINT fk2_participaciones FOREIGN KEY(codCarrera) REFERENCES Carreras(codCarrera)
);
CREATE TABLE Clientes(
	dni varchar(10) NOT NULL,
	nombre varchar(20),
	nacionalidad varchar(20),
	
	CONSTRAINT pk_clientes PRIMARY KEY(dni)
);
CREATE TABLE Apuestas(
	dnicliente varchar(10) NOT NULL,
	codCaballo varchar(4) NOT NULL,
	codCarrera varchar(4) NOT NULL,
	importe numeric(6) DEFAULT(300) NOT NULL,
	tantoporuno numeric(6,2) CHECK(tantoporuno>1),
	
	CONSTRAINT pk_apuestas PRIMARY KEY(dnicliente, codCaballo, codCarrera),
	CONSTRAINT fk1_apuestas FOREIGN KEY(dnicliente) REFERENCES Clientes(dni),
	CONSTRAINT fk2_apuestas FOREIGN KEY(codCaballo) REFERENCES Caballos(codCaballo),
	CONSTRAINT fk3_apuestas FOREIGN KEY(codCarrera) REFERENCES Carreras(codCarrera)	
);