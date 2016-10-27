<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrevista2.aspx.cs" Inherits="Testing_img_Entrevista2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Entevista 2</title>
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
    
    <!--## Sentimientos ##-->    
    <label for="Sentimientos">¿Cómo se ha sentido en términos generales, en el ITAM?</label>
    <textarea id="Sentimientos" name="sentimientos">Escribe el texto aquí</textarea>
    
    <!--## Baja ##-->
    <label for="Baja">¿Se ha dado de baja de alguna materia? ¿Cúal o cúales?</label>
    <textarea id="Baja" name="baja">Escribe el texto aquí</textarea>

    <!--## Examenes ##-->
    <label for="Examenes">¿Cómo le ha ido en sus exámenes? ¿Le ha funcionado su metodología de estudio?</label>
    <textarea id="Examenes" name="examenes">Escribe el texto aquí</textarea>

    <!--## Actividad ##-->
    <label for="Actividad">¿Participa en alguna actividad extra-curricular? ¿Cuál?</label>
    <textarea id="Actividad" name="actividad">Escribe el texto aquí</textarea>

    <!--## Expectativas ##-->
    <label for="Expectativas">¿Han cambiado sus expectativas con respecto al ITAM?</label>
    <textarea id="Expectativas" name="expectativas">Escribe el texto aquí</textarea>

    <!--## ExpectativasPrograma ##-->
    <label for="ExpectativasPrograma">¿Han cambiado sus expectativas con respecto al programa de Ingeniería en Computacion?</label>
    <textarea id="ExpectativasPrograma" name="expectativasPrograma">Escribe el texto aquí</textarea>

    <!--## AlgoritmosProgramas ##-->
    <label for="AlgoritmosProgramas">¿Cómo consideras la metodología utilizada y el contenido de Algoritmos y Programas de Ingeniería en Computación?</label>
    <textarea id="AlgoritmosProgramas" name="algoritmosProgramas">Escribe el texto aquí</textarea>

    <!--## MejoraAlgoritmosProgramas ##-->
    <label for="MejoraAlgoritmosProgramas">¿Qué sugerirías para mejorar la materia de Algoritmos y Programas?</label>
    <textarea id="MejoraAlgoritmosProgramas" name="mejoraAlgoritmosProgramas">Escribe el texto aquí</textarea>

    <!--## Comentarios ##-->
    <label for="Comentarios">¿Comentarios Generales?</label>
    <textarea id="Comentarios" name="comentarios">Escribe el texto aquí</textarea>
  
    <input type="submit" value="Submit">
  </form>
</div>

    </form>
</body>
</html>
