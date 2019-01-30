/*Insert correcto*/
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0001','Juan',240,'20-10-2001','Pepe','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0002','Pepe',241,'20-12-2001','Juan','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0003','Vlad',242,'10-10-2001','Keren','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0004','Sergio',240,'20-10-2011','Vlad','Italia');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0005','Mike',241,'20-12-2010','Sergio','Francia');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0006','Alberto',242,'20-10-2015','Mike','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0007','Marina',245,'20-10-20017','Alberto','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0008','Keren',248,'20-12-2005','Jose','Italia');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0009','Raquel',249,'05-10-2011','Pepe','España');
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values('0010','Manuel',250,'20-10-2003','Juan','España');

INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0001','2000-21-10-09-30-00', 'Monmelo', 10000, 199);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0002',22-10-2000-10-30-00, 'Dakar', 2000, 1999);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0003',23-10-2000-12-30-00, 'Valencia', 3000, 999);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0004',24-10-2000-11-30-00, 'Barcelona', 4000, 19);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0005',20-11-2000-10-20-00, 'Roma', 5000, 99);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0006',21-11-2000-09-25-00, 'Praga', 6000, 9999);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0007',22-11-2000-12-30-00, 'South Park', 7000, 1);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0008',23-11-2000-13-30-00, 'Pekin', 8000, 199);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0009',22-12-2000-11-00-00, 'Nueva York', 9000, 1929);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importepremio, apuestalimite)
VALUES('0010',23-12-2000-09-30-00, 'Villa Conejos', 1000, 169);

INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0001','0001',01, 'Jose',01);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0002','0002',02, 'Pepe',02);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0003','0003',03, 'Juan',03);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0004','0004',04, 'Raquel',04);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0005','0005',05, 'Marina',05);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0006','0006',06, 'Alberto',06);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0007','0007',07, 'Manuel',07);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0008','0008',08, 'David',08);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0009','0009',09, 'Joel',09);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES('0010','0010',10, 'Paqui',10);

INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('123456789P','Jose','España');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('223456789P','Raquel','Italia');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('323456789P','Pepe','Ecuador');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('423456789P','Alberto','Chile');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('523456789P','Amando','Francia');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('623456789P','Joel','Portugal');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('723456789P','Manuel','Brasil');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('823456789P','Javier','Estados Unidos');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('923456789P','Rodolfo','Canada');
INSERT INTO Clientes(dni, nombre, nacionalidad)
VALUES('133456789P','Juan','España');

INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('123456789P', '0001', '0001', 301, 1.3);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('223456789P', '0002', '0002', 302, 1.2);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('323456789P', '0003', '0003', 303, 100);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('423456789P', '0004', '0004', 304, 5.6);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('523456789P', '0005', '0005', 305, 1.1);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('623456789P', '0006', '0006', 306, 10.5);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('723456789P', '0007', '0007', 307, 5.5);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('823456789P', '0008', '0008', 308, 1.5);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('923456789P', '0009', '0009', 309, 2.5);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES('223456789P', '0010', '0010', 210, 3.5);
