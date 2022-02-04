
<%@page import="com.vishal.dao.DB"%>
<%@page import="com.vishal.model.User"%>
<%@page import="com.vishal.model.Expenses"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expenses</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>


	<%
	
	User user = (User)session.getAttribute("KeyUser");
	Expenses expense = new Expenses();
	expense.userId = user._id;
	expense.expenseOn = request.getParameter("expenseName");
	expense.description = request.getParameter("expenseDesc");
	expense.amount = Double.parseDouble(request.getParameter("expenseAmount"));
	
	DB db = (DB)session.getAttribute("KeyDB");
	db.addExpense(expense);
	
	%>
	
	<center>
	<div class="alert alert-success">
    <h3><strong>Expense Added Successfully!</strong></h3>
  	</div>
	</center>
	
	 <%
        String redirectURL = "viewExpenses.jsp";
        response.sendRedirect(redirectURL);
    %>
    
	<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div style="text-align:left">
		<center>
		<div class="container">
  
  <!-- Button to Open the Modal -->
  	<a style="color:DodgerBlue; font-size:18px;" href="home.jsp"  data-toggle="modal" data-target="#myModal">Add More Expense</a>
  
  

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
         <h4 class="modal-title">Add Your Expense</h4>
  
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="background-image: url('https://i.pinimg.com/originals/3c/60/15/3c6015b6581e82376377b67298b658f7.jpg');">

          <form action="addExpense.jsp" method="get">
    <div class="row">
      <div class="col">
        <input type="text" class="form-control" id="expenseName" placeholder="Expense Name" name="expenseName">
      </div>
      <div class="col">
        <input type="text" class="form-control" id="expenseAmount" placeholder="Expense Amount"  name="expenseAmount">
      </div>
    </div>
    <br>
     <input type="text" class="form-control" id="expenseDesc" placeholder="Description(Optional)" name="expenseDesc">
    <br>
    <button  type="submit" class="btn btn-primary mt-3  fa fa-plus" id="myBtn" > ADD EXPENSE</button>
   <br>
  <div class="toast">
    <div class="toast-body">
     Expense Added Succesfully
    </div>
  </div>


<script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $('.toast').toast('show');
  });
});
</script>
  </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

	</center>
	  </div>
    </div>
    
    <div class="col-sm-4">
      
    </div>
    
    <div class="col-sm-4">
      <div style="text-align:right">
		<a style="font-size:18px;" href="viewExpenses.jsp">View Expense Record</a>
	  </div>
    </div>
	  
  </div>
</div>
	
</body>
</html>