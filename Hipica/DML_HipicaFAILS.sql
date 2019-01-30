/*Insert Incorrecto*/
INSERT INTO Caballos(codcaballo, peso, fechanacimiento, propietario, nacionalidad)
Values("0001",240,20-10-2001,"Pepe","España");
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values("0001","Juan",230,20-10-2001,"Pepe","España");
INSERT INTO Caballos(codcaballo, nombre, peso, fechanacimiento, propietario, nacionalidad)
Values("0001","Juan",240,20-10-1001,"Pepe","España");

INSERT INTO Carreras(codcarrera, fechayhora, nombre, importerpremio, apuestalimite)
VALUES("0001",21-10-2000 08:30, "Monmelo", 10000, 199);
INSERT INTO Carreras(codcarrera, fechayhora, nombre, importerpremio, apuestalimite)
VALUES("0001",21-10-2000 08:30, "Monmelo", 100000, 199);

INSERT INTO Participaciones(codcaballo, codcarrera, jockey, posicionfinal)
VALUES("0001","0001", "Jose",01);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, posicionfinal)
VALUES("0001","0001",01,01);
INSERT INTO Participaciones(codcaballo, codcarrera, dorsal, jockey, posicionfinal)
VALUES("0001","0001",01, "Jose",-01);

INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES("223456789P", "0010", "0010", null, 3.5);
INSERT INTO Apuestas(dnicliente, codcaballo, codcarrera, importe, tantoporuno)
VALUES("223456789P", "0010", "0010", 210, 1);