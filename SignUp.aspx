<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

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
        
     <%--   <fieldset>--%>
        <%--  <legend><span class="number">1</span>Basic info</legend>--%>
        <label for="job">Version Type:</label>
        <select id="versiontype" name="user_job"  >
          <optgroup label="FREE Version">
            <option value="Basic">Basic</option>
          </optgroup>
          <optgroup label="Paid Version">
            <option value="Pro">Pro</option>
            <option value="Premuim">Premuim</option>
          </optgroup>
        </select>


          <label for="Schname">School Name:</label>
          <input type="text" id="Schname" name="user_schname" placeholder="Enter school name" required="required" runat="server"/>
          
          
          <label for="SchLicense">Regulator Licence#:</label>
           <input type="text" id="SchLicense" name="user_schlicense" placeholder="Enter school licence #" required="required" runat="server"/>


             <label for="schAddr">Address:</label>
              <textarea id="schAddr" name="user_schaddr"  placeholder="Enter school address" required="required"  runat="server"></textarea>
        <table>
                <tr>
                    <th>
                          <label style="width:120px; margin-left:0px; float:left" for="countryId">Country:</label>
                    </th>
                    <th>
                         <select name="country" class="countries order-alpha group-continents group-order-alpha" id="countryId" runat="server" >
                                 <option value="">Select country</option>
                        </select>
                        </th>
                </tr>

            </table>
            
            
             <table>
                <tr>
                    <th>
                          <label  style="width:120px; float:left" for="state">City/State:</label>
                    </th>
                     <th style="width:100%">
                        <select name="state" style="width:100%" class="states order-alpha" id="stateId" runat="server">
                                <option value="">Select state</option>
                        </select>
                        </th>
                </tr>

            </table>

            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
            <script src="//geodata.solutions/includes/countrystate.js"></script>

              <table>
                <tr>
                    <th>
                          <label style="width:120px; margin-left:0px; float:left" for="SchEmail">Email:</label>
                    </th>
                    <th style="width:100%">
                          <%-- <input type="email"   id="SchEmail" name="user_schemail" placeholder="Enter email" runat="server"/>--%>
                            <asp:TextBox class="form-control" id="email" placeholder="Email" type="email" required="required" runat="server"></asp:TextBox>
                        </th>
                </tr>

            </table>

            <table>
                <tr>
                    <th>
                          <label style="width:120px; margin-left:0px; float:left" for="SchPhone">Official Phone:</label>
                    </th>
                     <th style="width:100%">
                           <input type="text" id="SchPhone" name="user_schphone" placeholder="Enter school phone" runat="server"/>
                        </th>
                </tr>

            </table>


