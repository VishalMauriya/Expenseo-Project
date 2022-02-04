<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
	
		<% 
		session.invalidate();

		
		 String redirectURL = "index.html";
	        response.sendRedirect(redirectURL);
	        
		%>
	        
	
</body>
</html>