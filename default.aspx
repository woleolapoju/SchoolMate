<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>MH SchoolMate</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Megahit Systems,School mate, SchoolMate,Olapoju,Oluwole, Free School Software, Education Management Software" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <%--    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">--%>

  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      /*padding: 80px 120px;*/
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    #firstCarousal {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
      #secondCarousal {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
        #thirdCarousal {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
     #btn1 {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
      #btn2 {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
       #btn3 {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }


        
    #OtherRmk {
  display: none;
    }


     #testimonials {
         display: none;
     }

     #navClients{
         display: none;
     }

     
       .dropdown-menu li a {
      color:white; /*!important;*/

  }

     /*#myCarousel {
         height:70%;

     }*/



      /*.carousel-inner img {
          -webkit-filter: grayscale(90%);
          filter: grayscale(90%);
          width: 100%;
          height: 70%;
          margin: auto;
      }*/
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 80%;
      margin:auto;
      height: 400px;
      -webkit-filter: grayscale(0%);
      filter: grayscale(0%);
      margin-bottom:20px;
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


   <%-- Testimonials--%>
    <style>

         #testimonials {
    background: url(../images/TestimonialBg.jpg) no-repeat center;
    background-attachment: fixed;

        }


    #testimonials {
      -webkit-filter: grayscale(0%);
      filter:0%; /* make all photos black and white  
      /*width: 100%; 
       Set width to 100% 
      margin: auto;*/
  }

       .team-w3ls-txt h6 {
        font-size: 1.3em;
        color:white;
       
    }
    .team-text {
        min-height: 240px;
        padding: 93px 30px 52px;
    }



  .testi-grids img {
    display: inline-block;
    /*-webkit-border-radius: 50%;*/
    /*border-radius: 50%;*/
    /*-moz-border-radius: 50%;*/
    text-decoration: none;
    z-index: 1;
    -webkit-transition: .5s all;
    -moz-transition: .5s all;
    transition: .5s all;
    height: 70px;
    width:100px;
     -webkit-filter: grayscale(0%);
      filter: grayscale(0%); /* make all photos black and white */ 
    
}

  .testi-grids {
    padding: 2em 0 3em;
    position: relative;
    margin: 1em auto;
    width: 78%;
    text-align: right;
}

.testi-main {
    padding: 0;
}

.testi-grids:before,
.testi-grids.t2:before {
    content: '';
    border: 2px outset rgba(255, 255, 255, 0.16);
    position: absolute;
    width: 100%;
    height: 89%;
    top: -5px;
}





.testi-grids:before {
    left: -11%;
}

.testi-grids.t2:before {
    left: 11%;
}

.testi-grids.t2 {
    text-align: left;
}

/* about-gallery */

.carousel1 {
    margin-bottom: 0;
}

/* The controlsy */

.carousel1-control {
    left: auto;
    height: 25px;
    width: 25px;
    background: none repeat scroll 0 0 #34c663;
    /* border: 4px solid #ffffff; */
    line-height: 1.2;
    font-size: 19px;
}

.carousel1-control {
    color: #fff;
}

a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
    border-color: #a51c21;
}

.carousel-control1:hover,
.carousel-control1:focus,
.carousel-control1:active {
    color: #fff;
    text-decoration: none;
    filter: alpha(opacity=90);
    outline: 0;
    opacity: .9;
}

.carousel-control1.right {
    right: 47%;
    top: 44%;
}

.carousel-control1.left {
    left: 47%;
    top: 44%;
}

a.right.carousel1-control.test-right-control1 {
    left: 52%;
}

/* The indicators */

.carousel1-indicators {
    bottom: -30px;
}

.carousel1-inner>.item>img,
.carousel1-inner>.item>a>img {
    width: 100%;
}

.carousel1-control span {
    margin-top: 13em;
}


        @media screen and (max-width: 1366px) {
            .ab1-text {
                margin-left: 0.5em;
                padding-right: 0;
            }

                .ab1-text h5 {
                    margin-bottom: 7px;
                }
        }
        @media screen and (max-width: 1080px) {

             .testi-grids {
        width: 77%;
    }
        }

        @media screen and (max-width: 991px) {
            .rad-txt {
                font-size: 1.5em;
            }

              .carousel1-control.left {
        left: 45%;
        top: 46.6%;
    }
    .carousel1-control.right {
        right: 47%;
        top: 46.6%;
    }
        }

        @media screen and (max-width: 667px) {
        .rad-txt {
        font-size: 1.4em;
    }
        
          .carousel1-control.right {
        right: 45%;
    }
            
        
        }
        @media screen and (max-width: 480px) {
             .carousel1-control.right {
        right: 42%;
    }
        }
        @media screen and (max-width: 384px) {
          
            .rad-txt {
                font-size: 1.3em;
            }
        }


        @media screen and (max-width: 414px) {

      .testi-grids {
        width: 70%;
            }

       .testi-grids {
        width: 75%;
    }
    .carousel1-control.right {
        right: 39%;
    }

        }
        @media screen and (max-width: 375px) {
            .about-bottom.section span.abtext {
                display: block;
                width: 63%;
                margin-top: 10px;
            }
            .rad-txt {
                margin-bottom: 1.2em;
            }

        
            .img-testi {
                padding: 0;
            }


        }

        @media screen and (max-width: 320px) {
          
            .rad-txt {
                font-size: 1.2em;
            }

            .carousel1-control.right {
                right: 35%;
            }
        }


/* The colour of the indicators */

/* //testimonials */

/*--contact--*/

.contact {
    background: #ededed;
}

.contact-right {
    text-align: right;
}

.contact-form {
    padding: 10px;
    background: #fff;
}


h4.rad-txt span.abtxt1 {
    color: #000000;
    background: #f7c052;
    padding: 5px 19px;
    border-radius: 20px 0px 0 20px;
}

span.abtext {
    color: #ffffff;
    background: #e85342;
    padding: 5px 19px;
    border-radius: 0 20px 20px 0;
}

    </style>

    
   <%--   /* Fixed/sticky icon bar (vertically aligned 50% from the top of the screen) */--%>
<style>


.iconbar {
        position: fixed;
        right: 0;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
    }

.fa:hover {
    opacity: 0.7;
}

