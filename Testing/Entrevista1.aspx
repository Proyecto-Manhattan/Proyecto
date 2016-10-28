<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrevista1.aspx.cs" Inherits="Testing_Entrevista1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Entevista 1</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/EncuestaUno.css" rel="stylesheet" />

</head>
<body class="w3-pale-green">
    <header class="w3-container w3-itam w3-border w3-round-small">
        <div class="w3-itam w3-display-container">
            <img src="img/itam.png" class="w3-image" style="max-height: 100px;" alt="ITAM">
            <div class="w3-display-right w3-container w3-right"><a href="TestingAlumno.aspx" id="home" runat="server">REGRESA</a></div>
        </div>
    </header>
    <form id="form1" runat="server" class="w3-pale-green">

        <div class="img">
            <img class="media-object" src="img/no-user.png" alt="no-user">
            <input type="file" name="file" id="file" class="inputfile" runat="server" />
            <label for="file">Choose a file</label>
        </div>
        <label for="plis">Clave Unica</label>
        <input type="text" id="plis" name="plis" runat="server" required/>
        <label for="Nombre">Nombre</label>
        <input type="text" id="Nombre" name="nombre" runat="server" required>

        <label for="Apellido">Apellido</label>
        <input type="text" id="Apellido" name="apellido" runat="server" required>

        <label for="Edad">Edad</label>
        <input type="text" id="Edad" name="edad" runat="server" required>

        <label for="Email">Email</label>
        <input type="text" id="Email" name="email" runat="server" required>

        <label for="Telefono">Teléfono</label>
        <input type="text" id="Telefono" name="telefono" runat="server" required>

        <!--Se podria poner mas paises-->
        <label for="Pais">País</label>
        <select id="Pais" name="pais" runat="server" required>
            <option value="Mexico">México</option>
            <option value="Otro">otro</option>
        </select>

        <label for="Estado">Estado</label>
        <select id="Estado" name="estado" runat="server" required>
            <option value="Ciudad de Mexico">Ciudad de México</option>
            <option value="Otro">otro</option>
        </select>

        <label for="Delegacion">Delegación</label>
        <select id="Delegacion" name="delegacion" runat="server">
            <option value="Alvaro Obregon">Alvaro Obregon</option>
            <option value="Otro">otro</option>
        </select>

        <!--No ha sido considerado-->
        <label for="Celular">Celular</label>
        <input type="text" id="Celular" name="celular" runat="server">

        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <!--la universidad se sobre entiende como la otra escuela-->
        <label for="Universidad">Universidad</label>
        <input type="text" id="Universidad" name="universidad" runat="server">

        <!--Se entiende como queEstudia-->
        <label for="Carrera">Carrera</label>
        <input type="text" id="Carrera" name="carrera" runat="server" required>

        <label for="Preparatoria">Preparatoria</label>
        <input type="text" id="Preparatoria" name="preparatoria" runat="server">

        <!--## Trabajo ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="EstudioOtro">Estudia aparte en otra escuela</label>
        <input type="text" id="EstudioOtro" name="estudioOtro" runat="server">

        <label for="QueEstudio">¿Qué estudia?</label>
        <input type="text" id="QueEstudio" name="queEstudio" runat="server">

        <label for="DondeEstudia">¿Dónde Estudia?</label>
        <input type="text" id="DondeEstudia" name="dondeEstudia" runat="server">

        <label for="Trabajo">Trabajo</label>
        <input type="text" id="Trabajo" name="trabajo" runat="server">

        <label for="LugarTrabajo">Lugar donde trabajas</label>
        <input type="text" id="LugarTrabajo" name="lugarTrabajo" runat="server">

        <label for="Puesto">Puesto</label>
        <input type="text" id="Puesto" name="puesto" runat="server">

        <!--## Ayuda Financiera ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="AyudaFinanciera">Ayuda Financiera</label>
        <input type="text" id="AyudaFinanciera" name="ayudaFinanciera" runat="server">

        <label for="PorcentajeBeca">Porcentaje de la beca</label>
        <input type="text" id="PorcentajeBeca" name="porcentajeBeca" runat="server">

        <label for="PorcentajeAyudaFinanciera">Porcentaje de la ayuda financiera</label>
        <input type="text" id="PorcentajeAyudaFinanciera" name="porcentajeAyudaFinanciera" runat="server">

        <!--## decision estudio itam ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Seleccion">Para las siguientes preguntas elegir primero la de mayor importacia</label><br />
        <label for="Seleccion">¿Por qué decidió estudiar en el ITAM?</label>
        <select id="Select1" name="seleccion" runat="server">
            <option value="Cercanía">Cercanía</option>
            <option value="Prestigio Académico">Prestigio Académico</option>
            <option value="Plan de estudios">Plan de estudios</option>
            <option value="Algún familiar estudio(a) aquí">Algún familiar estudio(a) aquí</option>
            <option value="Plática/Visita en preparatoria o equivalente">Plática/Visita en preparatoria o equivalente</option>
            <option value="La Orientadora Vocacional me la recomendó">La Orientadora Vocacional me la recomendó</option>
            <option value="Por su programa de becas">Por su programa de becas</option>
            <option value="Porque no es una escuela masiva">Porque no es una escuela masiva</option>
            <option value="Por sus instalaciones y servicios">Por sus instalaciones y servicios</option>
            <option value="Por sus horarios mixtos">Por sus horarios mixtos</option>
            <option value="No había otra opción">No había otra opción</option>
        </select>
        <select id="Select2" name="seleccion" runat="server">
            <option value="Cercanía">Cercanía</option>
            <option value="Prestigio Académico">Prestigio Académico</option>
            <option value="Plan de estudios">Plan de estudios</option>
            <option value="Algún familiar estudio(a) aquí">Algún familiar estudio(a) aquí</option>
            <option value="Plática/Visita en preparatoria o equivalente">Plática/Visita en preparatoria o equivalente</option>
            <option value="La Orientadora Vocacional me la recomendó">La Orientadora Vocacional me la recomendó</option>
            <option value="Por su programa de becas">Por su programa de becas</option>
            <option value="Porque no es una escuela masiva">Porque no es una escuela masiva</option>
            <option value="Por sus instalaciones y servicios">Por sus instalaciones y servicios</option>
            <option value="Por sus horarios mixtos">Por sus horarios mixtos</option>
            <option value="No había otra opción">No había otra opción</option>
        </select>
        <select id="Select3" name="seleccion" runat="server">
            <option value="Cercanía">Cercanía</option>
            <option value="Prestigio Académico">Prestigio Académico</option>
            <option value="Plan de estudios">Plan de estudios</option>
            <option value="Algún familiar estudio(a) aquí">Algún familiar estudio(a) aquí</option>
            <option value="Plática/Visita en preparatoria o equivalente">Plática/Visita en preparatoria o equivalente</option>
            <option value="La Orientadora Vocacional me la recomendó">La Orientadora Vocacional me la recomendó</option>
            <option value="Por su programa de becas">Por su programa de becas</option>
            <option value="Porque no es una escuela masiva">Porque no es una escuela masiva</option>
            <option value="Por sus instalaciones y servicios">Por sus instalaciones y servicios</option>
            <option value="Por sus horarios mixtos">Por sus horarios mixtos</option>
            <option value="No había otra opción">No había otra opción</option>
        </select>

        <!--## ¿decision sobre el programa de compu ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Seleccion">¿Por qué eligio el programa de computación?</label>
        <select id="Select4" name="seleccion" runat="server">
            <option value="Creo tener las habilidades para ser un buen administrador">Creo tener las habilidades para ser un buen administrador</option>
            <option value="Por su plan de estudios integral">Por su plan de estudios integral</option>
            <option value="Me interesa alguna área de concentración que ofrece el programa">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="Planeo tener mi propia empresa">Planeo tener mi propia empresa</option>
            <option value="Un familiar o conocido me recomendó el programa">Un familiar o conocido me recomendó el programa</option>
            <option value="Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="Para poder trabajar en el negocio familiar">Para poder trabajar en el negocio familiar</option>
            <option value="Otra">Otra</option>
        </select>
        <select id="Select5" name="seleccion" runat="server">
            <option value="Creo tener las habilidades para ser un buen administrador">Creo tener las habilidades para ser un buen administrador</option>
            <option value="Por su plan de estudios integral">Por su plan de estudios integral</option>
            <option value="Me interesa alguna área de concentración que ofrece el programa">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="Planeo tener mi propia empresa">Planeo tener mi propia empresa</option>
            <option value="Un familiar o conocido me recomendó el programa">Un familiar o conocido me recomendó el programa</option>
            <option value="Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="Para poder trabajar en el negocio familiar">Para poder trabajar en el negocio familiar</option>
            <option value="Otra">Otra</option>
        </select>
        <select id="Select6" name="seleccion" runat="server">
            <option value="Creo tener las habilidades para ser un buen administrador">Creo tener las habilidades para ser un buen administrador</option>
            <option value="Por su plan de estudios integral">Por su plan de estudios integral</option>
            <option value="Me interesa alguna área de concentración que ofrece el programa">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="Planeo tener mi propia empresa">Planeo tener mi propia empresa</option>
            <option value="Un familiar o conocido me recomendó el programa">Un familiar o conocido me recomendó el programa</option>
            <option value="Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="Para poder trabajar en el negocio familiar">Para poder trabajar en el negocio familiar</option>
            <option value="Otra">Otra</option>
        </select>

        <!--## Habilidades##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Seleccion">¿Qué habilidades tiene?</label>
        <select id="Select7" name="seleccion" runat="server">
            <option value="Pensamiento Analítico">Pensamiento Analítico</option>
            <option value="Pensamiento Crítico">Pensamiento Crítico</option>
            <option value="Pensamiento Lógico">Pensamiento Lógico</option>
            <option value="Creativo">Creativo</option>
            <option value="Responsable">Responsable</option>
            <option value="Organizado / Ordenado">Organizado / Ordenado</option>
            <option value="Tomo decisiones propias">Tomo decisiones propias</option>
            <option value="Trabajo bajo presión y me gusta tomar retos">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="Activo / Participativo">Activo / Participativo</option>
            <option value="Percistente / Tenaz">Percistente / Tenaz</option>
            <option value="Actitud de servicio / disponibilidad">Actitud de servicio / disponibilidad</option>
            <option value="Adaptación al medio">Adaptación al medio</option>
            <option value="Comunicador asertivo">Comunicador asertivo</option>
            <option value="Estable emocionante">Estable emocionante</option>
            <option value="Emprendedor">Emprendedor</option>
            <option value="Buenas relacionesinterpersonales / sociabilidad">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="Trabajo en equipo">Trabajo en equipo</option>
            <option value="Me gusta leer">Me gusta leer</option>
            <option value="Disciplinado">Disciplinado</option>
            <option value="Puntual">Puntual</option>
            <option value="Estable Líder">Estable Líder</option>
            <option value="Observador">Observador</option>
        </select>
        <select id="Select8" name="seleccion" runat="server">
            <option value="Pensamiento Analítico">Pensamiento Analítico</option>
            <option value="Pensamiento Crítico">Pensamiento Crítico</option>
            <option value="Pensamiento Lógico">Pensamiento Lógico</option>
            <option value="Creativo">Creativo</option>
            <option value="Responsable">Responsable</option>
            <option value="Organizado / Ordenado">Organizado / Ordenado</option>
            <option value="Tomo decisiones propias">Tomo decisiones propias</option>
            <option value="Trabajo bajo presión y me gusta tomar retos">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="Activo / Participativo">Activo / Participativo</option>
            <option value="Persistente / Tenaz">Persistente / Tenaz</option>
            <option value="Actitud de servicio / disponibilidad">Actitud de servicio / disponibilidad</option>
            <option value="Adaptación al medio">Adaptación al medio</option>
            <option value="Comunicador asertivo">Comunicador asertivo</option>
            <option value="Estable emocionante">Estable emocionante</option>
            <option value="Emprendedor">Emprendedor</option>
            <option value="Buenas relacionesinterpersonales / sociabilidad">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="Trabajo en equipo">Trabajo en equipo</option>
            <option value="Me gusta leer">Me gusta leer</option>
            <option value="Disciplinado">Disciplinado</option>
            <option value="Puntual">Puntual</option>
            <option value="Estable Líder">Estable Líder</option>
            <option value="Observador">Observador</option>
        </select>
        <select id="Select9" name="seleccion" runat="server">
            <option value="Pensamiento Analítico">Pensamiento Analítico</option>
            <option value="Pensamiento Crítico">Pensamiento Crítico</option>
            <option value="Pensamiento Lógico">Pensamiento Lógico</option>
            <option value="Creativo">Creativo</option>
            <option value="Responsable">Responsable</option>
            <option value="Organizado / Ordenado">Organizado / Ordenado</option>
            <option value="Tomo decisiones propias">Tomo decisiones propias</option>
            <option value="Trabajo bajo presión y me gusta tomar retos">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="Activo / Participativo">Activo / Participativo</option>
            <option value="Percistente / Tenaz">Percistente / Tenaz</option>
            <option value="Actitud de servicio / disponibilidad">Actitud de servicio / disponibilidad</option>
            <option value="Adaptación al medio">Adaptación al medio</option>
            <option value="Comunicador asertivo">Comunicador asertivo</option>
            <option value="Estable emocionante">Estable emocionante</option>
            <option value="Emprendedor">Emprendedor</option>
            <option value="Buenas relacionesinterpersonales / sociabilidad">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="Trabajo en equipo">Trabajo en equipo</option>
            <option value="Me gusta leer">Me gusta leer</option>
            <option value="Disciplinado">Disciplinado</option>
            <option value="Puntual">Puntual</option>
            <option value="Estable Líder">Estable Líder</option>
            <option value="Observador">Observador</option>
        </select>

        <!--## Actividades Extracurriculares ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Actividad">¿En qué tipo de actividad deportiva, cultural, académica te gustaría participar?</label>
        <textarea id="Actividad" name="actividad" placeholder="Texto Aqui" runat="server"></textarea>

        <label for="Hobby">¿tienes algún hobby, pasatiempo o realizas alguna actividad extracurriculaeres?</label>
        <textarea id="Hobby" name="hobby" placeholder="Texto Aqui" runat="server"></textarea>

        <label for="Felicidad">Serías más feliz en el ITAM si</label>
        <textarea id="Felicidad" name="felicidad" placeholder="Texto Aqui" runat="server"></textarea>

        <label for="Recomendaciones">Recomendaciones o comentarios en general que quisiera hacernos</label>
        <textarea id="Recomendaciones" name="recomendaciones" placeholder="Texto Aqui" runat="server"></textarea>

        <asp:Button runat="server" ID="Button1" Text="Login" OnClick="Button1_Click1"></asp:Button>



    </form>
</body>
</html>
