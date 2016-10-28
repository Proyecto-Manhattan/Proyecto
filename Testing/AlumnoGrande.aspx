<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlumnoGrande.aspx.cs" Inherits="Testing_AlumnoGrande" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/AlumnoGrandeStyle.css"/>	
</head>
<body class"w3-light-grey">
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

                </div> 
             </div>           
        <!-- End Grid -->         
        </div>   
    <!-- End Page Container -->     
    </div>
</body>
</html>

