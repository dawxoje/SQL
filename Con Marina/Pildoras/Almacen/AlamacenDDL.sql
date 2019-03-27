Drop table productos_pedidos;
Drop table productos;
Drop table pedidos;
Drop table clientes;


Create Table clientes(
    codigoCliente Varchar(4) Not Null,
    empresa Varchar(50),
    direccion Varchar(50),
    poblacion Varchar(30),
    telefono Varchar(9),
    responsable Varchar(50),
    historial Varchar(50),
    Primary Key(codigoCliente)
);
Create Table pedidos(
    numeroDePedido numeric(4) Not Null,
    codigoCliente Varchar(4) Not Null,
    fechaDePedido Date,
    formaDePago Varchar (15),
    descuento numeric(4,1),
    enviado boolean,
    Primary Key(numeroDePedido),
	Foreign Key(codigoCliente) References clientes(codigoCliente)
);
Create Table productos(
    codigoArticulo Varchar(4) Not Null,
    seccion Varchar(15),
    nombre Varchar(20),
    precio numeric(8,2),
    fecha Date,
    importado boolean,
    paisDeOrigen Varchar(15),
    foto boolean,
    Primary Key(codigoArticulo)
);
Create Table productos_pedidos(
	numeroDePedido numeric(4) Not Null,
	codigoArticulo Varchar(4) Not Null,
	unidades numeric(3),
	Primary Key(numeroDePedido,codigoArticulo),
	Foreign Key(numeroDePedido) References pedidos(numeroDePedido),
	Foreign Key(codigoArticulo) References productos(codigoArticulo)
);