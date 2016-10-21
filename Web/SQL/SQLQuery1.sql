CREATE TABLE alumnos
	(claveU int PRIMARY KEY NOT NULL,
	 nombre varchar(100),
	 apellido varchar(100),
	 correo varchar(50),
	 edad smallint,
	 preparatoria varchar(200),
	 delegacion varchar(200),
	)

CREATE TABLE alumnos_fotos
	(claveU int references alumnos,
	 foto varbinary(MAX) not null
	)

CREATE TABLE alumnos_extra
	(claveU int references alumnos,
	 otraEscuela varchar(250),
	 trabajo varchar(250),
	 puesto varchar(250),
	 ayudaFinan varchar(250),
	 procedencia varchar(100),
	)

CREATE TABLE alumno_dec_itam
	(claveU int references alumnos,
	 prioridad1 varchar(250),
     prioridad2 varchar(250),
	 prioridad3 varchar(250)
	)

CREATE TABLE alumno_dec_programa
	(claveU int references alumnos,
	 prioridad1 varchar(250),
     prioridad2 varchar(250),
	 prioridad3 varchar(250)
	)

CREATE TABLE alumno_dec_habilidades
	(claveU int references alumnos,
	 prioridad1 varchar(250),
     prioridad2 varchar(250),
	 prioridad3 varchar(250)
	)

CREATE TABLE alumno_preguntas
	(claveU int references alumnos,
	 horasEstudio smallint,
     actividadDeseo varchar(250),
	 hobby varchar(250),
	 felicidadItam varchar(250),
	 comentarios varchar(250)
	)

CREATE TABLE opcionesCb
	(
	 preguntaDecItam varchar(250),
	 preguntaDecProg varchar(250),
	 preguntaDecHabi varchar(250)
	)

-------PREGUNTAS-------
INSERT INTO opcionesCb VALUES('Cercanía','Creo tener las habilidades para ser un buen administrador.','Pensamiento Analítico')
INSERT INTO opcionesCb VALUES('Prestigio Académico','Por su plan de estudios integral','Pensamiento Crítico')
INSERT INTO opcionesCb VALUES('Plan de estudios','Me interesa alguna área de concentración que ofrece el programa','Pensamiento Lógico')
INSERT INTO opcionesCb VALUES('Algún familiar estudió(a) aquí','Planeo tener mi propia empresa','Creativo')
INSERT INTO opcionesCb VALUES('Plática / Visita en mi preparatoria o equivalente','Deseo ser director de una gran empresa','Responsable')
INSERT INTO opcionesCb VALUES('La Orientadora vocacional me la recomendó','Un familiar o conocido me recomendó el programa','Organizado / Ordenado')
INSERT INTO opcionesCb VALUES('Por su programa de becas','Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas','Tomo decisiones propias')
INSERT INTO opcionesCb VALUES('Porque no es una escuela masiva','Para poder trabajar en el negocio familiar','Trabajo bajo presión y me gusta tomar retos')
INSERT INTO opcionesCb VALUES('Por sus instalaciones y servicio','Otra (s). Especificar','Activo / Participativo')
INSERT INTO opcionesCb VALUES('Por sus horarios mixtos','','Persistente / Tenaz')
INSERT INTO opcionesCb VALUES('No había otra opción','','Actitud de servicio/disponibilidad')
INSERT INTO opcionesCb VALUES('','','Adaptación al medio')
INSERT INTO opcionesCb VALUES('','','Comunicador y asertivo')
INSERT INTO opcionesCb VALUES('','','Estable emocionalmente')
INSERT INTO opcionesCb VALUES('','','Emprendedor')
INSERT INTO opcionesCb VALUES('','','Buenas relaciones interpersonales / sociabilidad')
INSERT INTO opcionesCb VALUES('','','Trabajo en equipo')
INSERT INTO opcionesCb VALUES('','','Me gusta leer')
INSERT INTO opcionesCb VALUES('','','Disciplinado')
INSERT INTO opcionesCb VALUES('','','Puntual')
INSERT INTO opcionesCb VALUES('','','Líder')
INSERT INTO opcionesCb VALUES('','','Observador')
