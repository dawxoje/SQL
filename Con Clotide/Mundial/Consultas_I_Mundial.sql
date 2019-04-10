--1
Alter Table jugadores Add telefono varchar(9);
--2
Update Table jugadores Set telefono='120' Where pais='España';
Update Table jugadores Set telefono='90' Where pais='Argentina';
Update Table jugadores Set telefono='100' Where pais='Brasil';
Update Table jugadores Set telefono='110' Where pais not in ('Alemania','Francia','Italia');
Alter Table jugadores Add tipo_jugador varchar(10);
Update Table jugadores Set tipo_jugador='Español' Where telefono<'111';
Update Table jugadores Set tipo_jugador='Extrangero' Where telefono>'111' Or telefono is null;
--3
Select Distinct nombre From jugadores Where