<%@page import="com.vishal.dao.DB"%>
<%@page import="com.vishal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenseo</title>
</head>
<body>
			<%
				String fname = request.getParameter("fname");
				String UID = request.getParameter("UID");
				
				User user = new User();
				user._id = UID;
				user.setName(fname);
				
				session.setAttribute("KeyUser", user);
				
				DB db = new DB();
				db.registerUser(user);
				session.setAttribute("KeyDB", db);
				
				System.out.println("User ID: "+user._id);
				System.out.println("User Name: "+user.name);
				db.loginUser(user);
				response.sendRedirect("home.jsp");
			
			
			%>
	
</body>
</html>