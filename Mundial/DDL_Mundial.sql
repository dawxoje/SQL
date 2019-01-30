

DROP TABLE ANALISIS;

DROP TABLE FEDERATIVO;
DROP TABLE LABORATORIO;
DROP TABLE ARBITRAR;
DROP TABLE GOL;
DROP TABLE JUGAR;
DROP TABLE ARBITRO;
DROP TABLE PARTIDO;
DROP TABLE JUGADOR;
DROP TABLE EQUIPOS;


CREATE TABLE EQUIPOS
    (EQUIPO VARCHAR(50) NOT NULL,
    PAIS VARCHAR(30),
    SELECCIONADOR VARCHAR(50),
    CONSTRAINT PK_EQUIPOS PRIMARY KEY(EQUIPO));

    
CREATE TABLE JUGADOR
    (NOMBRE VARCHAR(60) NOT NULL,
    DIRECCION VARCHAR(150),
    PUESTO_HAB VARCHAR(2),
    FECHA_NAC DATE,   
    EQUIPO_JUGADOR VARCHAR(50) NOT NULL,
    CONSTRAINT PK_JUGADOR PRIMARY KEY(NOMBRE),
    CONSTRAINT JUGADOR_EQUIPO FOREIGN KEY(EQUIPO_JUGADOR) REFERENCES EQUIPOS (EQUIPO));
  
  
CREATE TABLE PARTIDO
    (EQUIPO_L VARCHAR(50) NOT NULL,
    EQUIPO_V VARCHAR(50) NOT NULL,
    FECHA DATE NOT NULL,
    HORA VARCHAR(8),
    SEDE VARCHAR(100),
    RESULTADO_L int,
    RESULTADO_V int,
    ASISTENCIA int,
    CONSTRAINT PK_PARTIDO PRIMARY KEY(EQUIPO_L,EQUIPO_V,FECHA),
    CONSTRAINT PARTIDO_EQUIPO_L FOREIGN KEY(EQUIPO_L) REFERENCES EQUIPOS (EQUIPO),
    CONSTRAINT PARTIDO_EQUIPO_V FOREIGN KEY(EQUIPO_V) REFERENCES EQUIPOS (EQUIPO));
  

CREATE TABLE ARBITRO
    (NOMBRE VARCHAR(60) NOT NULL,
    NACIONALIDAD VARCHAR(15),
    DIRECCION VARCHAR(150),
    CONSTRAINT PK_ARBITRO PRIMARY KEY(NOMBRE));
 
 
CREATE TABLE JUGAR
    (NOMBRE_JUG VARCHAR(60) NOT NULL,
    EQUIPO_L_PART VARCHAR(50) NOT NULL,
    EQUIPO_V_PART VARCHAR(50) NOT NULL,
    FECHA_PART DATE NOT NULL,
    MIN_JUGAR int,
    PUESTO_JUGAR VARCHAR(2),
    DORSAL int,    
    CONSTRAINT PK_JUGAR PRIMARY KEY (NOMBRE_JUG,EQUIPO_L_PART,EQUIPO_V_PART,FECHA_PART),
    CONSTRAINT JUGAR_JUGADOR FOREIGN KEY(NOMBRE_JUG) REFERENCES JUGADOR (NOMBRE),
    CONSTRAINT JUGAR_EQUIPO FOREIGN KEY(EQUIPO_L_PART,EQUIPO_V_PART,FECHA_PART) REFERENCES PARTIDO (EQUIPO_L,EQUIPO_V,FECHA));


CREATE TABLE GOL
    (MINUTO int NOT NULL,
    JUGADOR_GOL VARCHAR(60) NOT NULL, 
    EQUIPO_L_GOL  VARCHAR(50) NOT NULL,
    EQUIPO_V_GOL VARCHAR(50) NOT NULL,
    FECHA_GOL DATE NOT NULL,
    CONSTRAINT PK_GOL PRIMARY KEY (MINUTO, JUGADOR_GOL,EQUIPO_L_GOL,EQUIPO_V_GOL,FECHA_GOL),
    CONSTRAINT GOL_JUGAR FOREIGN KEY(JUGADOR_GOL,EQUIPO_L_GOL,EQUIPO_V_GOL,FECHA_GOL) REFERENCES JUGAR (NOMBRE_JUG,EQUIPO_L_PART,EQUIPO_V_PART,FECHA_PART));


