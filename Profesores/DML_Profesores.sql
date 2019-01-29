INSERT INTO Profesores(dni, nombre, categoria, ingreso)
VALUES("21111222","Eva Giner","TEU",1992-10-02);
INSERT INTO Profesores(dni, nombre, categoria, ingreso)
VALUES("21222333","Manuel Perez","TEU",1988-06-15);
INSERT INTO Profesores(dni, nombre, categoria, ingreso)
VALUES("21333444","Rafaela Gomis","ASO6",1993-06-15);

INSERT INTO Asignaturas(codigo, descripcion, creditos, creditosp)
VALUES("DGBD","Diseño y gestión de bases de datos ",6.0,3.0);
INSERT INTO Asignaturas(codigo, descripcion, creditos, creditosp)
VALUES("FBD","Fundamentos de las bases de datos ",6.0 ,1.5);
INSERT INTO Asignaturas(codigo, descripcion, creditos, creditosp)
VALUES("FP ","Fundamentos de la programacion",9.0 ,4.5);
INSERT INTO Asignaturas(codigo, descripcion, creditos)
VALUES("HI","Historia de la informatica ",4.5);
INSERT INTO Asignaturas(codigo, descripcion, creditos, creditosp)
VALUES("PC","Programación concurrente ",6.0,1.5);

INSERT INTO Imparte(dni,asignatura)
VALUES("21111222","DGBD");
INSERT INTO Imparte(dni,asignatura)
VALUES("21111222","FBD");
INSERT INTO Imparte(dni,asignatura)
VALUES("21333444","PC");