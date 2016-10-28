<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrevista1.aspx.cs" Inherits="Testing_Entrevista1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Entevista 1</title>
    <link href="css/styles.css" rel="stylesheet" />	
    <link href="css/EncuestaUno.css" rel="stylesheet" />

</head>
<body class="w3-pale-green">
     <header class="w3-container w3-itam w3-border w3-round-small">
                    <div class="w3-itam w3-display-container">
                        <img src="img/itam.png" class="w3-image" style="max-height:100px;" alt="ITAM" >
                        <div class="w3-display-right w3-container w3-right"><a href="TestingAlumno.aspx" id="home" runat="server">REGRESA</a></div>
                    </div>
        </header>
    <form id="form1" runat="server" class="w3-pale-green">

    <div class="img">
            <img class="media-object" src="img/no-user.png" alt="no-user">
        <input type="file" name="file" id="file" class="inputfile" runat="server"/>
        <label for="file">Choose a file</label>     
    </div>
     <label for="plis">Clave Unica</label>     
    <input type="text" id="plis" name="plis" runat="server"/>
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

    <asp:button  runat="server" id="Button1" Text="Login" OnClick="Button1_Click1"></asp:button>
 


    </form>
</body>
</html>
