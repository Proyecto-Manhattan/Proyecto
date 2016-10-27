﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Testing_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumnos</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body class="w3-itam-back">
<header class="w3-container w3-itam w3-border w3-round-small">
                    <div class="w3-itam w3-display-container">
                        <img src="img/itam.png" class="w3-image" style="max-height:100px;" alt="ITAM" >
                    </div>
        </header>
        <div class="w3container w3-display-middle " style="width:70%;">
  			<form class="w3-container" action="TestingAlumno.aspx">
        		<p>
        		<label class="w3-label w3-text-brown"><b>User:</b></label>
        		<input class="w3-input w3-border w3-sand" id="user" name="user" type="text" runat="server"/></p>
        		<p>
        		<label class="w3-label w3-text-brown"><b>Password:</b></label>
        		<input class="w3-input w3-border w3-sand" id="pwd" name="pwd" type="password" runat="server"/></p>
        		<p>
        		<button class="w3-btn w3-itam w3-round-large w3-card-8" runat="server">Register</button></p>
        	</form>
		</div>
		<footer class="w3-itam-black w3-bottom">
			<p class="w3-center">Derechos Reservados © ITAM, 2016</p>
		</footer>
</body>
</html>
