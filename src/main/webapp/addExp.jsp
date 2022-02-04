<%@page import="com.vishal.dao.DB"%>
<%@page import="com.vishal.model.Expenses"%>
<%@page import="com.vishal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
#snackbar {
  visibility: hidden;
  min-width: 250px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: fixed;
  z-index: 1;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}
#snackbars {
  visibility: hidden;
  min-width: 250px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: fixed;
  z-index: 1;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

#snackbars.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
  from {bottom: 0; opacity: 0;} 
  to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
  from {bottom: 0; opacity: 0;}
  to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
  from {bottom: 30px; opacity: 1;} 
  to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
  from {bottom: 30px; opacity: 1;}
  to {bottom: 0; opacity: 0;}
}
</style>

<style>
.card {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 50%;
  border-radius: 5px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
  border-radius: 5px 5px 0 0;
}

.containers {
  padding: 2px 16px;
}
</style>
<style type="text/css">
body {
  background-image: url('');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}

.customize {
  width: 180px;
  border-radius: 30px;
  padding: 10px 18px;
}
</style>
<style>
ul {
  list-style-type: none;
  z-index: 9999;
  margin: 0;
  padding: 0;
  overflow: hidden;
   position: fixed;
    top: 0;
  width: 100%;
  background-color: #525252;
      font-family: Montserrat, sans-serif;
      font-size: 18px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 6px;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover{
    color: #1d1d1d ;
    background-color: #fff ;
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
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</script>
</head>
<body>

		<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
			
			User user = (User)session.getAttribute("KeyUser");
			
		%>
	
	
	<ul >
	<a style="color:white; margin-left:70px;" class="navbar-brand" >EXPENSEO</a>
  <li style="float:right; margin-right:60px;"><a href="logout.jsp">Logout</a></li>
  <li style="float:right"><a href="home.jsp">About</a></li>
  <li style="float:right"><a class="active" href="home.jsp">Home</a></li>
	<span class="avatar avatar-sm rounded-circle">
           <a class="avatar avatar-sm rounded-circle" href="profile.jsp" ><img alt="Image placeholder"  src="images/avator.png"></a>
    </span>
</ul>
	
	<center>
	
	<div style="background-color:#1d1d1d;">
	
	
  <br><h1 style="color:white; margin-top:100px;">A D D - E X P E N S E S</h1>
  <h1 style="color:white">_____________________________</h1><br>
  <div style="color:white">
  <div id="sign-in-status"></div>
	<div id="sign-in"></div>
	<div id="account-details"></div>
	</div>
  <p id="account-details" style="color:yellow">Welcome , Your can Save your Expenses here: </p> <br>
  
	
</div>
<br>
<br>
	
	<div class="containers card" style="background-color:#545454;">
	<div >
  <br><br>
  <form action="addExpense.jsp" method="get">
    <div class="row">
      <div class="col">
        <input type="text" class="form-control" id="expenseName" placeholder="Expense Name" name="expenseName" required>
      </div>
      <div class="col">
        <input type="number" class="form-control" id="expenseAmount" placeholder="Expense Amount" name="expenseAmount" required>
      </div>
    </div>
    <br>
     <input type="text" class="form-control" id="expenseDesc" placeholder="Description(Optional)" name="expenseDesc">
    <br>
    <button onclick="myFunction()"  type="submit" class="btn btn-primary mt-3  fa fa-plus  customize" id="myBtn" > ADD EXPENSE</button>
   <br>
  </form>
    <br>
	</div>
</div>
<div id="snackbar">Expense Added Successfully</div>

	<script>
function myFunction() {
  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>



	<br><br><br><br>
	<a style="color:DodgerBlue; font-size:20px;" class="fa fa-file-text" href="viewExpenses.jsp"> View Expense Records</a>
	</center>
	<br>
<hr>
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
 <br>
 <br>
 <br>
</footer>
</body>
</html>