CREATE TABLE COMARQUES(
	nom_c varchar(20),
	provincia varchar(20),
	
	CONSTRAINT PK_COMARQUES PRIMARY KEY(nom_c)	
);

CREATE TABLE POBLACIONS(
	nom varchar(20),
	poblacio varchar(20),
	extensio point,
	altura float4,
	longitud int2,
	lat float4,
	llengua varchar(20)

	CONSTRAINT PK_POBLACIONS PRIMARY KEY(nom)	
);

CREATE TABLE INSTITUTS(
	
	codi varchar(4),
	nom varchar(20),
	adreca varchar(50),
	numero int2,
	altura float4,
	longitud int2,
	lat float4,
	llengua varchar(20)

	CONSTRAINT PK_INSTITUTS PRIMARY KEY(codi)	
);

ALTER TABLE POBLACIONS(
ADD COLUM nom_c varchar(20),
ADD CONSTRAINS FK_COMARQUES FOREING KEY(nom_c) REFERENCES COMARQUES(nom_c));

ALTER TABLE INSTITUTS(
	ADD COLUM localitat varchar(20),
	ADD CONSTRAINS FK_POBLACIONS FOREING KEY(localitat) REFERENCES POBLACIONS(nom);

