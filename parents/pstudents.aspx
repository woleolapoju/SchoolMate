<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pstudents.aspx.cs" Inherits="parents_pstudents" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>MH SchoolMate</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Megahit Systems,School mate, SchoolMate,Olapoju,Oluwole, Free School Software, Education Management Software" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }


  @media (max-width: 600px) {
    #firstCarousal {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }

    .dropdown-menu li a {
      color:white; /*!important;*/

  }

  }


  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 10;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000; /*!important;*/
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;


  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  text-align: center;


  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }

</style>

<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}
</style>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <%--    <button class="navbar-toggle navbar-toggler-right" type="button" data-toggle="collapse" data-target="#myNavbar" >
          Menu
          <i class="fa fa-bars"></i>
        </button>--%>

      <a class="navbar-brand" href="#myPage" style="letter-spacing:1px">MegaHit SchoolMate</a>
    </div>

   <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">

          <li><a id="navClients" href="#"><asp:Label runat="server" ID="lblusername">??</asp:Label></a></li>
          <%--<li><a href="Default.aspx">HOME</a></li>--%>
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MY ACCOUNT
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a  href="#myPage">Profile</a></li>
            <li><a href="#">My Wards</a></li>
            <li><a href="#">Change Password</a></li> 
          </ul>
        </li>
        <li><a href="\parents\pmain.aspx">HOME</a></li>
        <li><a id="navLogoff" href="\Default.aspx">SIGN OUT</a></li>
      </ul>
    </div>
  </div>
</nav>
    <style>
.center {
  margin: auto;
  width: 60%;
  border: 2px solid #2d2d30;
  padding: 10px;
  min-width:400px
}
</style>
    <div id="maindiv" runat="server" style="margin-top:60px" class="center">
   
 <a href="\parents\pstudents.aspx">
          <div style="border-radius:10%;border:thin;width:80px;border-color: #2d2d30"> <img src="\images\App\paddstudent.png" alt="Add Student" style="width:40px;padding-bottom:-10px" />
            <h6 style="padding-top:-10px">Add Student</h6>

          </div>
 </a>
        <h3>List of your wards</h3>
<div class="tab" id="tabbuttons" runat="server">
  <%--<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">London</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>--%>
</div>

<%--<div id="London" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>London</h3>
  <p>London is the capital city of England.</p>
</div>--%>


</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

           <!-- Footer -->
<footer style="height:5px; text-align:left">
  SchoolMate&copy - a quality product of <a href="https://www.megahitsystems.com" data-toggle="tooltip" title="Visit Megahit Systems"><u> Megahit Systems</u></a> Since 2003   <a href="https://www.megahitsystems.com" data-toggle="tooltip" style="float:right" title="Legal"><u>Privacy Policy/Legal</u></a> 
</footer>
</body>
</html> 

