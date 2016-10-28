<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlumnoGrande.aspx.cs" Inherits="Testing_AlumnoGrande" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/AlumnoGrandeStyle.css"/>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    
</head>
<body class"w3-light-grey">
    <header class="w3-container w3-itam w3-border w3-round-small">
        <div class="w3-itam w3-display-container">
            <img src="img/itam.png" class="w3-image" style="max-height: 100px;" alt="ITAM">
            <div class="w3-display-right w3-container w3-right"><a id="home" runat="server" href="TestingAlumno.aspx" target="_self">REGRESA</a></div>
        </div>
    </header> 
    <!-- Page Container -->
    <div class='w3-container w3-content w3-margin-top' id='contenedor'>
        <!-- The Grid -->
        <div class='w3-row-padding'>
            <div class="w3-row" id="Div1" runat="server">
                <div id="columnaIzq" runat="server">
                    <!--
                     =================
                     Inserción de columnaIzq alumnos grande
                     =================
                    -->
                </div>
                <!-- Right Column -->
                <div class='w3-twothird'>
                    <div id="tarjetaUno" runat="server">                   
                    <!--
                     =================
                     Inserción de Tarjeta1 a alumnos grande
                     =================
                    -->
                    </div>
                    <div id="tarjetaDos" runat="server">                   
                    <!--
                     =================
                     Inserción de Tarjeta2 a alumnos grande
                     =================
                    -->
                    </div>
                    <div id="tarjetaTres" runat="server">                   
                    <!--
                     =================
                     Inserción de Tarjeta3 a alumnos grande
                     =================
                    -->
                    </div>
                     <div id="tarjetaTresCinco" runat="server">                   
                    <!--
                     =================
                     Inserción de Tarjeta3 a alumnos grande
                     =================
                    -->
                    </div>
                     <div id="tarjetaCuatro" runat="server">                   
                    <!--
                     =================
                     Inserción de Tarjeta4 a alumnos grande
                     =================
                    -->
                    </div>
                </div> 
             </div>           
        <!-- End Grid -->         
        </div>   
    <!-- End Page Container -->     
    </div>
</body>
</html>

