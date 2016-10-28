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
    <header class="w3-container w3-itam w3-border w3-round-small">
        <div class="w3-itam w3-display-container">
            <img src="img/itam.png" class="w3-image" style="max-height: 100px;" alt="ITAM">
            <div class="w3-display-right w3-container w3-right"><a href="TestingAlumno.aspx" id="home" runat="server">REGRESA</a></div>
        </div>
    </header>
    <form id="form1" runat="server">
    <div id="forma">
    
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
  
    <asp:Button runat="server" ID="Button1" Text="Login" OnClick="Button1_Click1"></asp:Button>
</div>

    </form>
</body>
</html>
