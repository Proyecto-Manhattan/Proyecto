<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestingAlumno.aspx.cs" Inherits="Testing_TestingAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="w3-container">
  <h2>Card Example</h2>

  <div class="w3-card-8 w3-dark-grey" style="width:50%">

    <div class="w3-container w3-center">
      <h3>Friend Request</h3>
      <img src="img/avatar_png.png" alt="Avatar" style="width:80%"/>
      <h5 id="claveUnica">CLAVE UNICA</h5>
        <div class="w3-progress-container">
  <div id="myBar" class="w3-progressbar w3-green w3-round-xlarge" style="width:25%">
    <div class="w3-center w3-text-white">25%</div>
  </div>
</div>
        <div class="w3-progress-container">
  <div id="Div1" class="w3-progressbar w3-red w3-round-xlarge" style="width:25%">
    <div class="w3-center w3-text-white">25%</div>
  </div>
</div>
        <div class="w3-progress-container">
  <div id="Div2" class="w3-progressbar w3-blue w3-round-xlarge" style="width:25%">
    <div class="w3-center w3-text-white">25%</div>
  </div>
</div>
        <div class="w3-progress-container">
  <div id="Div3" class="w3-progressbar w3-green w3-round-xlarge" style="width:25%">
    <div class="w3-center w3-text-white">25%</div>
  </div>
</div>
      <div class="w3-section">
        <button class="w3-btn w3-green">Accept</button>
        <button class="w3-btn w3-red">Decline</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>
