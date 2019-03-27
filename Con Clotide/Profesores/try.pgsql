Select profesores.dni, nombre, count(*)
From profesores, imparte
Where profesores.dni=imparte.dni
Group By profesores.dni, nombre
Having count(*)>=2