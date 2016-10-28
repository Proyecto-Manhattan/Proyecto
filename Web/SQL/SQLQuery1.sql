CREATE TABLE usuarios
	(
	 usuario varchar(50) NOT NULL,
	 passwd varchar(50) NOT NULL
	);

CREATE TABLE alumnos
	(claveU int PRIMARY KEY NOT NULL,
	 nombre varchar(100)NOT NULL,
	 apellido varchar(100)NOT NULL,
	 edad smallint NOT NULL,
	 correo varchar(50) NOT NULL,
	 telefono bigint NOT NULL,
	 celular bigint,
	 carrera varchar(100) NOT NULL,
	 estado varchar(100) NOT NULL,
	 pais varchar(100) NOT NULL,
	);
CREATE TABLE alumnos_datos
	(claveU int PRIMARY KEY NOT NULL,
	 universidad varchar(100),
	 preparatoria varchar(100),
	 delegacion varchar(100)		
	);
CREATE TABLE alumnos_fotos
	(claveU int references alumnos,
	 fotoBinary varbinary(MAX),
	 fotoImage image
	);

CREATE TABLE alumnos_institucion
	(claveU int references alumnos,
	 estudiaOtra varchar(50),
	 otraEscuela varchar(250),
	 queEstudia varchar(100),
	 trabajo varchar(50),
	 lugarTrabajo varchar (100),
	 puesto varchar(250),
	 ayudaFinan varchar(250),
	 porcentajeBeca varchar(50),
	 porcentajeFinanciera varchar(50)
	);

CREATE TABLE alumno_dec_itam
	(claveU int references alumnos,
	 prioridad1 varchar(250),
     prioridad2 varchar(250),
	 prioridad3 varchar(250)
	);

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

CREATE TABLE respSegundaEntrevista
	(
	 claveU int references alumnos,
	 resp1 text,
	 resp2 text,
	 resp3 text,
	 resp4 text,
	 resp5 text,
	 resp6 text,
	 resp7 text,
	 resp8 text,
	 resp9 text
	)

CREATE TABLE pregSegundaEntrevista
	(
	 numPreg int IDENTITY(1,1) PRIMARY KEY,
	 preg1 varchar(250)
	)



--------------PREGUNTAS PRIMERA ENTREVISTA--------------
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

--------------PREGUNTAS SEGUNDA ENTREVISTA--------------
INSERT INTO pregSegundaEntrevista VALUES('¿Cómo se ha sentido en términos generales, en el ITAM? (le ha gustado o no), (se ha adaptado al ambiente del ITAM)')
INSERT INTO pregSegundaEntrevista VALUES('¿Se ha dado de baja de alguna materia?¿Cuál o cuáles?')
INSERT INTO pregSegundaEntrevista VALUES('¿Cómo le ha ido en sus exámenes?¿Le ha funcionado su metodología de estudio?')
INSERT INTO pregSegundaEntrevista VALUES('¿Participa en alguna actividad extra-curricular?¿Cuál?')
INSERT INTO pregSegundaEntrevista VALUES('¿Han cambiado sus expectativas con respecto al ITAM?')
INSERT INTO pregSegundaEntrevista VALUES('¿Han cambiado sus expectativas con respecto al programa de Ingeniería en Computación?')
INSERT INTO pregSegundaEntrevista VALUES('¿Cómo considera la metodología utilizada y el contenido de Algoritmos y Programas?¿Por qué?')
INSERT INTO pregSegundaEntrevista VALUES('¿Qué sugeriría para mejorar la materia de Algoritmos y Programas?')
INSERT INTO pregSegundaEntrevista VALUES('Comentarios Generales')


--------------QUERIES GENERALES--------------


-------SELECTS-------

/*Datos*/
SELECT alumnos.nombre FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.apellido FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.correo FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.edad FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.semestre FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.carrera FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.preparatoria FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.delegacion FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos.telefono FROM alumnos WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Foto*/
SELECT alumnos_fotos.fotoBinary FROM alumnos_fotos WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos_fotos.fotoImage FROM alumnos_fotos WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Datos Extras*/
SELECT alumnos_extra.otraEscuela FROM alumnos_extra WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos_extra.trabajo FROM alumnos_extra WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos_extra.puesto FROM alumnos_extra WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos_extra.ayudaFinan FROM alumnos_extra WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumnos_extra.procedencia FROM alumnos_extra WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Prioridades Decision ITAM*/
SELECT alumno_dec_itam.prioridad1 FROM alumno_dec_itam WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_itam.prioridad2 FROM alumno_dec_itam WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_itam.prioridad3 FROM alumno_dec_itam WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Prioridades Decision Programa*/
SELECT alumno_dec_programa.prioridad1 FROM alumno_dec_programa WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_programa.prioridad2 FROM alumno_dec_programa WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_programa.prioridad3 FROM alumno_dec_programa WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Prioridades Decision Habilidades*/
SELECT alumno_dec_habilidades.prioridad1 FROM alumno_dec_habilidades WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_habilidades.prioridad2 FROM alumno_dec_habilidades WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_dec_habilidades.prioridad3 FROM alumno_dec_habilidades WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Preguntas*/
SELECT alumno_preguntas.horasEstudio FROM alumno_preguntas WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_preguntas.actividadDeseo FROM alumno_preguntas WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_preguntas.hobby FROM alumno_preguntas WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_preguntas.felicidadItam FROM alumno_preguntas WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT alumno_preguntas.comentarios FROM alumno_preguntas WHERE claveU = '" + <PongaClaveUAqui> + "'

/*Preguntas abiertas (2nda Entrevista)*/
SELECT respSegundaEntrevista.resp1 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp2 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp3 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp4 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp5 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp6 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp7 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp8 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'
SELECT respSegundaEntrevista.resp9 FROM respSegundaEntrevista WHERE claveU = '" + <PongaClaveUAqui> + "'

/*LLENADO DE PREGUNTAS (decisiones) PARA COMBOBOX*/
SELECT opcionesCb.preguntaDecItam FROM opcionesCb
SELECT opcionesCb.preguntaDecProg FROM opcionesCb
SELECT opcionesCb.preguntaDecHabi FROM opcionesCb

/*LLENADO DE PREGUNTAS (2ndaEntrevista) PARA LLENADO FORMATOS*/
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 1
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 2
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 3
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 4
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 5
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 6
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 7
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 8
SELECT pregSegundaEntrevista.preg1 FROM pregSegundaEntrevista WHERE numPreg = 9


-------INSERT-------

--alumnos--
INSERT INTO alumnos(claveU,nombre,apellido,edad,correo,telefono,celular,carrera,estado,pais) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}');
INSERT INTO alumnos_datos(claveU,universidad,preparatoria,delegacion) VALUES('{0}','{1}','{2}','{3}');
INSERT INTO alumnos_institucion(claveU,estudiaOtra,otraEscuela,queEstudia,trabajo,lugarTrabajo,puesto,ayudaFinan,porcentajeBeca,porcentajeFinanciera) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}');
INSERT INTO alumno_dec_itam(claveU,prioridad1,prioridad2,prioridad3) VALUES('{0}','{1}','{2}','{3}');
INSERT INTO alumno_dec_programa(claveU,prioridad1,prioridad2,prioridad3) VALUES('{0}','{1}','{2}','{3}');
INSERT INTO alumno_dec_habilidades(claveU,prioridad1,prioridad2,prioridad3) VALUES('{0}','{1}','{2}','{3}');
INSERT INTO alumno_preguntas(claveU,actividadDeseo,hobby,felicidadItam,comentarios) VALUES('{0}','{1}','{2}','{3}');


