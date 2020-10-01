<%@ Page Language="C#" AutoEventWireup="true" CodeFile="psignup.aspx.cs" Inherits="Parents_psignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>MHSchoolmate</title>
 <%--       <link rel="stylesheet" href="css/normalize.css"/>--%>
        <%--<link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'/>--%>
      <%--  <link rel="stylesheet" href="css/main.css"/>--%>

       <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>

      <style>
          *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Montserrat', sans-serif;
  /*background-image: url(../images/banner1.jpg) ;*/
     background: url(../images/banner1.jpg) no-repeat center;
          background-color: #cccccc;
          background-size:cover;
          /*position:center;*/
           background-attachment: fixed;

}

/*form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  /*background: #f4f7f8;
  border-radius: 8px;
 

}*/



h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 5px;
  width: 100%;
  background-color: #e8eeef;
  color: black;  /*#8a97a0;*/
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 5px;
  font-family: 'Montserrat';
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

#regForm  {
	background: white;
    background:  linear-gradient(white,rgb(0, 9, 26));
	border: 0 none;
	border-radius: 6px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 30px;
	box-sizing: border-box;
	/*width: 80%;*/
	margin: 0 10%;
	/*stacking fieldsets above each other*/
	position: relative;

      min-width: 300px;
       max-width: 480px;
  /*margin: 10px auto;
  padding: 10px 20px;*/
  /*background: #f4f7f8;*/
  border-radius: 8px;

}



legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
   margin-top: 6px;
  margin-bottom: 2px;
  font-size:13px;
}

label.light {
  font-weight: 200;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  /*form {
    max-width: 480px;
  }*/

}
      </style>

      <style>

          /* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}


      </style>
    </head>
    <body>

    <%--  <form id="regForm" action="index.html" method="post">--%>
        <form runat="server">
      <div id="regForm">
        <h1>Sign Up</h1>
        

           <table>
                <tr>
                    <th>
                        <label style="width:100px; margin-left:0px; float:left; text-align:left">I am a:</label>
                    </th>
                    <th style="width:100%">
                           <select id="relation2student">
                               <option value="Parent">Parent</option>
                               <option value="Guardian">Guardian</option>
                            </select>
                    </th>
                </tr>

            </table>


           <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="tsurname">Surname:</label>
                    </th>
                    <th style="width:100%">
                          <%-- <input type="email"   id="SchEmail" name="user_schemail" placeholder="Enter email" runat="server"/>--%>
                            <asp:TextBox class="form-control" id="tsurname" placeholder="Surname" type="text" required="required" runat="server"></asp:TextBox>
                        </th>
                </tr>

            </table>

           <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="tfirstname">Firstname:</label>
                    </th>
                    <th style="width:100%">
                          <%-- <input type="email"   id="SchEmail" name="user_schemail" placeholder="Enter email" runat="server"/>--%>
                            <asp:TextBox class="form-control" id="tfirstname" placeholder="Firstname" type="text" required="required" runat="server"></asp:TextBox>
                        </th>
                </tr>

            </table>

              <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="temail">Email:</label>
                    </th>
                    <th style="width:100%">
                          <%-- <input type="email"   id="SchEmail" name="user_schemail" placeholder="Enter email" runat="server"/>--%>
                            <asp:TextBox class="form-control" id="temail" placeholder="Email" type="email" required="required" runat="server"></asp:TextBox>
                        </th>
                </tr>

            </table>

            <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="tPhone">Phone No:</label>
                    </th>
                     <th style="width:100%">
                           <input type="text" id="tPhone" name="user_schphone" required="required" placeholder="Phone number" runat="server"/>
                        </th>
                </tr>

            </table>

           <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="tpwd">Password:</label>
                    </th>
                     <th style="width:100%">
                           <input type="password" id="tpwd" required="required"  placeholder="Password" runat="server"/>
                        </th>
                </tr>

            </table>
           <table>
                <tr>
                    <th>
                          <label style="width:100px; margin-left:0px; float:left; text-align:left" for="tconfirm">Confirm Pwd:</label>
                    </th>
                     <th style="width:100%">
                           <input type="password" id="tconfirm"  required="required" placeholder="Confirm Password" runat="server"/>
                        </th>
                </tr>

            </table>
   


<div style="overflow:auto;margin-top:10px;">
    <div style="float:right;">
       
       
<table style="width:100%">
  <tr>
      <th style="padding:0; width:100%;">
           <button id="dHome" class="btn btn-warning" type="button" onclick="loadHome()" style="float:left ;margin-left:0px;width:100px; border-radius: 50px 20px">Return</button>
      
  </th>
      <th></th>
  
 <th>
     
      <input type="text" id="relation2student1" name="user_schphone"  runat="server" style="display:none;" /> 
      
       <asp:Button ID="btnDiversion" runat="server" class="btn btn-primary" Text="Submit" style="display:none; border-radius: 50px 20px;width:100px;  background-color:green" OnClick="btnDiversion_Click" />    <%--OnClick="btnDiversion_Click"--%>
       
        <button id="btnDiversion1"  class="btn btn-primary" type="button" style="margin-left:0px;width:100px; border-radius: 50px 20px; background-color:crimson" onclick="validateEntry()">Submit</button>
      
   
     
  </th> 
  </tr>
</table> 


  

    <div style="font-size:12px;color:white;text-align:center"> By this signup to have agreed to the <a class="signup__link" href="#">Term & Condition</a> </div>
          
    
    </div>
  </div>
          <script>
           function loadHome() {
        //***open page in new window
        //window.open("Default.aspx");
        //***open page in the smae window
        //window.location.assign("Default.aspx")

        window.history.back()

    }
</script>

 
          </div>
      </form>
   <style>
        footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;

  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  text-align: center;
  opacity:0.7;


  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
   </style>   
            <!-- Footer -->
<footer style="height:5px; text-align:left">
  SchoolMate&copy - a quality product of <a href="https://www.megahitsystems.com" data-toggle="tooltip" title="Visit Megahit Systems"><u> Megahit Systems</u></a> Since 2003   <a href="https://www.megahitsystems.com" data-toggle="tooltip" style="float:right" title="Legal"><u>Privacy Policy/Legal</u></a> 
</footer>

    </body>

    
<script>
    function validateEntry() {
         var x = document.getElementById("relation2student").selectedIndex;
        var y = document.getElementById("relation2student").options;

        document.getElementById("relation2student1").value = y[x].text.toString();
       
        if (document.getElementById("tpwd").value != document.getElementById("tconfirm").value) {
            alert("Password is not consistent!");
            return;
        }
       document.getElementById("btnDiversion").click();
    }




</script>



    <script>
        $(window).bind("load", function(){
            //alert(document.getElementById("countryId").value)
            //document.getElementById("countryId").value = "Nigeria";
 });
    </script>
</html>