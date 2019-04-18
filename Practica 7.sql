SELECT COUNT(*) AS facultades, COUNT(id) AS materias from facultades
SELECT COUNT(*) AS carrera, COUNT (id) AS alumno from alumno

SELECT MIN(ID) AS id_minimo from materias
SELECT MIN(nombre) AS Alumno_minimo from detalle_alumno

SELECT MAX(id) as Maximo from kardex
SELECT MAX(id) as Maximo_id from profesor

SELECT SUM(id) as Suma_carreras from materias_carreras
SELECT SUM(id) as Suma_profesores_id from profesor

SELECT AVG(id) as Promedio_alumnos from alumno
SELECT AVG(id) AS Promedio_profesores from profesor