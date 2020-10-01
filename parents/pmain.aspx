﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pmain.aspx.cs" Inherits="Parents_pmain" %>

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




</head>

<body >


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

          <li><a id="navClients" href="#">Welcome: <asp:Label runat="server" ID="lblusername">??</asp:Label></a></li>
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
        <li><a id="navLogoff" href="\Default.aspx">SIGN OUT</a></li>
      </ul>
    </div>
  </div>
</nav>


    <style>
img {
  /*border-radius: 50%;*/
  /*background-color:darkgrey;*/
 
}
.responsive {
   width:50%;
  height: auto;
}
  .col-md-3 {
    width: 25%;
  }
    .col-md-6 {
    width: 50%;
  }
</style>

    <form id="form1" runat="server">
    <div>


<div id="services" class="text-center" style="margin-top:60px">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title" style="background-color:lightgray">

        <h2> <p style="text-align:center;color:beige">Welcome to your portal</p></h2>
    
     <h4> <p style="text-align:justify">Managing your wards school information just got easier, students in different schools are brought together and their records are managed under one 'roof'. <em> Use one login to access students' infor in different schools</em></p></h4>
    </div>
  <br />
      <br />

   
     <br />
       <h4> 
           <p  class="col-md-8 col-md-offset-2 section-title" style="text-align:justify;color:crimson;"><asp:label ID="lblregisteredstudent" runat="server">You have 0 student registered</asp:label></p></h4>
      <br />

         <hr width="50%" />

    <div class="row">
      <a href="\parents\pstudents.aspx">
          <div class="col-xs-6 col-md-3"> <img src="\images\App\paddstudent.png" alt="Add Student" style="width:40px" />
            <h4>Add Student</h4>
            <p style="text-align:center;color:black;">Add and maintain your ward's profiles</p>
          </div>
       </a>
        <a href="\parents\psignup.aspx">
      <div class="col-xs-6 col-md-3"> <img src="\images\App\paccounts.png" alt="Student Accounts" style="width:40px"  />
        <h4>Accounts</h4>
        <p style="text-align:center;color:black;">Student accounts and payments</p> 
      </div>
            </a>
        <a href="\parents\psignup.aspx">
      <div class="col-xs-6 col-md-3">  <img src="\images\App\pacademicprogress.png" alt="Add academic progress" style="width:40px"  />
        <h4>Academic Progress</h4>
        <p style="text-align:center;color:black;">View your wards' academic progress</p>
      </div>
             </a>
        <a href="\parents\psignup.aspx">
                <div class="col-xs-6 col-md-3">  <img src="\images\App\precord.png" alt="Add academic progress" style="width:40px"  />
                <h4>Academic Records</h4>
                <p style="text-align:center;color:black;">Records of Transcripts, Enrollments etc</p>
              </div>
             </a>
        <a href="\parents\psignup.aspx">
                     <div class="col-xs-6 col-md-3">  <img src="\images\App\padmissions.png" alt="Add academic progress" style="width:40px"  />
                    <h4>Admissions</h4>
                    <p style="text-align:center;color:black;">Place and Track admission applications</p>
                  </div>
             </a>
        <a href="\parents\psignup.aspx">
                  <div class="col-xs-6 col-md-3">  <img src="\images\App\pcontactus.png" alt="Add academic progress" style="width:40px"  />
                <h4>Contact School</h4>
                <p style="text-align:center;color:black;">Reach out to the school</p>
              </div>
             </a>
        <%--<a href="\parents\psignup.aspx">
              <div class="col-xs-6 col-md-3"> <i class="fa fa-wrench"></i>
                <h4>Maintenance & Repairs</h4>
                <p style="text-align:center;color:black;">Our Hardware depart provides maintenance services on all computer equipment and pheripherals.</p> <!--We have modern diagnostic tools in our stock</p>-->
              </div>
             </a>--%>

        
    </div>
       <hr width="50%" />
  </div>
</div>

  
    </div>
    </form>
    <!-- Footer -->
<footer style="height:5px; text-align:left">
  SchoolMate&copy - a quality product of <a href="https://www.megahitsystems.com" data-toggle="tooltip" title="Visit Megahit Systems"><u> Megahit Systems</u></a> Since 2003   <a href="https://www.megahitsystems.com" data-toggle="tooltip" style="float:right" title="Legal"><u>Privacy Policy/Legal</u></a> 
</footer>
</body>
</html>