/* Style the icon bar links */
.iconbar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;

}

/* Style the social media icons with color, if you want */
.iconbar a:hover {
  background-color: #000;
}


.fa-facebook {
  background: #3B5998;
  color: white;
}


.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
}

.fa-snapchat-ghost {
  background: #fffc00;
  color: white;
  text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}

.fa-skype {
  background: #00aff0;
  color: white;
}

.fa-android {
  background: #a4c639;
  color: white;
}

.fa-dribbble {
  background: #ea4c89;
  color: white;
}

.fa-vimeo {
  background: #45bbff;
  color: white;
}

.fa-tumblr {
  background: #2c4762;
  color: white;
}

.fa-vine {
  background: #00b489;
  color: white;
}

.fa-foursquare {
  background: #45bbff;
  color: white;
}

.fa-stumbleupon {
  background: #eb4924;
  color: white;
}

.fa-flickr {
  background: #f40083;
  color: white;
}

.fa-yahoo {
  background: #430297;
  color: white;
}

.fa-soundcloud {
  background: #ff5500;
  color: white;
}

.fa-reddit {
  background: #ff5700;
  color: white;
}

.fa-rss {
  background: #ff6600;
  color: white;
}
</style>



   <%-- Card for Wole Olapoju--%>
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
   font-family: Montserrat;
    /*text-decoration: none;*/
  font-size: 22px;
  color: black


}



</style>


      <%-- for login form--%>
<style>


    @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);
.pad-top-20 {
  padding-top: 20px;
}
.pad-btm-20 {
  padding-bottom: 20px;
}
.pad-sep-20 {
  padding-top: 20px;
  padding-bottom: 20px;
}
.pad-top-40 {
  padding-top: 40px;
}
.pad-btm-40 {
  padding-bottom: 40px;
}
.pad-sep-40 {
  padding-top: 40px;
  padding-bottom: 40px;
}
.pad-top-60 {
  padding-top: 60px;
}
.pad-btm-60 {
  padding-bottom: 60px;
}
.pad-sep-60 {
  padding-top: 60px;
  padding-bottom: 60px;
}
.pad-top-80 {
  padding-top: 80px;
}
.pad-btm-80 {
  padding-bottom: 80px;
}
.pad-sep-80 {
  padding-top: 80px;
  padding-bottom: 80px;
}
.pad-top-100 {
  padding-top: 100px;
}
.pad-btm-100 {
  padding-bottom: 100px;
}
.pad-sep-100 {
  padding-top: 100px;
  padding-bottom: 100px;
}
/*html,*/
/*body {
  height: 100%;
}
body {
  margin: 0;
  padding: 0;
  color: #fff;
  overflow: hidden;
  background-color: #222;
  font-size: 14px;
  position: relative;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}*/
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  font-weight: 300;
  color: #22a7f0;
}
.fix-middle {
  position: absolute;
  padding: 10px;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  z-index: 3;
}
.dialog {
  color: #222;
  -webkit-perspective: 1200px;
  -moz-perspective: 1200px;
  -ms-perspective: 1200px;
  -o-perspective: 1200px;
  perspective: 1200px;
  z-index: 1000;
  opacity: 1;
  visibility: visible;
  -webkit-transition: opacity 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -moz-transition: opacity 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -ms-transition: opacity 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  transition: opacity 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
   visibility:hidden;
}

