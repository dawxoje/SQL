--1.	Obtener todos los campos de todos los clientes de “Madrid”.
Select * From cliente Where ciudad='Madrid';
--2.	Obtener los nombres de todas las marcas de coches ordenados alfabéticamente.
Select nombre From coches Order By nombre;
--3.	Obtener el cif de todos los concesionarios cuyo atributo cantidad en la tabla de DISTRIBUCION  es mayor que 18 .
Select cif From distribucion Where cantidad>18;
--4.	Obtener el cif de todos los concesionarios cuyo atributo cantidad en la tabla de DISTRIBUCION está comprendido entre 10 y 18, ambos inclusive.
Select cif From distribucion Where cantidad>=10 And cantidad<=18;
--5.	Obtener el cif de todos los concesionarios cuyo atributo cantidad en la tabla de distribución, está comprendido entre 10 y 18, ambos inclusive (de otra manera).
Select cif From distribucion Where cantidad Between 10 And 18;
--6.	Obtener el cif de todos los concesionarios que han adquirido más de 10 coches o menos de 3.
Select cif From distribucion Where cantidad>10 Or cantidad<3;
--7.	Obtener todas las parejas de cif de marcas y dni de clientes que sean de la misma ciudad.
Select mar.cif,cli.id From Marca as mar, Clientes as cli Where mar.ciudad=cli.cuidad;
--8.	Obtener las parejas de  dni de clientes y cif de marcas  que NO sean de la misma ciudad.
Select mar.cif,cli.id From Marca as mar, Clientes as cli Where mar.ciudad!=cli.cuidad;
--9.	Obtener los códigos de los coches distribuidos por algún concesionario de “Barcelona”.
Select car.cod From Coches as car, Concesionarios as conc Where conc.ciudad='Barcelona';
--10.	 Obtener el cod de aquellos coches vendidos a clientes de “Madrid”.
Select sold.coche From Ventas as sold, Clientes as cli Where cli.ciudad='Madrid';
--11.	Obtener el cod de los coches que han sido adquiridos por un cliente de “Madrid” en un concesionario de “Madrid”.
--No se hacer intervenir la tabla ventas
Select car.cod From Concesionarios as conc, Clientes as cli, Ventas as sold Where cli.ciudad='Madrid' And conc.ciudad=cli.ciudad;
--12.	Obtener el cod de los coches comprados en un concesionario de la misma ciudad que el cliente que lo compra.
Select car.cod From Concesionarios as conc, Clientes as cli, Ventas as sold Where conc.ciudad=cli.ciudad;
--13.	Obtener los cod  de los coches comprados en un concesionario de  distinta ciudad que el cliente que lo compra.
Select car.cod From Concesionarios as conc, Clientes as cli, Ventas as sold Where conc.ciudad!=cli.ciudad;
--14.	Obtener todos los cod de los  coches  cuyo nombre empiece por “c”.
Select cod From Coches Where nombre Like 'a%';
--15.	Obtener todos los  cod de los coches cuyo nombre no contiene ninguna “a”.
Select cod From Coches Where nombre Not Like '%a%';
--16.	Obtener el número total de nombres de marcas de coche que son de “Madrid”.
Select count(Select nombre From Marcas Where ciudad='Madrid') as TotalMadrid;
--17.	Obtener la media de la cantidad de coches que tienen todos los concesionarios.
--No lo consigo... Tengo que pedirte una tutoria...
Select avg(Select dist.coche From Distribucion as dist,  Where) as MediaCochesConcesionario
--18.	Obtener el dni cuya numeración sea la más alta de todos los clientes de “Madrid”.

--19.	Obtener el dni con  numeración  más baja de todos los clientes que han comprado un coche “Blanco”.

--20.	Obtener el cif de todos los concesionarios cuyo número de coches en stock (para distribuir) no es nulo.

--21.	Obtener el cif y el nombre de las marcas  de coches cuya segunda letra de nombre de la ciudad de origen sea una “i”.

--22.	Obtener el dni de los clientes (sin repetidos) que han comprado algún coche a un concesionario de “Madrid”.

--23.	Obtener el color de los coches vendidos por el concesionario “Fercar”.

--24.	Obtener el cod de los coches vendidos por algún concesionario de “Madrid”.

--25.	Obtener el nombre y el modelo de los coches vendidos por algún concesionario de “Barcelona”.

--26.	Obtener los nombres de los clientes que hayan adquirido algún coche del concesionario “Motor Sport”.

--27.	Obtener el nombre y el apellido de los clientes cuyo número de dni es menor que el del cliente “Alvaro Pérez”.

--28.	Obtener el dni de los clientes cuya ciudad sea la última de la lista alfabética de las ciudades donde hay concesionarios.

--29.	Obtener la media de los automóviles que cada concesionario tiene actualmente en stock
