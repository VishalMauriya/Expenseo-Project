<%@page import="com.vishal.dao.DB"%>
<%@page import="com.vishal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
</head>
<body>
		<%
		
		User user = (User)session.getAttribute("KeyUser");
		DB db = (DB)session.getAttribute("KeyDB");
		
			String action = request.getParameter("action");
			String expenseID = request.getParameter("expenseid");
			String expenseOn = request.getParameter("name");
			String amount = request.getParameter("amount");
			String description = request.getParameter("desc");
			
			if(action.equals("delete")) {
				db.deleteExpense(expenseID);
				
				String redirectURL = "viewExpenses.jsp";
			        response.sendRedirect(redirectURL);
		%>
		<center>
	<div class="alert alert-danger">
    <h3><strong>Expense Deleted Successfully!</strong></h3>
  	</div>
  	
  	<br><br><br><br>
	<a class='fas fa-reply' style="color:DodgerBlue; font-size:20px;" href="viewExpenses.jsp"> Back to Records</a>
	</center>
		
		
		<%
		
			}else if(action.equals("deleteall")) {
				db.deleteAll(user._id);
				
				 String redirectURL = "viewExpenses.jsp";
			        response.sendRedirect(redirectURL);
		%>
		
		<center>
	<div class="alert alert-danger">
    <h3><strong>Expense Deleted Successfully!</strong></h3>
  	</div>
  	
  	<br><br><br><br>
	<a class='fas fa-reply' style="color:DodgerBlue; font-size:20px;" href="viewExpenses.jsp"> Back to Records</a>
	</center>
	
		<%
			}else{
				
		%>
		
		<center>
	
	<div style="background-color:#1d1d1d;">
	<center>
	<div style="color:white">
  <br><h1>U P D A T E - E X P E N S E S</h1>
  <h1>_____________________________</h1><br>
  <p>Welcome <%=user.name%>, Your can Update your Expenses here: </p> <br>
  </div>
	</center>
</div>
<br>
	
	<div class="container card" style="background-color:#1d1d1d;">
	<div >
  <br><br>
  <form action="update.jsp" method="get">
    <div class="row">
      <div class="col">
        <input type="text" class="form-control" id="expenseName" placeholder="Expense Name" name="expenseName" value="<%=expenseOn%>"  required>
      </div>
      <div class="col">
        <input type="number" class="form-control" id="expenseAmount" placeholder="Expense Amount" name="expenseAmount" value="<%=amount%>"required>
      </div>
    </div>
    <br>
     <input type="text" class="form-control" id="expenseDesc" placeholder="Description(Optional)" name="expenseDesc" value="<%=description%>">
     <input type="hidden" class="form-control" id="expenseID" placeholder="Description(Optional)" name="expenseID" value="<%=expenseID%>">
    <br>
    <button onclick="myFunction()"  type="submit" class="btn btn-primary mt-3  fa fa-plus  customize" id="myBtn" > UPDATE EXPENSE</button>
   <br>
  </form>
    <br>
	</div>
</div>
<div id="snackbar">Expense Updated Successfully</div>

	<script>
function myFunction() {
  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
		

		<%
			}
		%>
		
			
		
			
</body>
</html>