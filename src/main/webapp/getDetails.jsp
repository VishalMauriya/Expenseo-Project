<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style> 
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid #555;
}
</style>
<style>
body {
  background-image: url('');
  background-color: #1d1d1d;
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  width: 50%;
  text-align: center;
  background-color: #f1f1f1;
}
</style>
</head>
<body>
<br><br><br><br>
<center>
<h2 style="color:white">Enter the UserId For your Account</h2>

    <div class="card">
      <h3 style="color:red">*Below details have to be filled*</h3>
      
      <form action="processingUID.jsp" method="get">
  <label for="fname">Full Name</label>
  <input type="text" id="fname" name="fname" required>
  <br><br>
  <label for="lname">User ID</label>
  <input type="text" id="UID" name="UID" required>
  <br><br>
  <input style="background-color:red;border-color:white;border-radius:10px;
  		font-size:25px;color:white;" type="submit" id="submit" name="submit" value="Submit">
</form>
    </div>
    </center>

</body>
</html>