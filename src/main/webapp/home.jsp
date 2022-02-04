<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
  <link rel="stylesheet" href="style.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-auth.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-database.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-messaging.js"></script>

  <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1500px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 30px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: slide;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #1d1d1d;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #1d1d1d;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #1d1d1d;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #525252 !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #525252 !important;
    background-color: #525252 !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: #525252 !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #525252;
    color: #525252;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #525252;
    z-index: 9999;
    border: 0;
    font-size: 18px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 6px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #1d1d1d !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #525252;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  .avatar img {
  width: 100%;
  border-radius: 50%;
}

.avatar-sm {
  font-size: .875rem;
  width: 36px;
  height: 36px;
}
.avatar {
  font-size: 1rem;
  display: inline-flex;
  width: 48px;
  height: 48px;
  color: #fff;
  border-radius: 50%;
  background-color: #adb5bd;
  align-items: center;
  justify-content: center;
}
.text-sm {
  font-size: .875rem !important;
  color: white;
}
.font-weight-light {
  font-weight: 300 !important;
}

.font-weight-bold {
  font-weight: 600 !important;
}
  </style>
 

 
</head>
	
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
		<div style="background-color:powderblue">
		<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="">EXPENSEO</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.jsp">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#services">Expenses</a></li>
        <li><a href="logout.jsp">Logout</a></li>
        <span class="avatar avatar-sm rounded-circle">
           <a href="profile.jsp" ><img alt="Image placeholder"  src="images/avator.png"></a>
         </span>                
      </ul>
    </div>
  </div>
</nav>

 <script>
		// Initialize Firebase
		var config = {
				 apiKey: "AIzaSyD9e71M3vCw91G4ID8ta9VZp6hyozNVks4",
				  authDomain: "expenseo.firebaseapp.com",
				 // databaseURL : "https://produkte-e7705-default-rtdb.firebaseio.com",
				  projectId: "expenseo",
				  storageBucket: "expenseo.appspot.com",
				  messagingSenderId: "880026832046",
				  appId: "1:880026832046:web:895c853900c33375bb713f"
		};
		firebase.initializeApp(config);
	</script>
	
	
	<script type="text/javascript">
		initApp = function() {
			firebase
					.auth()
					.onAuthStateChanged(
							function(user) {
								if (user) {
									// User is signed in.
											     var user=firebase.auth().currentUser;
									var displayName = user.displayName;
									var email = user.email;
									var emailVerified = user.emailVerified;
									var photoURL = user.photoURL;
									var uid = user.uid;
									var providerData = user.providerData;
									user
											.getToken()
											.then(
													function(accessToken) {
														document
																.getElementById('sign-in-status').textContent = 'Signed in';
														document
																.getElementById('sign-in').textContent = '';
														document
																.getElementById('account-details').textContent = JSON
																.stringify(
																		{
																			Welcome : displayName,
																			email : email,
																			emailVerified : emailVerified,
																			photoURL : photoURL,
																		//uid: uid,
																		//accessToken: accessToken,
																		//providerData: providerData
																		},
																		null,
																		'  ');
													});
								} else {
									// User is signed out.
									document.getElementById('sign-in-status').textContent = 'Signed out';
									document.getElementById('sign-in').textContent = 'Sign in';
									document.getElementById('account-details').textContent = 'null';
								}
							}, function(error) {
								console.log(error);
							});
		};
		window.addEventListener('load', function() {
			initApp()
		});
		
		function sendTo(user) {
			
		}
	</script>

<div class="jumbotron text-center">
         <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="Image placeholder" src="images/avator.png">
                </span>
              </div>
<%@include file="components/alert.jsp" %>
  <h1>EXPENSEO</h1> 
  <h1>______________</h1> 
  <p>Even though work stops, Expenses run on</p> 
</div>
 
 <!-- <div id="sign-in-status"></div>
	<div id="sign-in"></div>
	<div id="account-details"></div> -->

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
  <h2>Click Below to - ADD, VIEW, EDIT, DELETE</h2>
  <p>________________________________________________________________________________________________</p>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
   
      <a  class="fa fa-plus-circle" style="color:red; font-size:54px;" href="addExp.jsp"></a>
  
      <h4>ADD</h4>
      <p>Click + to Add Expenses</p>
    </div>
    <div class="col-sm-4">
      <a class="fa fa-file" style="color:red; font-size:54px;" href="viewExpenses.jsp"></a>
      <h4>VIEW RECORDS</h4>
      <p>Click to View Expense Records</p>
    </div>
    <div class="col-sm-4">
    <a class="fa fa-pencil-square-o" style="color:red; font-size:54px;" href="viewExpenses.jsp"></a>
      
      <h4>EDIT / DELETE</h4>
      <p>You can edit or delete the Expenses</p>
    </div>
  </div>