<%--<select name="country" id="country">
<option value="0" label="Select a country … " selected="selected">Select a country …       </option>
<optgroup id="country-optgroup-Africa" label="Africa">
<option value="DZ" label="Algeria">Algeria</option>
<option value="AO" label="Angola">Angola</option>
<option value="BJ" label="Benin">Benin</option>
<option value="BW" label="Botswana">Botswana</option>
<option value="BF" label="Burkina Faso">Burkina Faso</option>
<option value="BI" label="Burundi">Burundi</option>
<option value="CM" label="Cameroon">Cameroon</option>
<option value="CV" label="Cape Verde">Cape Verde</option>
<option value="CF" label="Central African Republic">Central African Republic</option>
<option value="TD" label="Chad">Chad</option>
<option value="KM" label="Comoros">Comoros</option>
<option value="CG" label="Congo - Brazzaville">Congo - Brazzaville</option>
<option value="CD" label="Congo - Kinshasa">Congo - Kinshasa</option>
<option value="CI" label="Côte d’Ivoire">Côte d’Ivoire</option>
<option value="DJ" label="Djibouti">Djibouti</option>
<option value="EG" label="Egypt">Egypt</option>
<option value="GQ" label="Equatorial Guinea">Equatorial Guinea</option>
<option value="ER" label="Eritrea">Eritrea</option>
<option value="ET" label="Ethiopia">Ethiopia</option>
<option value="GA" label="Gabon">Gabon</option>
<option value="GM" label="Gambia">Gambia</option>
<option value="GH" label="Ghana">Ghana</option>
<option value="GN" label="Guinea">Guinea</option>
<option value="GW" label="Guinea-Bissau">Guinea-Bissau</option>
<option value="KE" label="Kenya">Kenya</option>
<option value="LS" label="Lesotho">Lesotho</option>
<option value="LR" label="Liberia">Liberia</option>
<option value="LY" label="Libya">Libya</option>
<option value="MG" label="Madagascar">Madagascar</option>
<option value="MW" label="Malawi">Malawi</option>
<option value="ML" label="Mali">Mali</option>
<option value="MR" label="Mauritania">Mauritania</option>
<option value="MU" label="Mauritius">Mauritius</option>
<option value="YT" label="Mayotte">Mayotte</option>
<option value="MA" label="Morocco">Morocco</option>
<option value="MZ" label="Mozambique">Mozambique</option>
<option value="NA" label="Namibia">Namibia</option>
<option value="NE" label="Niger">Niger</option>
<option value="NG" label="Nigeria">Nigeria</option>
<option value="RW" label="Rwanda">Rwanda</option>
<option value="RE" label="Réunion">Réunion</option>
<option value="SH" label="Saint Helena">Saint Helena</option>
<option value="SN" label="Senegal">Senegal</option>
<option value="SC" label="Seychelles">Seychelles</option>
<option value="SL" label="Sierra Leone">Sierra Leone</option>
<option value="SO" label="Somalia">Somalia</option>
<option value="ZA" label="South Africa">South Africa</option>
<option value="SD" label="Sudan">Sudan</option>
<option value="SZ" label="Swaziland">Swaziland</option>
<option value="ST" label="São Tomé and Príncipe">São Tomé and Príncipe</option>
<option value="TZ" label="Tanzania">Tanzania</option>
<option value="TG" label="Togo">Togo</option>
<option value="TN" label="Tunisia">Tunisia</option>
<option value="UG" label="Uganda">Uganda</option>
<option value="EH" label="Western Sahara">Western Sahara</option>
<option value="ZM" label="Zambia">Zambia</option>
<option value="ZW" label="Zimbabwe">Zimbabwe</option>
</optgroup>
<optgroup id="country-optgroup-Americas" label="Americas">
<option value="AI" label="Anguilla">Anguilla</option>
<option value="AG" label="Antigua and Barbuda">Antigua and Barbuda</option>
<option value="AR" label="Argentina">Argentina</option>
<option value="AW" label="Aruba">Aruba</option>
<option value="BS" label="Bahamas">Bahamas</option>
<option value="BB" label="Barbados">Barbados</option>
<option value="BZ" label="Belize">Belize</option>
<option value="BM" label="Bermuda">Bermuda</option>
<option value="BO" label="Bolivia">Bolivia</option>
<option value="BR" label="Brazil">Brazil</option>
<option value="VG" label="British Virgin Islands">British Virgin Islands</option>
<option value="CA" label="Canada">Canada</option>
<option value="KY" label="Cayman Islands">Cayman Islands</option>
<option value="CL" label="Chile">Chile</option>
<option value="CO" label="Colombia">Colombia</option>
<option value="CR" label="Costa Rica">Costa Rica</option>
<option value="CU" label="Cuba">Cuba</option>
<option value="DM" label="Dominica">Dominica</option>
<option value="DO" label="Dominican Republic">Dominican Republic</option>
<option value="EC" label="Ecuador">Ecuador</option>
<option value="SV" label="El Salvador">El Salvador</option>
<option value="FK" label="Falkland Islands">Falkland Islands</option>
<option value="GF" label="French Guiana">French Guiana</option>
<option value="GL" label="Greenland">Greenland</option>
<option value="GD" label="Grenada">Grenada</option>
<option value="GP" label="Guadeloupe">Guadeloupe</option>
<option value="GT" label="Guatemala">Guatemala</option>
<option value="GY" label="Guyana">Guyana</option>
<option value="HT" label="Haiti">Haiti</option>
<option value="HN" label="Honduras">Honduras</option>
<option value="JM" label="Jamaica">Jamaica</option>
<option value="MQ" label="Martinique">Martinique</option>
<option value="MX" label="Mexico">Mexico</option>
<option value="MS" label="Montserrat">Montserrat</option>
<option value="AN" label="Netherlands Antilles">Netherlands Antilles</option>
<option value="NI" label="Nicaragua">Nicaragua</option>
<option value="PA" label="Panama">Panama</option>
<option value="PY" label="Paraguay">Paraguay</option>
<option value="PE" label="Peru">Peru</option>
<option value="PR" label="Puerto Rico">Puerto Rico</option>
<option value="BL" label="Saint Barthélemy">Saint Barthélemy</option>
<option value="KN" label="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
<option value="LC" label="Saint Lucia">Saint Lucia</option>
<option value="MF" label="Saint Martin">Saint Martin</option>
<option value="PM" label="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
<option value="VC" label="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
<option value="SR" label="Suriname">Suriname</option>
<option value="TT" label="Trinidad and Tobago">Trinidad and Tobago</option>
<option value="TC" label="Turks and Caicos Islands">Turks and Caicos Islands</option>
<option value="VI" label="U.S. Virgin Islands">U.S. Virgin Islands</option>
<option value="US" label="United States">United States</option>
<option value="UY" label="Uruguay">Uruguay</option>
<option value="VE" label="Venezuela">Venezuela</option>
</optgroup>
<optgroup id="country-optgroup-Asia" label="Asia">
<option value="AF" label="Afghanistan">Afghanistan</option>
<option value="AM" label="Armenia">Armenia</option>
<option value="AZ" label="Azerbaijan">Azerbaijan</option>
<option value="BH" label="Bahrain">Bahrain</option>
<option value="BD" label="Bangladesh">Bangladesh</option>
<option value="BT" label="Bhutan">Bhutan</option>
<option value="BN" label="Brunei">Brunei</option>
<option value="KH" label="Cambodia">Cambodia</option>
<option value="CN" label="China">China</option>
<option value="CY" label="Cyprus">Cyprus</option>
<option value="GE" label="Georgia">Georgia</option>
<option value="HK" label="Hong Kong SAR China">Hong Kong SAR China</option>
<option value="IN" label="India">India</option>
<option value="ID" label="Indonesia">Indonesia</option>
<option value="IR" label="Iran">Iran</option>
<option value="IQ" label="Iraq">Iraq</option>
<option value="IL" label="Israel">Israel</option>
<option value="JP" label="Japan">Japan</option>
<option value="JO" label="Jordan">Jordan</option>
<option value="KZ" label="Kazakhstan">Kazakhstan</option>
<option value="KW" label="Kuwait">Kuwait</option>
<option value="KG" label="Kyrgyzstan">Kyrgyzstan</option>
<option value="LA" label="Laos">Laos</option>
<option value="LB" label="Lebanon">Lebanon</option>
<option value="MO" label="Macau SAR China">Macau SAR China</option>
<option value="MY" label="Malaysia">Malaysia</option>
<option value="MV" label="Maldives">Maldives</option>
<option value="MN" label="Mongolia">Mongolia</option>
<option value="MM" label="Myanmar [Burma]">Myanmar [Burma]</option>
<option value="NP" label="Nepal">Nepal</option>
<option value="NT" label="Neutral Zone">Neutral Zone</option>
<option value="KP" label="North Korea">North Korea</option>
<option value="OM" label="Oman">Oman</option>
<option value="PK" label="Pakistan">Pakistan</option>
<option value="PS" label="Palestinian Territories">Palestinian Territories</option>
<option value="YD" label="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option>
<option value="PH" label="Philippines">Philippines</option>
<option value="QA" label="Qatar">Qatar</option>
<option value="SA" label="Saudi Arabia">Saudi Arabia</option>
<option value="SG" label="Singapore">Singapore</option>
<option value="KR" label="South Korea">South Korea</option>
<option value="LK" label="Sri Lanka">Sri Lanka</option>
<option value="SY" label="Syria">Syria</option>
<option value="TW" label="Taiwan">Taiwan</option>
<option value="TJ" label="Tajikistan">Tajikistan</option>
<option value="TH" label="Thailand">Thailand</option>
<option value="TL" label="Timor-Leste">Timor-Leste</option>
<option value="TR" label="Turkey">Turkey</option>
<option value="™" label="Turkmenistan">Turkmenistan</option>
<option value="AE" label="United Arab Emirates">United Arab Emirates</option>
<option value="UZ" label="Uzbekistan">Uzbekistan</option>
<option value="VN" label="Vietnam">Vietnam</option>
<option value="YE" label="Yemen">Yemen</option>
</optgroup>
<optgroup id="country-optgroup-Europe" label="Europe">
<option value="AL" label="Albania">Albania</option>
<option value="AD" label="Andorra">Andorra</option>
<option value="AT" label="Austria">Austria</option>
<option value="BY" label="Belarus">Belarus</option>
<option value="BE" label="Belgium">Belgium</option>
<option value="BA" label="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
<option value="BG" label="Bulgaria">Bulgaria</option>
<option value="HR" label="Croatia">Croatia</option>
<option value="CY" label="Cyprus">Cyprus</option>
<option value="CZ" label="Czech Republic">Czech Republic</option>
<option value="DK" label="Denmark">Denmark</option>
<option value="DD" label="East Germany">East Germany</option>
<option value="EE" label="Estonia">Estonia</option>
<option value="FO" label="Faroe Islands">Faroe Islands</option>
<option value="FI" label="Finland">Finland</option>
<option value="FR" label="France">France</option>
<option value="DE" label="Germany">Germany</option>
<option value="GI" label="Gibraltar">Gibraltar</option>
<option value="GR" label="Greece">Greece</option>
<option value="GG" label="Guernsey">Guernsey</option>
<option value="HU" label="Hungary">Hungary</option>
<option value="IS" label="Iceland">Iceland</option>
<option value="IE" label="Ireland">Ireland</option>
<option value="IM" label="Isle of Man">Isle of Man</option>
<option value="IT" label="Italy">Italy</option>
<option value="JE" label="Jersey">Jersey</option>
<option value="LV" label="Latvia">Latvia</option>
<option value="LI" label="Liechtenstein">Liechtenstein</option>
<option value="LT" label="Lithuania">Lithuania</option>
<option value="LU" label="Luxembourg">Luxembourg</option>
<option value="MK" label="Macedonia">Macedonia</option>
<option value="MT" label="Malta">Malta</option>
<option value="FX" label="Metropolitan France">Metropolitan France</option>
<option value="MD" label="Moldova">Moldova</option>
<option value="MC" label="Monaco">Monaco</option>
<option value="ME" label="Montenegro">Montenegro</option>
<option value="NL" label="Netherlands">Netherlands</option>
<option value="NO" label="Norway">Norway</option>
<option value="PL" label="Poland">Poland</option>
<option value="PT" label="Portugal">Portugal</option>
<option value="RO" label="Romania">Romania</option>
<option value="RU" label="Russia">Russia</option>
<option value="SM" label="San Marino">San Marino</option>
<option value="RS" label="Serbia">Serbia</option>
<option value="CS" label="Serbia and Montenegro">Serbia and Montenegro</option>
<option value="SK" label="Slovakia">Slovakia</option>
<option value="SI" label="Slovenia">Slovenia</option>
<option value="ES" label="Spain">Spain</option>
<option value="SJ" label="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
<option value="SE" label="Sweden">Sweden</option>
<option value="CH" label="Switzerland">Switzerland</option>
<option value="UA" label="Ukraine">Ukraine</option>
<option value="SU" label="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option>
<option value="GB" label="United Kingdom">United Kingdom</option>
<option value="VA" label="Vatican City">Vatican City</option>
<option value="AX" label="Åland Islands">Åland Islands</option>
</optgroup>
<optgroup id="country-optgroup-Oceania" label="Oceania">
<option value="AS" label="American Samoa">American Samoa</option>
<option value="AQ" label="Antarctica">Antarctica</option>
<option value="AU" label="Australia">Australia</option>
<option value="BV" label="Bouvet Island">Bouvet Island</option>
<option value="IO" label="British Indian Ocean Territory">British Indian Ocean Territory</option>
<option value="CX" label="Christmas Island">Christmas Island</option>
<option value="CC" label="Cocos [Keeling] Islands">Cocos [Keeling] Islands</option>
<option value="CK" label="Cook Islands">Cook Islands</option>
<option value="FJ" label="Fiji">Fiji</option>
<option value="PF" label="French Polynesia">French Polynesia</option>
<option value="TF" label="French Southern Territories">French Southern Territories</option>
<option value="GU" label="Guam">Guam</option>
<option value="HM" label="Heard Island and McDonald Islands">Heard Island and McDonald Islands</option>
<option value="KI" label="Kiribati">Kiribati</option>
<option value="MH" label="Marshall Islands">Marshall Islands</option>
<option value="FM" label="Micronesia">Micronesia</option>
<option value="NR" label="Nauru">Nauru</option>
<option value="NC" label="New Caledonia">New Caledonia</option>
<option value="NZ" label="New Zealand">New Zealand</option>
<option value="NU" label="Niue">Niue</option>
<option value="NF" label="Norfolk Island">Norfolk Island</option>
<option value="MP" label="Northern Mariana Islands">Northern Mariana Islands</option>
<option value="PW" label="Palau">Palau</option>
<option value="PG" label="Papua New Guinea">Papua New Guinea</option>
<option value="PN" label="Pitcairn Islands">Pitcairn Islands</option>
<option value="WS" label="Samoa">Samoa</option>
<option value="SB" label="Solomon Islands">Solomon Islands</option>
<option value="GS" label="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option>
<option value="TK" label="Tokelau">Tokelau</option>
<option value="TO" label="Tonga">Tonga</option>
<option value="TV" label="Tuvalu">Tuvalu</option>
<option value="UM" label="U.S. Minor Outlying Islands">U.S. Minor Outlying Islands</option>
<option value="VU" label="Vanuatu">Vanuatu</option>
<option value="WF" label="Wallis and Futuna">Wallis and Futuna</option>
</optgroup>
</select>--%>

   


           <div style="overflow:auto;margin-top:10px;">
    <div style="float:right;">
       
       
