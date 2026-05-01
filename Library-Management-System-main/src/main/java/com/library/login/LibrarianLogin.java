package com.library.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/librarianLogin")
public class LibrarianLogin extends HttpServlet {
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String user=	req.getParameter("username");
	String pass=req.getParameter("password");
	
	if(user.equals("admin@library.com") && pass.equals("admin@library1234")) {
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	else {
		req.getRequestDispatcher("/librarianLogin").include(req, resp);
	}
	}

}