</div>
<br><br>
<div class="container">
<center>
<img alt="" src="images/exp.png">
</center>
</div>
<br><br><br>
<script>
$(document).ready(function(){
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
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>
<center>
<div style="font-family: "Lucida Console", "Courier New", "monospace";">
<h2 style="font-size: 60px;">A b o u t</h2>
  <p>___________________________________________</p>
</div><br><br>
  <h3>What we have created</h3>
</center>
		
		 <div class="container-fluid">
		 <div class="main">
    <div class="slider">
      <center>
      <ul class="slider-parent">
        <li class="images-list" data-slider="1"></li>
        <li class="images-list" data-slider="2"></li>
        <li class="images-list" data-slider="3"></li>
        <li class="images-list" data-slider="4"></li>
      </ul>
      </center>
      <ol class="buttom-circles">
        <li class="buttom-circles-list slider-active" data-slider="1"><i class="fa fa-circle-thin"></i></li>
        <li class="buttom-circles-list" data-slider="2"><i class="fa fa-circle-thin"></i></li>
        <li class="buttom-circles-list" data-slider="3"><i class="fa fa-circle-thin"></i></li>
        
        <li class="buttom-circles-list" data-slider="6"></li>
      </ol>
      <i class="fa fa-chevron-right fa-5x"></i>
      <i class="fa fa-chevron-left fa-5x"></i>
    </div>
  </div>
  </div>
	<script type="text/javascript">
	$(function () {
	    "use strict";
	    
	    var slider          = $('.slider'),
	        sliderUl        = slider.find('.slider-parent'),
	        sliderUlLi      = sliderUl.find('.images-list'),
	        sliderOl        = slider.find('.buttom-circles'),
	        sliderOlLi      = sliderOl.find('.buttom-circles-list'),
	        sliderFaRight   = slider.find('> .fa:first-of-type'),
	        sliderFaLeft    = slider.find('> .fa:last-of-type'),
	        sliderTime      = 1000,
	        sliderWait      = 3000,
	        sliderSetInt,
	        resumeAndPause;
	    
	    sliderFaLeft.fadeOut();
	    
	 
	 function resetWH() {
	        slider.width(slider.parent().width()).height(slider.parent().width() * 0.5);
	        sliderUl.width(slider.width() * sliderUlLi.length).height(slider.height());
	        sliderUlLi.width(slider.width()).height(slider.height());
	    }
	    resetWH();
	 
	 function runSlider() {
	        if (sliderOlLi.hasClass('slider-active')) {
	            sliderUl.animate({
	                marginLeft: -slider.width() * ($('.slider-active').data('slider') - 1)
	            }, sliderTime);
	        }
	        if ($('.slider-active').is(':first-of-type')) {
	            sliderFaLeft.fadeOut();
	        } else {
	            sliderFaLeft.fadeIn();
	        }
	        if ($('.slider-active').next().is(':last-of-type')) {
	            sliderFaRight.fadeOut();
	        } else {
	            sliderFaRight.fadeIn();
	        }
	    }
	 
	 function runRight() {
	        slider.each(function () {
	            $('.slider-active').next().addClass('slider-active').siblings().removeClass('slider-active');
	            runSlider();
	        });
	    }
	 
	 function runLeft() {
	        slider.each(function () {
	            $('.slider-active').prev().addClass('slider-active').siblings().removeClass('slider-active');
	            runSlider();
	        });
	    }
	 
	 sliderSetInt = function autoRunSlider() {
	        if ($('.slider-active').next().is(':last-of-type')) {
	            sliderUl.animate({
	                marginLeft: -sliderUlLi.width() * $('.slider-active').data('slider')
	            }, sliderTime, function () {
	                sliderUl.css('margin-left', 0);
	                sliderOlLi.first().addClass('slider-active').siblings().removeClass('slider-active');
	            });
	        } else {
	            runRight();
	        }
	    };
	    
	    resumeAndPause = setInterval(sliderSetInt, sliderWait);
	    
	 
	 $(window).on('resize', function () {
	        resetWH();
	    });
	    
	 
	 slider.each(function () {
	        sliderOlLi.click(function () {
	            $(this).addClass('slider-active').siblings().removeClass('slider-active');
	            runSlider();
	        });
	    });
	    
	    sliderFaRight.on('click', function () {
	        runRight();
	    });
	    sliderFaLeft.on('click', function () {
	        runLeft();
	    });
	    
	    slider.find('.fa').hover(function () {
	        clearInterval(resumeAndPause);
	    }, function () {
	        resumeAndPause = setInterval(sliderSetInt, sliderWait);
	    });
	});
	</script>
<br><br>
<center>
<!-- style="background-color:powderblue; border-radius:20px; -->
<div class="container">
<div style=" font-size:32px;" >
  <p>Expenseo is for adding the daily life expenses to remember , view or analyse your monthly or daily Expenses.
  It can automatically save the date & time when your save your Expense details.Your
  data & your user account details are safe with us....</p>
</div>
</div>
 
</center>		

	</div>
	<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Created By Expenseo</p>
  <p>&copy; Copyright 2021 <a href="#" > Expenseo</a></p>
  <br>
 <a style="color: #007bb5;font-size: 35px;" href="https://www.linkedin.com/in/vishal-mauriya/" class="fa fa-linkedin"></a> &#160; &#160; &#160; &#160; &#160;
<a style="color: black; font-size: 35px;" href="https://github.com/VishalMauriya" class="fa fa-github"></a>&#160; &#160; &#160; &#160; &#160;
<a style="color: #55ACEE; font-size: 35px;" href="https://www.twitter.com/__vishal004__/" class="fa fa-twitter"></a>&#160; &#160; &#160; &#160; &#160;
<a style="color: red; font-size: 35px;"href="https://www.instagram.com/__vishal004__/" class="fa fa-instagram"></a>&#160; &#160; &#160; &#160; &#160;
 
</footer>
</body>
</html>