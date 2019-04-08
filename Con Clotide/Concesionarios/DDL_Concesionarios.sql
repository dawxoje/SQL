DROP Table Ventas;
DROP Table Distribucion;
DROP Table Clientes;
DROP Table Concesionarios;
DROP Table Coches;
DROP Table Marcas;
--No funciona y por ello no he podido comprobar las consultas

Create Table Marcas(
    cif Varchar(8),
    nombre Varchar(20) Not Null,
    ciudad Varchar(20),
    Constraint PK_Marcas Primary Key(nombre)
);
Create Table Coches(
    cod Varchar(15) Not Null,
    nombre Varchar(20),
    marca Varchar(8) Not Null,
    Constraint PK_Coches Primary Key(cod),
    Constraint FK_Coches Foreign Key(marca) References Marcas(nombre)
);
Create Table Concesionarios(
    cif Varchar(8) Not Null,
    nombre Varchar(20),
    ciudad Varchar(20),
    Constraint PK_Concesionarios Primary Key(cif)
);
Create Table Clientes(
    id Varchar(10) Not Null,
    nombre Varchar(30),
    apellido Varchar(60),
    ciudad Varchar(20),
    Constraint PK_Clientes Primary Key(id)
);
Create Table Distribucion(
    cif Varchar(8) Not Null,
    coche Varchar(15) Not Null,
    cantidad Numeric(4) Not Null,
    Constraint PK_Distribucion Primary Key(cif,coche),
    Constraint FK1_Distribucion Foreign Key(cif) References Marcas(cif),
    Constraint FK2_Distribucion Foreign Key(coche) References Coches(cod)
);
Create Table Ventas(
    cif Varchar(8) Not Null,
    dni Varchar(10) Not Null,
    coche Varchar(15) Not Null,
    color Varchar(20),
    fecha TimeStamp,
    Constraint PK_Ventas Primary Key(cif,dni,coche),
    Constraint FK1_Ventas Foreign Key(cif) References Marcas(cif),
	Constraint FK2_Ventas Foreign Key(dni) References Clientes(id),
    Constraint FK3_Ventas Foreign Key(coche) References Coches(cod)
);