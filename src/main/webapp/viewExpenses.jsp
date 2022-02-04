<%@page import="com.vishal.dao.DB"%>
<%@page import="com.vishal.model.User"%>
<%@page import="com.vishal.model.Expenses"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Expenses</title>

 <meta charset="utf-8">
 <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

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
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: 130px;
  border-radius: 30px;
  padding: 10px 18px;
  background-color: #f44336;
}

.customize {
  width: 180px;
  padding: 10px 18px;
  border-radius: 30px;
  padding: 10px 18px;
}
.customizes {
  width: 220px;
  padding: 10px 18px;
}


.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
		body
		{
		    counter-reset: Serial;          
		}

		tr td:first-child:before
		{
		  counter-increment: Serial;      
		  content: counter(Serial); 
		}
	</style>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<style> 
input[type=text] {
  width: 230px;
  box-sizing: border-box;
  border: 2px solid #4E4C4C;
  font-size: 16px;
  background-color: white;
  background-image: url('');
  background-position: 20px 20x; 
  background-size: 20px;   
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
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
</head>
<body >
			<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
			
			User user = (User)session.getAttribute("KeyUser");
			DB db = (DB)session.getAttribute("KeyDB");
			%>
			
			 
	<ul >
	<a style="color:white; margin-left:70px;" class="navbar-brand" >EXPENSEO</a>
	<span class="avatar avatar-sm rounded-circle">
           <a href="profile.jsp" ><img alt="Image placeholder"  src="images/avator.png"></a>
    </span>
  <li style="float:right; margin-right:60px;"><a href="logout.jsp">Logout</a></li>
  <li style="float:right"><a href="home.jsp">About</a></li>
  <li style="float:right"><a class="active" href="home.jsp">Home</a></li>
</ul>
			
<div style="background-color:#1d1d1d;">
	<center>
	<div style="color:white">
  <br><h1 style="margin-top:100px;">E X P E N S E - R E C O R D S</h1>
  <h1>____________________</h1><br>
  <p style="color:yellow">Dear User, Your All Records are here: </p> <br>
  </div>
	</center>
</div>
<br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div style="text-align:left">
      <center>
		<div class="container">
  
  <!-- Button to Open the Modal -->
  	<a class="fa fa-plus-circle" onclick="document.getElementById('id01').style.display='block'" style="color:DodgerBlue; font-size:54px;" href="#"  title="Add"></a>
  	<br><a>ADD</a>
        </div>
 
     
		<div id="id01" class="modal">
		<div class="container" >
          <form class="modal-content animate" action="addExpense.jsp" method="get">
          <div class="container" style="background-color:#545454;">
    <div class="container" style="background-color:#1d1d1d; border-radius: 10px;">
    <center>
     <h2 style="color:white">A D D - E X P E N S E S</h2>
     <h2 style="color:white">_____________________________</h2>
      <p style="color:yellow">Welcome, Your can Save your Expenses here:</p>
    </center>
      </div>
      <br>
    <div class="row">
      <div class="col">
        <input type="texts" class="form-control" id="expenseName" placeholder="Expense Name" name="expenseName" required>
      </div>
      <div class="col">
        <input type="texts" class="form-control" id="expenseAmount" placeholder="Expense Amount" name="expenseAmount" required>
      </div>
    </div>
    <br>
     <input type="texts" class="form-control" id="expenseDesc" placeholder="Description(Optional)" name="expenseDesc">
    <br>
    <button onclick="myFunction()" type="submit" class="  fa fa-plus  customize"  > ADD EXPENSE</button>
   <br>
   <div class="container" style="background-color:#545454;">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
          </div>
    
  </form>
        </div>
        </div>
        
      </div>
    </div>
	
    <div class="col-sm-4">
    <center>
      <button class="customizes" type="button" onclick="myFunctions()" class="btn btn-primary">
   View Total ExpensesOn <span class="badge badge-light" style="font-size:14px;" id="demo"></span>
  </button>
    </center>
    </div>
    
    <div class="col-sm-4">
      <div style="text-align:right">
      <center>
		<a class="fas fa-trash-alt" style="color:red; font-size:54px;" href="action.jsp?action=deleteall&userid=<%=user._id%>" data-toggle="tooltip"  title="Delete All"></a>
		<br><a>DELETE ALL</a>
		</center>

	  </div>
    </div>
  </div>
</div>
  

  <script>
function myFunctions() {
  var x = document.getElementById("myTable").rows.length;
  document.getElementById("demo").innerHTML = (x);
}
</script>

<br>

	<div class="container">
	<center>
    <input  id="myInput" type="text" placeholder="Search for Expenses...">
	</center>
  <br>
  <table class="table table-dark table-striped" >
    <thead>
      <tr>
       
        <th>SrNo.</th>
        <th>Date</th>
        <th>Time</th>
        <th>Expense ON</th>
        <th>Expense Amount</th>
        <th>Description</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody id="myTable">
    
    <%
    	ArrayList<Expenses> expenses = db.fetchExpenses(user._id);
   			 for(Expenses expense : expenses) {
    
    %>
      <tr>
        <td></td>
        <td><%=expense.date %></td>
        <td><%=expense.time %></td>
        <td><%=expense.expenseOn%></td>
        <td >&#x20b9; <%=expense.amount%></td>
        <td ><%=expense.description%></td>
        <td><a style="color:green" href="action.jsp?action=update&expenseid=<%=expense._id%>&amount=<%=expense.amount%>&name=<%=expense.expenseOn%>&desc=<%=expense.description%>">Update</a>  |  <a style="color:red" href="action.jsp?action=delete&expenseid=<%=expense._id%>">Delete</a></td>
      </tr>
     <%
   			 }
     %>
    </tbody>
  </table>
  
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</div>


	

 

	<hr>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<div id="snackbar">Expense Added Successfully</div>

	<script>
function myFunction() {
  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
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