<table style="width:100%">
  <tr>
      <th style="padding:0; width:100%;">
           <button id="dHome" class="btn btn-warning" type="button" onclick="loadHome()" style="float:left ;margin-left:0px;width:100px; border-radius: 50px 20px">Return</button>
      
  </th>
      <th></th>
  
 <th>
     
      <input type="text" id="versiontype1" name="user_schphone" placeholder="Enter school phone" runat="server" style="display:none;"/>
      <input type="text" id="countryId1" name="user_schphone" placeholder="Enter school phone" runat="server" style="display:none;"/>
     <input type="text" id="stateId1" name="user_schphone" placeholder="Enter school phone" runat="server" style="display:none;"/>
      <input type="text" id="Text2" name="user_schphone" placeholder="Enter school phone" runat="server" style="display:none;"/>
       <asp:Button ID="btnDiversion" runat="server" class="btn btn-primary" Text="Submit" style="display:none; border-radius: 50px 20px;width:100px;  background-color:green" OnClick="btnDiversion_Click" />  
       
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
      
    </body>

    
<script>
    function validateEntry() {
       
        var x = document.getElementById("versiontype").selectedIndex;
        var y = document.getElementById("versiontype").options;

        var x1 = document.getElementById("countryId").selectedIndex;
        var y1 = document.getElementById("countryId").options;

        var x2 = document.getElementById("stateId").selectedIndex;
        var y2 = document.getElementById("stateId").options;

        document.getElementById("versiontype1").value = y[x].text.toString();
        document.getElementById("countryId1").value = y1[x1].text.toString();
        document.getElementById("stateId1").value = y2[x2].text.toString();

        
       if (document.getElementById("countryId").value == "" || document.getElementById("stateId").value == "") {
            alert("Country and State must be filled out");
     
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