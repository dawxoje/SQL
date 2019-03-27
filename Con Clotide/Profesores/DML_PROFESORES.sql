-- Database: Profesores

-- DML Profesores

insert into Profesores(dni, nombre, categoria, ingreso) values ('21111222', 'eva giner', 'TEU', '02-10-1992');
insert into Profesores(dni, nombre, categoria, ingreso) values ('21222333', 'manuel perez', 'TEU', '15-06-1988');
insert into Profesores(dni, nombre, categoria, ingreso) values ('21333444', 'rafaela gomis', 'ASO6', '15-06-1993');

insert into Asignaturas(codigo, descripcion, creditos, creditosp) values ('DGBD', 'Diseño y gestión de bases de datos', 6.0, 3.0);
insert into Asignaturas(codigo, descripcion, creditos, creditosp) values ('FBD', 'Fundamentos de las bases de datos', 6.0, 1.5);
insert into Asignaturas(codigo, descripcion, creditos, creditosp) values ('FP', 'Fundamentos de la programacion', 9.0, 4.5);
insert into Asignaturas(codigo, descripcion, creditos) values ('HI', 'Historia de la informatica', 4.5);
insert into Asignaturas(codigo, descripcion, creditos, creditosp) values ('PC', 'Programación concurrente', 6.0, 1.5);

insert into Imparte(dni, asignatura) values ('21111222', 'DGBD');
insert into Imparte(dni, asignatura) values ('21111222', 'FBD');
insert into Imparte(dni, asignatura) values ('21333444', 'PC');





