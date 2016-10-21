<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestingAlumno.aspx.cs" Inherits="Testing_TestingAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
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
        <div class="w3-row" id="cards" runat="server">

        </div>
    </div>

    <script>
        function myFunction() {
            var input, filter, cards, section, h3, i, input2;
            input = document.getElementById("myInput");
            input2 = document.getElementById("myInput2");
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
        function myFunction2() {
            var input, filter, cards, section, h3, i,input2;
            input = document.getElementById("myInput2");
            input2 = document.getElementById("myInput");
            input2.value = "";
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
</body>
</html>
