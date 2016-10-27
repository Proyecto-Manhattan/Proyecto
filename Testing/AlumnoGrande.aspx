<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlumnoGrande.aspx.cs" Inherits="Testing_AlumnoGrande" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/AlumnoGrandeStyle.css">	
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
        
    <div  class="w3-container">
        <div class="w3-row" id="vista" runat="server">

                <!--
                     =================
                    Inserción de alumnos grande
                     =================
                -->
    
        </div>
    </div>
</body>
</html>

