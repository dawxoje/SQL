--1
Alter Table jugadores Add telefono varchar(9);
--2
Update Table jugadores Set telefono='120' Where pais='España';
Update Table jugadores Set telefono='90' Where pais='Argentina';
Update Table jugadores Set telefono='100' Where pais='Brasil';
Update Table jugadores Set telefono='110' Where pais not in ('Alemania','Francia','Italia');
Alter Table jugadores Add tipo_jugador varchar(10);
Update Table jugadores Set tipo_jugador='Español' Where telefono<'111';
Update Table jugadores Set tipo_jugador='Extranjero' Where telefono>'111' Or telefono is null;
--3
Select Distinct jugadores.* From jugadores, jugar Where jugadores.nombre=jugar.nombre_jug and jugar.min_jugar>45;
--4
Select * From jugadores Where tipo_jugador='Extranjero';
--5
Select * From jugadores Where lower(nombre) Like 'a%';
--6
Insert Into jugadores(nombre,equipo_jugador)
Values('Jose','España');
--7
Insert Into partido(equipo_l,equipo_v,fecha, resultado_l, resultado_v)
Values('España','Francia','05/01/2018',5,2);
--8
Insert Into jugar
Values(Select nombre from jugador where)