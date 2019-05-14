use SIASE

CREATE VIEW ver_contraseñas
AS SELECT id, contraseña
FROM alumno

CREATE VIEW ver_profesores
AS SELECT id, nombre
FROM profesor

CREATE VIEW ver_materias_primer_semestre
AS SELECT id, nombre_materia
FROM materias
where semestre = 1

CREATE VIEW ver_materias_segundo_semestre
AS SELECT id, nombre_materia
FROM materias
where semestre = 2

CREATE VIEW ver_materias_tercer_semestre
AS SELECT id, nombre_materia
FROM materias
where semestre = 3

CREATE VIEW ver_aulas
AS SELECT aula
FROM aula
WHERE descripcion = 101

CREATE VIEW ver_calificaciones_aprobadas
AS SELECT calificacion
from calificaciones_kardex
where calificacion >= 70

CREATE VIEW ver_calificaciones_reprobadas
AS SELECT calificacion
from calificaciones_kardex
where calificacion < 70

CREATE VIEW ver_carreras_fcfm
AS SELECT nombre
from carrera
where id_facultad = 1

CREATE VIEW ver_carreras_otras
AS SELECT nombre
from carrera
where id_facultad <> 1