.dialog,
.dialog .dialog-front,
.dialog .dialog-back {
  width: auto;
  position: absolute;
  top: 50%;
  left: 50%;
  padding: 0;
  margin: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
.dialog.dialog-effect-in {
  -webkit-animation: showDialog 1000ms linear both;
  -moz-animation: showDialog 1000ms linear both;
  -ms-animation: showDialog 1000ms linear both;
  animation: showDialog 1000ms linear both;
}
.dialog.shakeit {
  -webkit-animation: shakeDialog 300ms linear both;
  -moz-animation: shakeDialog 300ms linear both;
  -ms-animation: shakeDialog 300ms linear both;
  animation: shakeDialog 300ms linear both;
}
.dialog .dialog-content {
  width: 300px;
  background: #fff;
  /* Old browsers */
  background: -moz-radial-gradient(center, ellipse cover, #ffffff 59%, #e5e5e5 100%);
  /* FF3.6+ */
  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(59%, #ffffff), color-stop(100%, #e5e5e5));
  /* Chrome,Safari4+ */
  background: -webkit-radial-gradient(center, ellipse cover, #ffffff 59%, #e5e5e5 100%);
  /* Chrome10+,Safari5.1+ */
  background: -o-radial-gradient(center, ellipse cover, #ffffff 59%, #e5e5e5 100%);
  /* Opera 12+ */
  background: -ms-radial-gradient(center, ellipse cover, #ffffff 59%, #e5e5e5 100%);
  /* IE10+ */
  background: radial-gradient(ellipse at center, #ffffff 59%, #e5e5e5 100%);
  /* W3C */
  border-radius: 6px;
  -webkit-box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.6);
  -moz-box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.6);
  -ms-box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.6);
  box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.6);
  padding: 20px 25px;
}
.dialog .dialog-front,
.dialog .dialog-back {
  -webkit-transform-style: preserve-3d;
  -moz-transform-style: preserve-3d;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -ms-backface-visibility: hidden;
  backface-visibility: hidden;
  -webkit-transition: all 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -moz-transition: all 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -ms-transition: all 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  transition: all 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9);
}
.dialog .dialog-front {
  -webkit-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -moz-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -ms-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -o-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  z-index: 900;
}
.dialog .dialog-back {
  -webkit-transform: translate(-50%, -50%) rotateY(-180deg);
  -moz-transform: translate(-50%, -50%) rotateY(-180deg);
  -ms-transform: translate(-50%, -50%) rotateY(-180deg);
  -o-transform: translate(-50%, -50%) rotateY(-180deg);
  z-index: 800;
}
.dialog.flip .dialog-front {
  z-index: 800;
  visibility: hidden;
  -webkit-transform: translate(-50%, -50%) rotateY(180deg);
  -moz-transform: translate(-50%, -50%) rotateY(180deg);
  -ms-transform: translate(-50%, -50%) rotateY(180deg);
  -o-transform: translate(-50%, -50%) rotateY(180deg);
}
.dialog.flip .dialog-back {
  z-index: 900;
  visibility: visible;
  -webkit-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -moz-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -ms-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
  -o-transform: translate(-50%, -50%) rotateX(0deg) rotateY(0deg);
}
.dialog.dialog-effect-out {
  z-index: 1;
  opacity: 0;
  visibility: hidden;
}
.dialog.dialog-effect-out .dialog-front {
  -webkit-transform: translate(-50%, -20%) rotateX(-30deg);
  -moz-transform: translate(-50%, -20%) rotateX(-30deg);
  -ms-transform: translate(-50%, -20%) rotateX(-30deg);
  -o-transform: translate(-50%, -20%) rotateX(-30deg);
}
.dialog.dialog-effect-out .dialog-back {
  -webkit-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(-180deg);
  -moz-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(-180deg);
  -ms-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(-180deg);
  -o-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(-180deg);
}
.dialog.dialog-effect-out.flip .dialog-front {
  -webkit-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(180deg);
  -moz-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(180deg);
  -ms-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(180deg);
  -o-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(180deg);
}
.dialog.dialog-effect-out.flip .dialog-back {
  -webkit-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(0deg);
  -moz-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(0deg);
  -ms-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(0deg);
  -o-transform: translate(-50%, -20%) rotateX(-30deg) rotateY(0deg);
}
.dialog.dialog-effect-out .dialog-content {
  background: #00b16a;
}
.dialog.dialog-effect-out .dialog-content .dialog-form {
  visibility: hidden;
}
.dialog .dialog-form {
  -webkit-animation: swooshUp30 300ms linear both;
  -moz-animation: swooshUp30 300ms linear both;
  -ms-animation: swooshUp30 300ms linear both;
  animation: swooshUp30 300ms linear both;
  -webkit-animation-delay: 300ms;
  -moz-animation-delay: 300ms;
  -ms-animation-delay: 300ms;
  animation-delay: 300ms;
}
.dialog .dialog-form legend {
  margin-bottom: 40px;
  font-size: 26px;
  font-weight: 300;
  color: #222;
  border-bottom: none;
}
.dialog .dialog-form .form-group {
  margin-bottom: 20px;
  position: relative;
}
.dialog .dialog-form .form-group .form-control {
  color: #222;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #222;
  border-radius: 0;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  -ms-box-shadow: none;
  box-shadow: none;
}
.dialog .dialog-form .form-group label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: 700;
}
.dialog .dialog-form .form-group.has-error .error-msg {
  display: block;
}
.dialog .dialog-form .form-group.has-error label {
  color: #e74c3c;
}
.dialog .dialog-form .form-group.has-error .form-control {
  border-color: #e74c3c;
}
.dialog .dialog-form .form-group .checkbox label {
  padding-left: 40px;
}
.dialog .dialog-form .form-group .checkbox input[type="checkbox"] {
  width: 20px;
  height: 20px;
  background: none;
  border: 2px solid #222;
  margin-left: -40px;
  -webkit-appearance: none;
  appearance: none;
}
.dialog .dialog-form .form-group .checkbox input[type="checkbox"]:hover {
  background-color: #e6e6e6;
}
.dialog .dialog-form .form-group .checkbox input[type="checkbox"]:checked {
  background-color: #222;
}
.dialog .dialog-form .form-group .checkbox input[type="checkbox"]:disabled {
  background-color: #6f6f6f;
  border-color: #555555;
}
.dialog .dialog-form .error-msg {
  position: absolute;
  top: 50%;
  left: 0;
  right: auto;
  background-color: #e74c3c;
  color: #fff;
  padding: 10px;
  z-index: 3;
  max-width: 150px;
  border-radius: 3px;
  -webkit-transform: translate(-110%, -50%);
  -moz-transform: translate(-110%, -50%);
  -ms-transform: translate(-110%, -50%);
  transform: translate(-110%, -50%);
  -webkit-animation: swooshleft 200ms ease-in-out both;
  -moz-animation: swooshleft 200ms ease-in-out both;
  -ms-animation: swooshleft 200ms ease-in-out both;
  animation: swooshleft 200ms ease-in-out both;
  display: none;
}
.dialog .dialog-form .error-msg:after {
  position: absolute;
  content: "";
  top: 50%;
  right: 0;
  -webkit-transform: translate(97%, -50%);
  -moz-transform: translate(97%, -50%);
  -ms-transform: translate(97%, -50%);
  transform: translate(97%, -50%);
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 10px 0 10px 10px;
  border-color: transparent transparent transparent #e74c3c;
}
.dialog .dialog-form .btn {
  font-weight: 700;
  border-width: 0;
  border-radius: 0;
  text-transform: uppercase;
  -webkit-transition: all 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -moz-transition: all 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -ms-transition: all 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  transition: all 0.2s cubic-bezier(0.25, 0.5, 0.5, 0.9);
}
.dialog .dialog-form .btn.btn-default {
  color: #fff;
  background-color: #446cb3;
  margin: 0 -10%;
  width: 120%;
  outline: none;
}
.dialog .dialog-form .btn.btn-default:hover {
  background-color: #222;
  color: #fff;
}
.dialog .dialog-form .btn.btn-default:active,
.dialog .dialog-form .btn.btn-default:focus {
  background-color: #222;
  color: #fff;
}
@-webkit-keyframes swooshUp30 {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
@-moz-keyframes swooshUp30 {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
@keyframes swooshUp30 {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
@-webkit-keyframes swooshleft {
  0% {
    -webkit-transform: translate(-90%, -50%);
    -moz-transform: translate(-90%, -50%);
    -ms-transform: translate(-90%, -50%);
    transform: translate(-90%, -50%);
  }
  100% {
    -webkit-transform: translate(-110%, -50%);
    -moz-transform: translate(-110%, -50%);
    -ms-transform: translate(-110%, -50%);
    transform: translate(-110%, -50%);
  }
}
@-moz-keyframes swooshleft {
  0% {
    -webkit-transform: translate(-90%, -50%);
    -moz-transform: translate(-90%, -50%);
    -ms-transform: translate(-90%, -50%);
    transform: translate(-90%, -50%);
  }
  100% {
    -webkit-transform: translate(-110%, -50%);
    -moz-transform: translate(-110%, -50%);
    -ms-transform: translate(-110%, -50%);
    transform: translate(-110%, -50%);
  }
}
@keyframes swooshleft {
  0% {
    -webkit-transform: translate(-90%, -50%);
    -moz-transform: translate(-90%, -50%);
    -ms-transform: translate(-90%, -50%);
    transform: translate(-90%, -50%);
  }
  100% {
    -webkit-transform: translate(-110%, -50%);
    -moz-transform: translate(-110%, -50%);
    -ms-transform: translate(-110%, -50%);
    transform: translate(-110%, -50%);
  }
}
@-webkit-keyframes shakeDialog {
  0% {
    left: 51%;
  }
  25% {
    left: 49%;
  }
  50% {
    left: 51%;
  }
  100% {
    left: 50%;
  }
}
@-moz-keyframes shakeDialog {
  0% {
    left: 51%;
  }
  25% {
    left: 49%;
  }
  50% {
    left: 51%;
  }
  100% {
    left: 50%;
  }
}
@keyframes shakeDialog {
  0% {
    left: 51%;
  }
  25% {
    left: 49%;
  }
  50% {
    left: 51%;
  }
  100% {
    left: 50%;
  }
}
/* Generated with Bounce.js. Edit at https://goo.gl/KtDT8H */
@-webkit-keyframes showDialog {
  0% {
    -webkit-transform: matrix3d(0.8, 0, 0, 0, 0, 0.8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.8, 0, 0, 0, 0, 0.8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  7.61% {
    -webkit-transform: matrix3d(0.907, 0, 0, 0, 0, 0.907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.907, 0, 0, 0, 0, 0.907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  11.41% {
    -webkit-transform: matrix3d(0.948, 0, 0, 0, 0, 0.948, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.948, 0, 0, 0, 0, 0.948, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  15.12% {
    -webkit-transform: matrix3d(0.976, 0, 0, 0, 0, 0.976, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.976, 0, 0, 0, 0, 0.976, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  18.92% {
    -webkit-transform: matrix3d(0.996, 0, 0, 0, 0, 0.996, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.996, 0, 0, 0, 0, 0.996, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  22.72% {
    -webkit-transform: matrix3d(1.008, 0, 0, 0, 0, 1.008, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.008, 0, 0, 0, 0, 1.008, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  30.23% {
    -webkit-transform: matrix3d(1.014, 0, 0, 0, 0, 1.014, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.014, 0, 0, 0, 0, 1.014, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  50.25% {
    -webkit-transform: matrix3d(1.003, 0, 0, 0, 0, 1.003, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.003, 0, 0, 0, 0, 1.003, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  70.27% {
    -webkit-transform: matrix3d(0.999, 0, 0, 0, 0, 0.999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.999, 0, 0, 0, 0, 0.999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  100% {
    -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
}
@keyframes showDialog {
  0% {
    -webkit-transform: matrix3d(0.8, 0, 0, 0, 0, 0.8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.8, 0, 0, 0, 0, 0.8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  7.61% {
    -webkit-transform: matrix3d(0.907, 0, 0, 0, 0, 0.907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.907, 0, 0, 0, 0, 0.907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  11.41% {
    -webkit-transform: matrix3d(0.948, 0, 0, 0, 0, 0.948, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.948, 0, 0, 0, 0, 0.948, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  15.12% {
    -webkit-transform: matrix3d(0.976, 0, 0, 0, 0, 0.976, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.976, 0, 0, 0, 0, 0.976, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  18.92% {
    -webkit-transform: matrix3d(0.996, 0, 0, 0, 0, 0.996, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.996, 0, 0, 0, 0, 0.996, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  22.72% {
    -webkit-transform: matrix3d(1.008, 0, 0, 0, 0, 1.008, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.008, 0, 0, 0, 0, 1.008, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  30.23% {
    -webkit-transform: matrix3d(1.014, 0, 0, 0, 0, 1.014, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.014, 0, 0, 0, 0, 1.014, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  50.25% {
    -webkit-transform: matrix3d(1.003, 0, 0, 0, 0, 1.003, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1.003, 0, 0, 0, 0, 1.003, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  70.27% {
    -webkit-transform: matrix3d(0.999, 0, 0, 0, 0, 0.999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(0.999, 0, 0, 0, 0, 0.999, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
  100% {
    -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
  }
}
#successful_login,
#successful_registration {
  opacity: 0;
  visibility: hidden;
  -webkit-transition: opacity 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.6s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -moz-transition: opacity 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.6s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  -ms-transition: opacity 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.6s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  transition: opacity 0.4s cubic-bezier(0.25, 0.5, 0.5, 0.9), visibility 0.6s cubic-bezier(0.25, 0.5, 0.5, 0.9);
}
#successful_login.active,
#successful_registration.active {
  opacity: 1;
  visibility: visible;
}


</style>

     <script>

      // The "getFormData()" function retrieves the names and values of each input field in the form;

      function getFormData(form) {
          var data = {};
          $(form)
            .find("input, select")
            .each(function () {
                if (this.tagName.toLowerCase() == "input") {
                    if (this.type.toLowerCase() == "checkbox") {
                        data[this.name] = this.checked;
                    } else if (this.type.toLowerCase() != "submit") {
                        data[this.name] = this.value;
                    }
                } else {
                    data[this.name] = this.value;
                }
            });
          return data;
      }

      // The "addFormError()" function, when called, adds the "error" class to the form-group that wraps around the "formRow" attribute;

      function addFormError(formRow, errorMsg) {
          var errorMSG = '<span class="error-msg">' + errorMsg + "</span>";
          $(formRow)
            .parents(".form-group")
            .addClass("has-error");
          $(formRow)
            .parents(".form-group")
            .append(errorMSG);
          $("#dialog").removeClass("dialog-effect-in");
          $("#dialog").addClass("shakeit");
          setTimeout(function () {
              $("#dialog").removeClass("shakeit");
          }, 300);
      }

      // FORM HANDLER:

      // form_name - This attribute ties the form-handler function to the form you want to submit through ajax. Requires an ID (ex: #myfamousid)
      // custom_validation -

      function form_handler(
        form_name,
        custom_validation,
        success_message,
        error_message,
        success_function,
        error_function
      ) {
          $(form_name)
            .find('input[type="submit"]')
            .on("click", function (e) {
                // if submit button is clicked

                window.onbeforeunload = null; // cancels the alert message for unsaved changes (if such function exists)

                $(form_name)
                  .find(".form-group .error-msg")
                  .remove();
                var submitButton = this;
                submitButton.disabled = true; // Disables the submit buttton until the rows pass validation or we get a response from the server.

                var form = $(form_name)[0];
                // The custom validation function must return true or false.
                if (custom_validation != null) {
                    if (!custom_validation(form, getFormData(form))) {
                        submitButton.disabled = false;
                        return false;
                    }
                }
                e.preventDefault(); //STOP default action
            });
          $(document).click(function (e) {
              // Whenever the user clicks inside the form, the error messages will be removed.
              if ($(e.target).closest(form_name).length) {
                  $(form_name)
                    .find(".form-group")
                    .removeClass("has-error");
                  setTimeout(function () {
                      $(form_name)
                        .find(".form-group .error-msg")
                        .remove();
                  }, 300);
              } else {
                  return;
              }
          });
      }

      // LOGIN FORM: Validation function
      function validate_login_form(form, data) {
          if (data.user_username == "") {
              // if username variable is empty
              addFormError(form["user_username"], "The username is invalid");
              return false; // stop the script if validation is triggered
          }

          if (data.user_password == "") {
              // if password variable is empty
              addFormError(form["user_password"], "The password is invalid");
              return false; // stop the script if validation is triggered
          }

          $("#dialog")
            .removeClass("dialog-effect-in")
            .removeClass("shakeit");
          $("#dialog").addClass("dialog-effect-out");

          $("#successful_login").addClass("active");
          //return true;
      }

      // REGISTRATION FORM: Validation function
      function validate_registration_form(form, data) {
          if (data.user_username == "") {
              // if username variable is empty
              addFormError(form["user_username"], "The username is invalid");
              return false; // stop the script if validation is triggered
          }

          if (data.user_password == "") {
              // if password variable is empty
              addFormError(form["user_password"], "The password is invalid");
              return false; // stop the script if validation is triggered
          }

          if (
            data.user_cnf_password == "" ||
            data.user_password != data.user_cnf_password
          ) {
              // if password variable is empty
              addFormError(form["user_cnf_password"], "The passwords don't match");
              return false; // stop the script if validation is triggered
          }

          if (!data.user_terms) {
              // if password variable is empty
              addFormError(
                form["user_terms"],
                "You need to read and accept the Terms and Conditions before proceeding"
              );
              return false; // stop the script if validation is triggered
          }

          $("#dialog")
            .removeClass("dialog-effect-in")
            .removeClass("shakeit");
          $("#dialog").addClass("dialog-effect-out");

          $("#successful_registration").addClass("active");
          //return true;
      }

      form_handler(
        "#login_form",
        validate_login_form,
        null,
        null,
        null,
        null,
        null,
        null
      );
      form_handler(
        "#register_form",
        validate_registration_form,
        null,
        null,
        null,
        null,
        null,
        null
      );

      var dialogBox = $("#dialog");

      dialogBox.on("click", "a.user-actions", function () {
          dialogBox.toggleClass("flip");
      });

      $("#successful_login,#successful_registration").on(
        "click",
        "a.dialog-reset",
        function () {
            $("#successful_login,#successful_registration").removeClass("active");
            dialogBox.removeClass("dialog-effect-out").addClass("dialog-effect-in");
            document.getElementById("login_form").reset();
            document.getElementById("register_form").reset();
        }
      );

  </script>





</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" onload="checkCookie()">

     <img src="\images\free.PNG" alt="EEMS" style="position:absolute; z-index:3 ; margin-top:50px" width="100" height="50"/>


   <button id="shortScreenLogin" class="btn pull-center" type="submit" style="position:absolute; display:none;  top:25%; margin-top:50px;margin-left:38%; z-index:3; background-color:red ; color:white;" onclick="btnSendMail_Click" ><b>Sign in</b></button>


 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- The social media icon bar -->
<div class="iconbar" style="z-index:3">
<a href="https://web.facebook.com/MegaHit-Systems-211095395956388/?_rdc=1&_rdr" class="fa fa-facebook"></a>
<%--<a href="#" class="fa fa-twitter"></a>--%>
<%--<a href="#" class="fa fa-google"></a>--%>
<a href="https://ng.linkedin.com/in/olapoju-oluwole-olakunle-8b93b259" class="fa fa-linkedin"></a>
<%--<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-pinterest"></a>
<a href="#" class="fa fa-snapchat-ghost"></a>
<a href="#" class="fa fa-skype"></a>--%>
<a href="#" class="fa fa-android"></a>
<a href="http://www.megahitsystems.com" class="fa fa-dribbble"></a>
<%--<a href="#" class="fa fa-vimeo"></a>
<a href="#" class="fa fa-tumblr"></a>
<a href="#" class="fa fa-vine"></a>
<a href="#" class="fa fa-foursquare"></a>
<a href="#" class="fa fa-stumbleupon"></a>
<a href="#" class="fa fa-flickr"></a>
<a href="#" class="fa fa-yahoo"></a>
<a href="#" class="fa fa-reddit"></a>
<a href="#" class="fa fa-rss"></a>--%>
</div> 



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
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#Features">FEATURES</a></li>
        <li><a id="navClients" href="#testimonials">CLIENTS</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">ADMIN
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a  href="#myPage" onclick="openloginFunction()">Login</a></li>
            <li><a href="#">Alumni</a></li>
            <li><a href="#">Media</a></li> 
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>


     <script>
        function openloginFunction() {
            document.getElementById("dialog").style.visibility = "visible";
            $("#dialog").addClass("dialog-effect-in")
            $("#dialog").addClass("shakeit");
       
            $("#dialog").addClass("active");
            dialogBox.removeClass("dialog-effect-out").addClass("dialog-effect-in");
            document.getElementById("login_form").reset();

            checkCookie();

        }


        //function openSignupFunction() {
        //    document.getElementById("dialogSignUp").style.visibility = "visible";
        //    $("#dialogSignUp").addClass("dialog-effect-in")
        //    $("#dialogSignUp").addClass("shakeit");

        //    $("#dialogSignUp").addClass("active");
        //    dialogBox.removeClass("dialog-effect-out").addClass("dialog-effect-in");
        //    document.getElementById("login_form").reset();


        //}


        function closeloginFunction() {
           
            //$("#dialog").addClass("dialog.flip")
            document.getElementById("dialog").style.visibility = "hidden";
        }

</script>

<div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators"  style="top:75%">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
       <div class="carousel-inner" role="listbox">
   
      <div class="item active">
        <img id="myCarouselImg1" src="\images\banner1.jpg" alt="EEMS" width="1200" height="700"/>
            
     
        <div class="carousel-caption" style="top:40%">
             <div id="firstCarousal">
           <h2 style="color:beige">Enterprise Education Management Solution</h2>
          <p>Online community of school mgt. achievements</p>
                 </div>

            <a href="parents\psignup.aspx">
                <button id="btn1"  class="btn pull-center" type="submit" style="background-color:red" >Register Parent</button>

            </a>

            <button class="btn pull-center" type="submit" style="background-color:whitesmoke ; color:red;" onclick="openloginFunction()" ><b>Sign in</b></button>
          
        </div>      
      </div>

      <div class="item">
        <img src="\images\banner2.jpg" alt="EEMS" width="1200" height="700"/>
        <div class="carousel-caption" style="top:40%">
            <div id="secondCarousal">
             <h2 style="color:beige">Enterprise Education Management Solution</h2>
          <p>Teach!! leave the managment to us</p>
                </div>
             <a href="parents\psignup.aspx"> 
                  <button id="btn2" class="btn pull-center" type="submit" style="background-color:red" >Register Parent</button>
             </a>
                 <button class="btn pull-center" type="submit" style="background-color:whitesmoke ; color:red;" onclick="openloginFunction()" ><b>Sign in</b></button>
        </div>      
      </div>
    
      <div class="item">
        <img src="\images\banner3.jpg" alt="EEMS" width="1200" height="700"/>
        <div class="carousel-caption" style="top:40%">
              <div id="thirdCarousal">
              <h2 style="color:beige">Enterprise Education Management Solution</h2>
          <p>Your most valueable resource for school mgt. !</p>
                  </div>
             <a href="parents\psignup.aspx">  
                 
                 <button id="btn3" class="btn pull-center" type="submit" style="background-color:red">Register Parent</button> 

             </a>

                 <button class="btn pull-center" type="submit" style="background-color:whitesmoke ; color:red;" onclick="openloginFunction()" ><b>Sign in</b></button>

        </div>    
  
      </div>

    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>


    <!-- Container (The Features Section) -->
<div id="Features" class="container text-center" style="margin-top:0px" >
<%--  <h3>THE FEATURES</h3>--%>
       <br />
        <br />
   <h2 style="color:black">SchoolMate®</h2>
 
    <p style="font-size:small; text-align: justify;" dir="ltr">

        SchoolMate&trade; is a complete School management software application, which incorporates nearly all aspects of Student/School management.
SchoolMate is the end – product of several years of reviews and studies of the educational administration system with much input coming from seasoned school administrators interested in revolutionalizing the existing manual processing of elementary, High school, college and vocational institutions with the view of providing easier, better and more efficient system for all stakeholders in the business viz: Parents, Academic Staffs and more importantly, the Students.</p>

<div id="OtherRmk">
<p style="font-size:small; text-align: justify;" dir="ltr">
Designed for Window, Android and the Web, SchoolMate is a Graphic User Interface software with easy to use menu and command buttons.
Another good news is that this product is customizable – you can “trim” or “mend” it to meet your informational needs.
SchoolMate is designed with a tool that gives the product higher reliability and quicker customization and configuration changes.</p>


 <p style="font-size:small; text-align: justify;">This product is slightly ahead of it’s time and we hope to keep it that way. We have spent many years developing ideas and concept for software perform and be as user friendly as possible. 
SchoolMate save everyone a lot of time and let then work with the students more and with the paper work less. This should be a good thing!</p>
</div>

    <p style="color:black">VERSIONS</p>
   
       Windows  <img src="\images\win.jpg" alt="EEMS" width="40" height="40"/>
       Web  <img src="\images\Web.jpg" alt="EEMS" width="40" height="40"/>
       Android  <img src="\images\Android.jpg" alt="EEMS" width="40" height="40"/>

  
    </div>

    <div class="container-fluid">
  <div class="text-center">
    <h2 style="color:black">Features/Pricing</h2>
    <p>Choose a product scope that works for you</p>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Basic</h1>
        </div>
        <div class="panel-body">
          <p> General School Administration </p>
          <p> Grading/Assessments</p>
          <p> Class Administration</p>
          <p> Sport/Extra Curriculum Admin.</p>
          <p> Setups and Tools</p>
         <p style="color:blue"> Access through Android App</p>
             <p style="color:red"> Online Version only</p>
        </div>
        <div class="panel-footer">
          <h3 style="color:darkred">FREE</h3>
        
          <a href="SignUp.aspx"> <button class="btn btn-lg" >Sign Up</button> </a>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p>All BASIC Features</p>
          <p>Student Financial Processing</p>
          <p> Inventory Control</p>
               <p> Student/Parent Dashboard</p>
               <p> Online Note and Assignments</p>
            <p> Alumni Databank</p>
               <p style="color:red"> Online Version only</p>
          <p> </p>
            <p>  </p>
            <p>  </p>
      
        </div>
        <div class="panel-footer">
          <h3 style="letter-spacing: 1px">$300/year</h3>
         <a href="SignUp.aspx">  <button class="btn btn-lg" >Sign Up</button></a>
        </div>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p>All PRO Features</p>
          <p>Boarding Administration </p>
          <p>e-Library</p>
          <p>Staff Administration/Payroll</p>
          <p> General Accounting</p>
          <p style="color:red"> Online & Offline Versions </p>
         <p>&nbsp</p> 
        
        </div>
        <div class="panel-footer">
          <h3>$</h3>
          <%--<h4>per month</h4>--%>
          <button class="btn btn-lg" onclick="loadComingsoon()">Coming soon</button>
<%--             <button class="btn btn-lg" onclick="document.getElementById('myModalSignUp').style.display='block'">Sign Up</button>--%>
        </div>
      </div>
    </div>
  </div>
</div>


    <script>
        function loadComingsoon() {
        window.location.assign("ComingSoon.aspx")
    }
</script>

     <!--testimonials -->
        <div class="reviews section" id="testimonials" style="margin-top:60px">
            <br />
              <br />
            <h2 style="color:white; text-align:center;padding-bottom:20px" >Clients/Testimonials</h2>
            <br />
            <div class="container" >        
                <div id="Carousel" class="slide carousel1">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                           <%-- <h6>JaySpecStar Academy</h6>--%>
                                            <p><em style="color:white">One word... WOW!!</em></p>
                                            <h5><b>Danjuma Ameh</b></h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3  img-testi">
                                            <img class="img-responsive" src="images/Sch1.jpg" style="width:150px ; height:100px ; border-radius:0px" alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/Sch2.jpg" style="width:150px ; height:100px"  alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                           <%-- <h6>JaySpecStar Academy</h6>--%>
                                            <p><em style="color:white">Reduced my work by half....thanks</em></p>
                                            <h5><b>Nike Adigun (Snr. Admin Officer)</b></h5>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                         <%--   <h6>felis mattis</h6>--%>
                                            <p><em style="color:white">This solution is the best. I am so happy with the result!</em></p>
                                            <h5><b>Ope Fabiyi</b></h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/Sch3.jpg" style="width:150px ; height:100px"  alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/Sch4.jpg" style="width:150px ; height:100px"  alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                          <%--  <h6>Cras rutrum</h6>--%>
                                            <p><em style="color:white">It does not require much IT knowledge...it provides integration capabilities and flexibily that we needed</em></p>
                                            <h5><b>Helen Adams</b></h5>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                            <!--.row-->
                        </div>
                        <!--.item-->
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                           <%-- <h6>convallis felis</h6>--%>
                                            <p><em style="color:white">Helps us get out of subjective approach in defining how we work</em></p>
                                            <h5><b>Tosho Folorunsho</b></h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/Sch5.jpg" style="width:150px ; height:100px"  alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6 testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/Sch6.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                           <%-- <h6>Cras rutrum</h6>--%>
                                            <p><em style="color:white">Can't wait to upgrade to the Premium version....thanks</em></p>
                                            <h5><b>Chinedu Obiora</b></h5>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                        
                            </div>
                            <!--.row-->
                        </div>

                         <br />
                         <br />
                        <br />
                    </div>
           <%--         <!--.carousel-inner-->
                    <a data-slide="prev" href="#Carousel" class="left carousel1-control">‹</a>
                    <a data-slide="next" href="#Carousel" class="right carousel1-control">›</a>--%>
                </div>
                <!--.Carousel-->
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //testimonials-->

    <form runat="server">

<%--    <form method="post" action="">--%>
   
<!-- Container (Contact Section) -->
<div id="contact" class="container" style="margin-top:50px">

    <br />
    <br />

  <h2 class="text-center">Contact</h2>
  <p class="text-center"><em>We love to hear from you</em></p>

  <div class="row">


      <table style="width:100%">

          <tr>
              <th>
                  <div class="card" style="width:220px">
  <img src="/images/CEO.jpg" alt="Olapoju Oluwole" style="width:100%">
             
                         <h2 style="color:black;font-size:large;margin-bottom:0px;font-weight: bold">Olapoju Oluwole</h2>
                        <h2 style="color:grey;font-size:small;margin-top:0px">Founder/CTO</h2>

  <p>Megahit Systems</p>
  <div style="margin: 12px 0;">
      <a style="width:20px; height:20px" href="https://www.facebook.com/woleolapoju" class="fa fa-facebook"></a>
<a style="width:20px; height:20px" href="https://ng.linkedin.com/in/olapoju-oluwole-olakunle-8b93b259" class="fa fa-linkedin"></a>

 

 </div>
</div>
              </th>
        
              <th>
                  
                  <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
              <input type="text" id="Visitor_name" class="form-control" placeholder="Name"  runat="server"  />   
        </div>
        <div class="col-sm-6 form-group">
              <%--<input class="form-control" id="user_email" name="name" placeholder="Email" type="email" required="required" runat="server"/> --%>
            <asp:TextBox class="form-control" id="Visitor_email" placeholder="Email" type="email"  runat="server"></asp:TextBox>
        </div>
      </div>
      <textarea class="form-control" id="Visitor_comments" name="comments" placeholder="Comment" rows="5" runat="server"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
         <%-- <button runat="server" class="btn pull-right" type="submit"  onclick="btnSendMail_Click" >Send</button>--%>
            <asp:Button ID="btnSendMail" class="btn pull-right" runat="server" Text="Send" OnClick="btnSendMail_Click" OnClientClick="myRequiredFields1()"  />
        </div>
      </div>
    </div>

                    <div class="col-md-4">
     <%-- <p>Get in touch</p>--%>
      
      <p><span class="glyphicon glyphicon-map-marker"></span> Abuja, Nigeria</p>
      <p><span class="glyphicon glyphicon-phone"></span> +234-803-311-6212</p>
      <p><span class="glyphicon glyphicon-envelope"></span> schoolmate@megahitsystems.com</p>
    </div>
              </th>
          </tr>

      </table>
   

  </div>
</div>

<%--</form>--%>

 <div id="dialog" class="dialog dialog-effect-in" style="margin-top:50px" >

  <div class="dialog-front">
          <button type="button" class="close" onclick="closeloginFunction()"  data-dismiss="modal" style="z-index:-8; background-color:blue; margin-right:10px"><strong>&times;</strong></button>
    
    <div class="dialog-content"  style="padding-top:0px">
     <%--  <form id="login_form" class="dialog-form" action="" method="POST" runat="server" >--%>
         <div class="dialog-form">
        <fieldset>
             
          <legend >Log in</legend>
       
          <div class="form-group" >
            <label for="user_Category"  class="control-label" style="float:left; margin-right:20px; margin-top:15px" >Login As:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
          <select name="User_Category" class="form-control" runat="server" id="User_Category" style="width:50%" onchange="myHideShowFunction()" >
                <option value="Staff">Staff</option>
                <option value="Student">Student</option>
                <option value="Parent">Parent</option>
              </select>
            </div>


             <div id="divSchID" class="form-group" >
            <label for="user_schoolID" class="control-label" style="float:left; margin-right:20px; margin-top:15px"  >School ID#:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label> 
           <input type="text" id="user_schoolID" class="form-control" style="width:50%" placeholder="e.g 1772-39993" runat="server"  name="user_schoolID" autofocus/>
          </div>

          <div class="form-group" >
            <label for="user_username" class="control-label" style="float:left; margin-right:20px; margin-top:15px"  >UserID/Email:</label>
            <input type="text" id="user_username" class="form-control" placeholder="e.g cunleo"  style="width:50%"  runat="server"  />
             
          </div>
          <div class="form-group">
            <label for="user_password" class="control-label" style="float:left; margin-right:20px; margin-top:15px" >Password:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input type="password" id="user_password" class="form-control" name="user_password"  style="width:50%" placeholder="e.g 1234" runat="server"/>
          </div>
             <div class="checkbox" style="margin-top:0; margin-bottom:0">
              <label style="font-size:small">
                <input type="checkbox" id="user_Remember" name="user_terms" checked="checked"/>
                    Remember me </label>
            </div>
          <div class="text-center" style="font-size:small;margin-top:0; margin-bottom:0">
        
          </div>
          
           
          <div style="margin-left:3px; padding-top:10px ; padding-bottom:10px">   <%--class="pad-top-20 pad-btm-20" --%>
           <%-- <input type="submit" runat="server" id="myBtn" class="btn btn-default btn-block btn-lg" onserverclick="btnLogin_Click" value ="Log In"/>--%>
              <asp:Button ID="btnLogin" class="btn btn-default btn-block btn-lg" runat="server" OnClick="btnLogin_Click"  OnClientClick="CheckUserAccess()" Text="Log In" />
          </div>
          
               <p>Have you forgotten your <a href="forgotpwd.aspx" class="link"><strong>password</strong></a>?</p> 
           <%-- <div class="text-center" style="padding-top:0px ; padding-bottom:5px">
            <p>Do you wish to register<br> for <a onclick="closeloginFunction()" class="link user-actions"><strong>a new account</strong></a>?</p>--%>


        <%--  </div>--%>
        </fieldset>

             </div>

   <%--   </form>--%>
    </div>
  </div>
 </div>


 </form>

    <script>
        function myHideShowFunction() {


            var x1 = document.getElementById("User_Category").selectedIndex;
            var y1 = document.getElementById("User_Category").options;

            var x = document.getElementById("divSchID");
            //if (x.style.display === "none") {
            //    x.style.display = "block";
            //} else {
            //    x.style.display = "none";
            //}
            //    }

            if (y1[x1].text.toString() == "Staff") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
        </script>


<!-- Add Google Maps -->
<div id="googleMap"></div>
<script>
function myMap() {
    //var myCenter = new google.maps.LatLng(41.878114, -87.629798);
    var myCenter = new google.maps.LatLng(9.099, 7.408);
    //var myCenter = new google.maps.LatLng(9.0768701, 7.5127536);
    
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCc9TENYM9va57tqs5M_uzNFlTZltdu2xQ&callback=myMap"></script>

<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>--%>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="text-center"  style="height:10px">
 <%-- <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>--%>

   A quality product of <a href="https://www.megahitsystems.com" data-toggle="tooltip" title="Visit Megahit Systems"><u>Megahit Systems</u></a> 2016 &copy <a href="https://www.megahitsystems.com" style="float:left" data-toggle="tooltip" title="Privacy Policy"><u>Privacy Policy</u></a> <a href="https://www.megahitsystems.com" data-toggle="tooltip" style="float:right" title="Legal"><u>Legal</u></a> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
          // Add hash (#) to URL when done scrolling (default click behavior)

          //window.location.hash = hash;

      });
    } // End if
  });
})
</script>

<%--my magic for double form for Comment--%>
    <script>
        function myRequiredFields1()
        {

            //alert(document.getElementById("user_schoolID").innerHTML)

            $('#user_schoolID').removeAttr('required');
            $('#user_username').removeAttr('required');
            $('#user_password').removeAttr('required');


            $('#Visitor_name').attr('required', 'required');
            $('#Visitor_email').attr('required','required');
            $('#Visitor_comments').attr('required','required');

       
        }

     
    </script>
 <%--Cookie functions  for remember--%>
    <script>

        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        function checkCookie() {
            var userSchID = getCookie("SchMateID");
            var userID = getCookie("SchMateUser");
            var userLoginAs = getCookie("SchMateLoginAS");
            if (userSchID != "")
                document.getElementById("user_schoolID").value = userSchID;
            if (userID != "")
                document.getElementById("user_username").value = userID;
            if (userLoginAs != "") {
                document.getElementById("User_Category").value = userLoginAs;
                myHideShowFunction();
            }

            //if (user != "") {
            //   alert("Welcome again " + user);

            //}
            // else {
            //    user = prompt("Please enter your name:", "");
            //    if (user != "" && user != null) {
            //        setCookie("username", user, 30);
            //    }
            //}
        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
    </script>


     <script>
         function CheckUserAccess() {

             $('#Visitor_name').removeAttr('required');
             $('#Visitor_email').removeAttr('required');
             $('#Visitor_comments').removeAttr('required');


             $('#user_schoolID').attr('required', 'required');
             $('#user_username').attr('required', 'required');
             $('#user_password').attr('required', 'required');


            var x = $("#user_Remember").is(":checked");
             if (x == true)

             {
                 setCookie("SchMateLoginAS", document.getElementById("User_Category").value, 365);
                 setCookie("SchMateID", document.getElementById("user_schoolID").value, 365);
                 setCookie("SchMateUser", document.getElementById("user_username").value, 365);
             }
            else
             {
                 setCookie("SchMateLoginAS", 356);
                 setCookie("SchMateID","", 365);
                 setCookie("SchMateUser", "", 365);
             }

      
        }
    </script>


</body>
</html>
