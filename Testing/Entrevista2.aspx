<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrevista2.aspx.cs" Inherits="Testing_img_Entrevista2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Entevista 1</title>
    <link href="css/styles.css" rel="stylesheet" />	
    <link href="css/EncuestaUno.css" rel="stylesheet" />

</head>
<body>
    <header class="w3-container">
                           <ul class="w3-navbar w3-light-green">
                    <li><a href="#" class="w3-padding-16 ">Home</a></li>
                    <li><a href="#" class="w3-padding-16 ">Link 1</a></li>
                    <li><a href="#" class="w3-padding-16 ">Link 2</a></li>
                    <li><a href="#" class="w3-padding-16 ">Link 3</a></li>
                    <li class="w3-navitem w3-right">
                      <input type="text" class="w3-input w3-border-0" placeholder="Search for claveUnicas.." id="myInput" onkeyup="myFunction()"/>
                    </li>
                    <li class="w3-navitem w3-right">
                      <input type="text" class="w3-input w3-border-0" placeholder="Search for names.." id="myInput2" onkeyup="myFunction2()"/>
                    </li>
                  </ul>

        </header>
    <form id="form1" runat="server">
    <div id="forma">
  <form action="action_page.php">
    
    <div class="img">
        <a target="_blank" href="img_fjords.jpg">
            <img class="media-object" src="img/no-user.png" alt="no-user">
        </a>
        <input type="file" name="file" id="file" class="inputfile" />
        <label for="file">Choose a file</label>     
    </div>
          
    <label for="claveUnica">Clave Unica</label>
    <input type="number" id="ClaveUnica" name="claveUnica">
    
    <label for="Nombre">Nombre</label>
    <input type="text" id="Nombre" name="nombre">
    
    <label for="Apellido">Apellido</label>
    <input type="text" id="Apellido" name="apellido">

    <label for="Edad">Edad</label>
    <input type="number" id="Edad" name="edad">
    
    <label for="Email">Email</label>
    <input type="text" id="Email" name="email">

    <label for="Telefono">Teléfono</label>
    <input type="number" id="Telefono" name="telefono">

     <!--Se podria poner mas paises-->
    <label for="Pais">País</label>
    <select id="Pais" name="pais">
      <option value="Mexico">México</option>
      <option value="Otro">otro</option>      
    </select>

    <label for="Estado">Estado</label>
    <select id="Estado" name="estado">
      <option value="Ciudad de Mexico">Ciudad de México</option>
      <option value="Otro">otro</option>      
    </select>

    <label for="Delegacion">Delegación</label>
    <select id="Delegacion" name="delegacion">
      <option value="Alvaro Obregon">Alvaro Obregon</option>
      <option value="Otro">otro</option>      
    </select>

    <!--No ha sido considerado-->
    <label for="Celular">Celular</label>
    <input type="number" id="Celular" name="celular">

    <!--Se podria poner javaScript para dar a elegir las opciones-->
    <!--la universidad se sobre entiende como la otra escuela-->
    <label for="Universidad">Universidad</label>
    <input type="text" id="Universidad" name="universidad">
     
     <!--Se entiende como queEstudia-->  
    <label for="Carrera">Carrera</label>
    <input type="text" id="Carrera" name="carrera">

    <label for="Preparatoria">Preparatoria</label>
    <input type="text" id="Preparatoria" name="preparatoria">

    <!--## Trabajo ##-->
    <!--Se podria poner javaScript para dar a elegir las opciones-->
    <label for="Trabajo">Trabajo</label>
    <input type="text" id="Trabajo" name="trabajo">

    <label for="LugarTrabajo">Lugar donde trabajas</label>
    <input type="text" id="LugarTrabajo" name="lugarTrabajo">

    <label for="Puesto">Puesto</label>
    <input type="text" id="Puesto" name="puesto">

    <!--## Ayuda Financiera ##-->
    <!--Se podria poner javaScript para dar a elegir las opciones-->
    <label for="AyudaFinanciera">Ayuda Financiera</label>
    <input type="text" id="AyudaFinanciera" name="ayudaFinanciera">

    <label for="PorcentajeBeca">Porcentaje de la beca</label>
    <input type="text" id="PorcentajeBeca" name="porcentajeBeca">

    <label for="PorcentajeAyudaFinanciera">Porcentaje de la ayuda financiera</label>
    <input type="text" id="PorcentajeAyudaFinanciera" name="porcentajeAyudaFinanciera">
    
    <!--## Actividades Extracurriculares ##-->
    <!--Se podria poner javaScript para dar a elegir las opciones-->
    <label for="Actividad">¿En qué tipo de actividad deportiva, cultural, académica te gustaría participar?</label>
    <textarea id="Actividad" name="actividad">Escribe el texto aquí</textarea>

    <label for="Hobby">¿tienes algún hobby, pasatiempo o realizas alguna actividad extracurriculaeres?</label>
    <textarea id="Hobby" name="hobby">Escribe el texto aquí</textarea>

    <label for="Felicidad">Serías más feliz en el ITAM si</label>
    <textarea id="Felicidad" name="felicidad">Escribe el texto aquí</textarea>

    <label for="Recomendaciones">Recomendaciones o comentarios en general que quisiera hacernos</label>
    <textarea id="Recomendaciones" name="recomendaciones">Escribe el texto aquí</textarea>
  
    <input type="submit" value="Submit">
  </form>
</div>

    </form>
</body>
</html>
