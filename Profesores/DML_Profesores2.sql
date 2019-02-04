/*Selects*/
/*a*/
SELECT * FROM Profesores;
/*b*/
SELECT categoria FROM Profesores;
/*c*/
SELECT DISTINCT categoria FROM Profesores;
/*d*/
SELECT nombre FROM Profesores WHERE categoria="TEU";
/*e*/
SELECT nombre FROM Profesores WHERE categoria="TEU" OR categoria="ASO6";
/*f*/
SELECT * FROM Asignaturas WHERE creditosp IS NULL;
/*g*/
SELECT creditos AND descripcion FROM Asignaturas WHERE creditos>5 AND creditos<8;
/*h*/
SELECT descripcion FROM Asignaturas WHERE categoria="FBD" OR categoria="DGBD";
/*i*/
SELECT nombre FROM Profesores WHEN categoria!="HI" OR categoria!="FBD" OR categoria!="DGBD"
/*j*/
SELECT * FROM Profesores WHEN nombre="Rafa";
/*k*/
SELECT codigo FROM Asignaturas WHEN descripcion="BASES DE DATOS";
/*l*/
SELECT codigo FROM Asignaturas WHEN LEN(codigo)<3;
/*m*/
SELECT descripcion FROM Asignaturas WHEN descripcion LIKE '%INFORMATIC_%';
/*n*/
SELECT descripcion AND creditos FROM Asignaturas WHERE creditos=(SELECT min(creditos) FROM Asignaturas);
/*o*/
SELECT nombre FROM Asignaturas WHERE codigo="HI" AND creditos=(SELECT max(creditos) FROM Asignaturas);
/*p*/
SELECT nombre FROM Asignaturas WHERE creditos=(SELECT max(creditos) FROM Asignaturas);
/*q*/
SELECT nombre FROM Asignaturas WHERE creditos=(SELECT min(creditos) FROM Asignaturas);
/*r*/
SELECT nombre FROM Profesores WHERE not creditos(SELECT max(creditos) FROM Asignaturas);
/*s*/
SELECT * FROM Profesores WHERE asignatura IS NOT NULL;
/*t*/
SELECT * FROM Profesores WHERE asignatura IS NULL;
/*u*/
SELECT * FROM Profesores WHERE ingreso=TO_CHAR('YYYY')<1990;