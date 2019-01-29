CREATE TABLE Profesores(
	dni varchar(10) NOT NULL,
	nombre varchar(40),
	categoria varchar(4),
	ingreso date,
	
	CONSTRAINT pk_profesores PRIMARY KEY(dni)
);

CREATE TABLE Asignaturas(
	codigo varchar(5) NOT NULL,
	descripcion varchar (35),
	creditos numeric(3,1),
	creditosp numeric(3,1),
	
	CONSTRAINT pk_asignaturas PRIMARY KEY(codigo)
);

CREATE TABLE Imparte(
	dni varchar(10) NOT NULL,
	asignatura varchar(5) NOT NULL,
	
	CONSTRAINT pk_imparte PRIMARY KEY(dni, asignatura),
	CONSTRAINT fk1_imparte FOREIGN KEY(dni) REFERENCES Profesores(dni),
	CONSTRAINT fk2_imparte FOREIGN KEY(asignatura) REFERENCES Asignaturas(codigo)
);