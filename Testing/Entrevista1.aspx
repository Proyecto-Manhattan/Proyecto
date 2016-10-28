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
        <input type="text" id="plis" name="plis" runat="server" />
        <label for="Nombre">Nombre</label>
        <input type="text" id="Nombre" name="nombre" runat="server">

        <label for="Apellido">Apellido</label>
        <input type="text" id="Apellido" name="apellido" runat="server">

        <label for="Edad">Edad</label>
        <input type="text" id="Edad" name="edad" runat="server">

        <label for="Email">Email</label>
        <input type="text" id="Email" name="email" runat="server">

        <label for="Telefono">Teléfono</label>
        <input type="text" id="Telefono" name="telefono" runat="server">

        <!--Se podria poner mas paises-->
        <label for="Pais">País</label>
        <select id="Pais" name="pais" runat="server">
            <option value="Mexico">México</option>
            <option value="Otro">otro</option>
        </select>

        <label for="Estado">Estado</label>
        <select id="Estado" name="estado" runat="server">
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
        <input type="text" id="Carrera" name="carrera" runat="server">

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
            <option value="1">Cercanía</option>
            <option value="1">Prestigio Académico</option>
            <option value="1">Plan de estudios</option>
            <option value="1">Algún familiar estudio(a) aquí</option>
            <option value="1">Plática/Visita en preparatoria o equivalente</option>
            <option value="1">La Orientadora Vocacional me la recomendó</option>
            <option value="1">Por su programa de becas</option>
            <option value="1">Porque no es una escuela masiva</option>
            <option value="1">Por sus instalaciones y servicios</option>
            <option value="1">Por sus horarios mixtos</option>
            <option value="1">No había otra opción</option>
        </select>
        <select id="Select2" name="seleccion" runat="server">
            <option value="2">Cercanía</option>
            <option value="2">Prestigio Académico</option>
            <option value="2">Plan de estudios</option>
            <option value="2">Algún familiar estudio(a) aquí</option>
            <option value="2">Plática/Visita en preparatoria o equivalente</option>
            <option value="2">La Orientadora Vocacional me la recomendó</option>
            <option value="2">Por su programa de becas</option>
            <option value="2">Porque no es una escuela masiva</option>
            <option value="2">Por sus instalaciones y servicios</option>
            <option value="2">Por sus horarios mixtos</option>
            <option value="2">No había otra opción</option>
        </select>
        <select id="Select3" name="seleccion" runat="server">
            <option value="3">Cercanía</option>
            <option value="3">Prestigio Académico</option>
            <option value="3">Plan de estudios</option>
            <option value="3">Algún familiar estudio(a) aquí</option>
            <option value="3">Plática/Visita en preparatoria o equivalente</option>
            <option value="3">La Orientadora Vocacional me la recomendó</option>
            <option value="3">Por su programa de becas</option>
            <option value="3">Porque no es una escuela masiva</option>
            <option value="3">Por sus instalaciones y servicios</option>
            <option value="3">Por sus horarios mixtos</option>
            <option value="3">No había otra opción</option>
        </select>

        <!--## ¿decision sobre el programa de compu ##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Seleccion">¿Por qué eligio el programa de computación?</label>
        <select id="Select4" name="seleccion" runat="server">
            <option value="1">Creo tener las habilidades para ser un buen administrador</option>
            <option value="1">Por su plan de estudios integral</option>
            <option value="1">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="1">Planeo tener mi propia empresa</option>
            <option value="1">Un familiar o conocido me recomendó el programa</option>
            <option value="1">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="1">Para poder trabajar en el negocio familiar</option>
            <option value="1">Otra</option>
        </select>
        <select id="Select5" name="seleccion" runat="server">
            <option value="2">Creo tener las habilidades para ser un buen administrador</option>
            <option value="2">Por su plan de estudios integral</option>
            <option value="2">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="2">Planeo tener mi propia empresa</option>
            <option value="2">Un familiar o conocido me recomendó el programa</option>
            <option value="2">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="2">Para poder trabajar en el negocio familiar</option>
            <option value="2">Otra</option>
        </select>
        <select id="Select6" name="seleccion" runat="server">
            <option value="3">Creo tener las habilidades para ser un buen administrador</option>
            <option value="3">Por su plan de estudios integral</option>
            <option value="3">Me interesa alguna área de concentración que ofrece el programa</option>
            <option value="3">Planeo tener mi propia empresa</option>
            <option value="3">Un familiar o conocido me recomendó el programa</option>
            <option value="3">Porque es una carrera que me permitirá desarrollarme profesionalmente en muchas áreas</option>
            <option value="3">Para poder trabajar en el negocio familiar</option>
            <option value="3">Otra</option>
        </select>

        <!--## Habilidades##-->
        <!--Se podria poner javaScript para dar a elegir las opciones-->
        <label for="Seleccion">¿Qué habilidades tiene?</label>
        <select id="Select7" name="seleccion" runat="server">
            <option value="1">Pensamiento Analítico</option>
            <option value="1">Pensamiento Crítico</option>
            <option value="1">Pensamiento Lógico</option>
            <option value="1">Creativo</option>
            <option value="1">Responsable</option>
            <option value="1">Organizado / Ordenado</option>
            <option value="1">Tomo decisiones propias</option>
            <option value="1">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="1">Activo / Participativo</option>
            <option value="1">Percistente / Tenaz</option>
            <option value="1">Actitud de servicio / disponibilidad</option>
            <option value="1">Adaptación al medio</option>
            <option value="1">Comunicador asertivo</option>
            <option value="1">Estable emocionante</option>
            <option value="1">Emprendedor</option>
            <option value="1">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="1">Trabajo en equipo</option>
            <option value="1">Me gusta leer</option>
            <option value="1">Disciplinado</option>
            <option value="1">Puntual</option>
            <option value="1">Estable Líder</option>
            <option value="1">Observador</option>
        </select>
        <select id="Select8" name="seleccion" runat="server">
            <option value="2">Pensamiento Analítico</option>
            <option value="2">Pensamiento Crítico</option>
            <option value="2">Pensamiento Lógico</option>
            <option value="2">Creativo</option>
            <option value="2">Responsable</option>
            <option value="2">Organizado / Ordenado</option>
            <option value="2">Tomo decisiones propias</option>
            <option value="2">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="2">Activo / Participativo</option>
            <option value="2">Percistente / Tenaz</option>
            <option value="2">Actitud de servicio / disponibilidad</option>
            <option value="2">Adaptación al medio</option>
            <option value="2">Comunicador asertivo</option>
            <option value="2">Estable emocionante</option>
            <option value="2">Emprendedor</option>
            <option value="2">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="2">Trabajo en equipo</option>
            <option value="2">Me gusta leer</option>
            <option value="2">Disciplinado</option>
            <option value="2">Puntual</option>
            <option value="2">Estable Líder</option>
            <option value="2">Observador</option>
        </select>
        <select id="Select9" name="seleccion" runat="server">
            <option value="3">Pensamiento Analítico</option>
            <option value="3">Pensamiento Crítico</option>
            <option value="3">Pensamiento Lógico</option>
            <option value="3">Creativo</option>
            <option value="3">Responsable</option>
            <option value="3">Organizado / Ordenado</option>
            <option value="3">Tomo decisiones propias</option>
            <option value="3">Trabajo bajo presión y me gusta tomar retos</option>
            <option value="3">Activo / Participativo</option>
            <option value="3">Percistente / Tenaz</option>
            <option value="3">Actitud de servicio / disponibilidad</option>
            <option value="3">Adaptación al medio</option>
            <option value="3">Comunicador asertivo</option>
            <option value="3">Estable emocionante</option>
            <option value="3">Emprendedor</option>
            <option value="3">Buenas relacionesinterpersonales / sociabilidad</option>
            <option value="3">Trabajo en equipo</option>
            <option value="3">Me gusta leer</option>
            <option value="3">Disciplinado</option>
            <option value="3">Puntual</option>
            <option value="3">Estable Líder</option>
            <option value="3">Observador</option>
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
