<%@page import="com.vishal.model.Expenses"%>
<%@page import="com.vishal.dao.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Expense</title>
</head>
<body>
		
		<%
		DB db = (DB)session.getAttribute("KeyDB");
				Expenses expense = new Expenses();
				
				String expenseID = request.getParameter("expenseID");
				String expenseOn = request.getParameter("expenseName");
				double amount = Double.parseDouble(request.getParameter("expenseAmount"));
				String description = request.getParameter("expenseDesc");
				
				db.updateExpense(amount, expenseOn, description, expenseID);
				
				String redirectURL = "viewExpenses.jsp";
		        response.sendRedirect(redirectURL);
		%>
		
</body>
</html>