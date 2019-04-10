
CREATE TABLE Aeropuerto(
	codigo INT NOT NULL,
	nombre VARCHAR(20),
	ciudad VARCHAR(20),
	pais VARCHAR(20),

	CONSTRAINT PK_Aeropurero PRIMARY KEY(codigo)
);

CREATE TABLE Director(
	dni VARCHAR(15) NOT NULL,
	nombre VARCHAR(20),
	direccion VARCHAR(50),
	pais VARCHAR(20),
	telefono VARCHAR(9),
	dni_controlado VARCHAR(15),
	cod_aeropuerto INT,

	CONSTRAINT PK_Director PRIMARY KEY(dni),
	CONSTRAINT FK_Director1 FOREIGN KEY(dni_controlado) REFERENCES Director(dni),
	CONSTRAINT FK_Director2 FOREIGN KEY(cod_aeropuerto) REFERENCES Aeropuerto(codigo)
);

CREATE TABLE Avion(
	codigo INT NOT NULL,
	compañia VARCHAR(20),
	modelo VARCHAR(20),
	capacidad INT,	
	
	CONSTRAINT PK_Avion PRIMARY KEY(codigo)	
);

CREATE TABLE Programa_Vuelo(
	num_vuelo INT NOT NULL,
	compañia VARCHAR(20),
	dia INT,
	cod_aero_despegar INT NOT NULL,
	cod_aero_aterrizar INT NOT NULL,

	CONSTRAINT PK_Avion PRIMARY KEY(num_vuelo) 
	CONSTRAINT FK_Avion1 FOREIGN KEY(cod_aero_despegar) REFERENCES Avion(codigo)
	CONSTRAINT FK_Avion2 FOREIGN KEY(cod_aero_aterrizar) REFERENCES Avion(codigo)
);

CREATE TABLE Volar(
	num_vuelo INT NOT NULL,
	cod_avion INT NOT NULL,
	plazas_ocupadas INT,
	
	CONSTRAINT PK_Volar PRIMARY KEY(num_vuelo, cod_avion),
	CONSTRAINT FK_VOLAR1 FOREIGN KEY(num_vuelo) REFERENCES Programa_Vuelo(num_vuelo),
	CONSTRAINT FK_VOLAR2 FOREIGN KEY(cod_avion) REFERENCES Avion(codigo)
);

CREATE TABLE Tener_Escala(
	num_vuelo INT NOT NULL,
	cod_avion INT NOT NULL,
	cod_aeropuerto INT NOT NULL,
	num_orden INT,
	pasajeros_suben INT,
	pasajeros_bajan INT,

	CONSTRAINT PK_Tener_Escala PRIMARY KEY(num_vuelo, cod_avion, cod_aeropuerto),
	CONSTRAINT FK_Tener_Escala1 FOREIGN KEY(num_vuelo) REFERENCES Programa_Vuelo(num_vuelo),
	CONSTRAINT FK_Tener_Escala2 FOREIGN KEY(cod_avion) REFERENCES Avion(codigo),
	CONSTRAINT FK_Tener_Escala3 FOREIGN KEY(cod_aeropuerto) REFERENCES Aeropuerto(codigo),
);

CREATE TABLE PASAJE(
	num_pasaporte VARCHAR(20) NOT NULL,
	nombre VARCHAR(20),
	direccion VARCHAR(30),
	nacionalidad VARCHAR(20),

	CONSTRAINT PK_Pasaje PRIMARY KEY(num_pasaporte)
);

CREATE TABLE Pasajeros(
	num_pasaporte INT NOT NULL,
	num_veces INT,
	
	CONSTRAINT PK_Pasajeros PRIMARY KEY(num_pasaporte),
	CONSTRAINT FK_Pasajeros FOREIGN KEY(num_pasaporte) REFERENCES Pasaje(num_pasaporte)	
);

CREATE TABLE Tripulacion(
	num_pasaporte INT NOT NULL,
	anyos_exp INT,

	CONSTRAINT PK_Tripulacion PRIMARY KEY(num_pasaporte),
	CONSTRAINT FK_Pasajeros FOREIGN KEY(num_pasaporte) REFERENCES Pasaje(num_pasaporte)	
);

CREATE TABLE Abordo(
	num_pasaporte INT NOT NULL,
	num_vuelo INT NOT NULL,
	cod_avion INT NOT NULL,

	CONSTRAINT PK_Abordo PRIMARY KEY(num_pasaporte, num_vuelo, cod_avion),
	CONSTRAINT FK_Abordo1 FOREIGN KEY(num_pasaporte) REFERENCES Pasaje(num_pasaporte),
	CONSTRAINT FK_Abordo2 FOREIGN KEY(num_vuelo) REFERENCES Programa_Vuelo(num_vuelo)	
);

CREATE TABLE Subir_Baja_Escala(
	num_pasaporte INT NOT NULL,
	num_vuelo INT NOT NULL,
	cod_avion INT NOT NULL,

	CONSTRAINT PK_Subir_Baja_Escala PRIMARY KEY(num_pasaporte, num_vuelo, cod_avion, cod_aeropuerto),
	CONSTRAINT FK_Subir_Baja_Escala1 FOREIGN KEY(num_pasaporte) REFERENCES Tener_Escala(num_pasaporte),
	CONSTRAINT FK_Subir_Baja_Escala2 FOREIGN KEY(num_vuelo) REFERENCES Tener_Escala(num_vuelo),
	CONSTRAINT FK_Subir_Baja_Escala3 FOREIGN KEY(cod_avion) REFERENCES Tener_Escala(cod_avion),
	CONSTRAINT FK_Subir_Baja_Escala4 FOREIGN KEY(cod_aeropuerto) REFERENCES Pasajeros(num_pasaporte)
);