CREATE TABLE ARBITRAR
    (NOMBRE_ARB VARCHAR(60) NOT NULL,
    EQUIPO_L_ARB VARCHAR(50) NOT NULL,
    EQUIPO_V_ARB VARCHAR(50) NOT NULL,
    FECHA_PAR_ARB DATE NOT NULL,
    FUNCION VARCHAR(20),
    CONSTRAINT PK_ARBITRAR PRIMARY KEY(NOMBRE_ARB,EQUIPO_L_ARB,EQUIPO_V_ARB,FECHA_PAR_ARB),
    CONSTRAINT ARBITRAR_ARBITRO FOREIGN KEY(NOMBRE_ARB) REFERENCES ARBITRO (NOMBRE),
    CONSTRAINT ARBITRAR_JUGAR FOREIGN KEY(EQUIPO_L_ARB,EQUIPO_V_ARB,FECHA_PAR_ARB) REFERENCES PARTIDO(EQUIPO_L,EQUIPO_V,FECHA));
  

CREATE TABLE LABORATORIO
    (CIF VARCHAR(9) NOT NULL,
    NOMBRE VARCHAR(50),
    DIRECCION VARCHAR(150),
    TELEFONO int,
    CONSTRAINT PK_LABORATORIO PRIMARY KEY(CIF));
 

CREATE TABLE FEDERATIVO
    (ID_TARJ int NOT NULL,
    NOMBRE VARCHAR(50),
    TELEFONO int,
    CONSTRAINT PK_FEDERATIVO PRIMARY KEY (ID_TARJ));

CREATE TABLE  ANALISIS
    (JUGADOR VARCHAR(60) NOT NULL,
    EQUIPO_L VARCHAR(50) NOT NULL,
    EQUIPO_V VARCHAR(50) NOT NULL,
    FECHA_PART DATE NOT NULL,
    CIF VARCHAR(9) NOT NULL,
    ID_TARJETA int NOT NULL,
    CONSTRAINT PK_ANALISIS PRIMARY KEY (JUGADOR,EQUIPO_L,EQUIPO_V,FECHA_PART,CIF),
    CONSTRAINT UK_ANALISIS UNIQUE(JUGADOR,EQUIPO_L,EQUIPO_V,FECHA_PART,ID_TARJETA),
    CONSTRAINT ANALISIS_JUGAR FOREIGN KEY(JUGADOR,EQUIPO_L,EQUIPO_V,FECHA_PART) REFERENCES JUGAR (NOMBRE_JUG,EQUIPO_L_PART,EQUIPO_V_PART,FECHA_PART),
    CONSTRAINT ANALISIS_LABORATORIO FOREIGN KEY(CIF) REFERENCES LABORATORIO (CIF),
    CONSTRAINT ANALISIS_FEDERATIVO FOREIGN KEY(ID_TARJETA) REFERENCES FEDERATIVO (ID_TARJ)); 
	
-- AÑADIDO AL DISEÑO ORIGINAL    
ALTER TABLE PARTIDO ADD 
	GRUPO VARCHAR(2),
	ADD EQUIPO_L_SIGUIENTE VARCHAR(50),
    ADD EQUIPO_V_SIGUIENTE VARCHAR(50),
    ADD FECHA_SIGUIENTE DATE,
	ADD CONSTRAINT CHECK_GRUPO CHECK (GRUPO IS NULL OR GRUPO IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'OC', 'CU', 'SE', 'FI')),
	ADD CONSTRAINT FK_PARTIDO_PARTIDO FOREIGN KEY (EQUIPO_L_SIGUIENTE, EQUIPO_V_SIGUIENTE, FECHA_SIGUIENTE)
	REFERENCES PARTIDO (EQUIPO_L, EQUIPO_V, FECHA);
    
    COMMENT ON COLUMN PARTIDO.GRUPO IS
    'EL CAMPO GRUPO PUEDE SER: A-H (Fase de Grupos) OC (Octavos) CU (Cuartos) SE (Semifinal) FI (Final)';