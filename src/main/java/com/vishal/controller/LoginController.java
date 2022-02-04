package com.vishal.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vishal.dao.DB;
import com.vishal.model.User;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Fetch the data From User
		User user = new User();
		user.email = request.getParameter("txtEmail");
		user.password = request.getParameter("txtPassword");
		user.makePasswordSecure();
		System.out.println(user);
		
		DB db = new DB();
		boolean result = db.loginUser(user);
		
		// Response sending to client
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
//		String message = "Thank You "+ user.email;
//		writer.println(message);
		String html;
		if(result) {
			
			HttpSession session = request.getSession();
			session.setAttribute("KeyUser", user);
			session.setAttribute("KeyDB", db);
			
	        String redirectURL = "home.jsp";
	        response.sendRedirect(redirectURL);
	       
		html = "<html><body><strong> <p style= color:green>Logged In As - </p><p style= color:red>"+user.name+"</p></strong><br><br><center>"
				+ "<h3> <strong style= color:green>Login Successfull</strong></h3><br>"
				+ ""
				+ "<a href='home.jsp' style='color:DodgerBlue'>Enter Home</a>"
				+ "</center></body></html>";
		}else {
//			response.sendRedirect("index.html");
		html = "<html><body><center> <strong> <p style= color:red>Failed to Login!</p></strong></center></body></html>";
		}
		
		writer.println(html);
	}

}
