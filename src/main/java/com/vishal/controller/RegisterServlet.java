package com.vishal.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vishal.dao.DB;
import com.vishal.model.User;

@WebServlet({ "/RegisterServlet", "/Register" })
public class RegisterServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Fetch the data from Request
		User user = new User();
//		user.name = request.getParameter("txtName");
		user.setName(request.getParameter("txtName"));
		user.email = request.getParameter("txtEmail");
		user.password = request.getParameter("txtPassword");
		
		user.makePasswordSecure();
		
		// Logical processing-> Save the User data in MongoDB
		DB db = new DB();
		boolean result = db.registerUser(user);
		
		// Response to the Client
		response.setContentType("text/html");
		
		PrintWriter writer = response.getWriter();
		
		String html;
		
		if(result) {
			
			
//	        String redirectURL = "index.html";
//	        response.sendRedirect(redirectURL);
	    
			
			html = "<html><body><center> <strong> <h2><p style= color:green>Thank You, You are Registered Successfully</p><p style= color:red>"+user.getName()+"</p></h2></strong><br><br>"
					+"<a style='color:DodgerBlue' href='index.html'>Go to Login Page</a>"
					+ "</center></body></html>";
			
		}else {
			html = "<html><body><center> <strong> <p style= color:red>OOPS! Something Went Wrong</p></strong></center></body></html>";
			
		}
		writer.println(html);
	}

}
