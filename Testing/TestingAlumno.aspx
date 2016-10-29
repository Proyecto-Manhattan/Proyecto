<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestingAlumno.aspx.cs" Inherits="Testing_TestingAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body class="w3-pale-green">
        <header class="w3-container w3-itam w3-border w3-round-small">
                    <div class="w3-itam w3-display-container">
                        <img src="img/itam.png" class="w3-image" style="max-height:100px;" alt="ITAM" >
                        <div class="w3-display-right w3-container w3-right"><a href="sudo.aspx" id="home" runat="server">REGRESA</a></div>
                    </div>
                  <!--  <ul class="w3-navbar w3-light-green w3-collapse">
                    <li><a href="#" class="w3-padding-16 ">Link 1</a></li>
                    <li><a href="#" class="w3-padding-16 ">Link 2</a></li>
                    <li><a href="#" class="w3-padding-16 ">Link 3</a></li>
                    <li class="w3-navitem w3-right">
                      <input type="text" class="w3-input w3-border-0 " placeholder="Search for semestre.." id="myInput3" onkeyup="searchSemestre()"/>
                    </li>
                    <li class="w3-navitem w3-right">
                      <input type="text" class="w3-input w3-border-0 " placeholder="Search for claveUnicas.." id="myInput" onkeyup="searchClave()"/>
                    </li>
                    <li class="w3-navitem w3-right">
                      <input type="text" class="w3-input w3-border-0 " placeholder="Search for names.." id="myInput2" onkeyup="searchNombre()"/>
                    </li>
                  </ul>-->
                    <div class="w3-row-padding w3-section">
                          <div class="w3-col m3 l3 w3-center ">
                              <input type="text" class="w3-input w3-border-0 w3-border w3-border-black" placeholder="Search for semestre.." id="myInput3" onkeyup="searchSemestre()"/>
                          </div>
                          <div class="w3-col m3 l3 w3-center ">
                              <input type="text" class="w3-input w3-border-0 w3-border w3-border-black" placeholder="Search for claveUnicas.." id="myInput" onkeyup="searchClave()"/>
                          </div>
                          <div class="w3-col m3 l3 w3-center ">
                              <input type="text" class="w3-input w3-border-0 w3-border w3-border-black" placeholder="Search for names.." id="myInput2" onkeyup="searchNombre()"/>
                          </div>
                        <div class="w3-col m3 l3 w3-center ">
                            <a href="Entrevista1.aspx" class=" w3-block w3-input w3-border-0 w3-border w3-border-black w3-light-grey w3-text-black w3-round-xlarge w3-hover-lime w3-hover-text-black">Agrega</a>
                          </div>
                     </div>

        </header>
        
    <div  class="w3-container">
        <div class="w3-row" id="cards" runat="server">

                <!--
                     =================
                    Inserción de alumnos
                     =================
                -->
    
        </div>
    </div>
    
    <script>
        function searchClave() {
            var input, filter, cards, section, h3, i, input2,input3;
            input = document.getElementById("myInput");
            input2 = document.getElementById("myInput2");
            input3 = document.getElementById("myInput3");
            input3.value = "";
            input2.value = ""; 
            filter = input.value.toUpperCase();
            cards = document.getElementById("cards");
            section = cards.getElementsByTagName("section");
            for (i = 0; i < section.length; i++) {
                h3 = section[i].getElementsByTagName("h3");
                if (h3[0].innerHTML.toUpperCase().indexOf(filter) > -1) {
                    section[i].style.display = "";
                } else {
                    section[i].style.display = "none";
                }
            }
           
           
        }
</script>
    <script>
        function searchNombre() {
            var input, filter, cards, section, h3, i,input2,input3;
            input = document.getElementById("myInput2");
            input2 = document.getElementById("myInput");
            input3 = document.getElementById("myInput3");
            input2.value = "";
            input3.value = "";
            filter = input.value.toUpperCase();
            cards = document.getElementById("cards");
            section = cards.getElementsByTagName("section");
            for (i = 0; i < section.length; i++) {
                h3 = section[i].getElementsByTagName("h5");
                if (h3[0].innerHTML.toUpperCase().indexOf(filter) > -1) {
                    section[i].style.display = "";
                } else {
                    section[i].style.display = "none";
                }
            }


        }
</script>
 <script>
        function searchSemestre() {
            var input, filter, cards, section, h3, i,input2,input3;
            input = document.getElementById("myInput3");
            input2 = document.getElementById("myInput2");
            input3 = document.getElementById("myInput");
            input2.value = "";
            input3.value = "";
            filter = input.value.toUpperCase();
            cards = document.getElementById("cards");
            section = cards.getElementsByTagName("section");
            for (i = 0; i < section.length; i++) {
                h3 = section[i].getElementsByTagName("h4");
                if (h3[0].innerHTML.toUpperCase().indexOf(filter) > -1) {
                    section[i].style.display = "";
                } else {
                    section[i].style.display = "none";
                }
            }


        }
</script>
</body>
</html>
