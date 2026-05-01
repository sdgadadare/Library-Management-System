package com.library.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.db.DbConnection;
@WebServlet("/login")
public class Login extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=	req.getParameter("email");
	String pass=	req.getParameter("password");
	System.out.println(email);
	System.out.println(pass);
    Connection connection=DbConnection.DbConnection();
    
    try {
	PreparedStatement ps= 	connection.prepareStatement("select * from users where email=?");
	
	ps.setString(1, email);
	
	   ResultSet rs= ps.executeQuery();
	   if(rs.next()) {
		   System.out.println(rs.getString(3));
		   if(email.equals(rs.getString(3)) && pass.equals(rs.getString(4))) {
//			   req.getRequestDispatcher("index.html").forward(req, resp);
		   }
		   else {
			   System.out.println("login failed");
			   
			   req.getRequestDispatcher("login.jsp").include(req, resp);
		   }
		  
	   }
	   else {
		   System.out.println("login failed");
		   req.getRequestDispatcher("login.html").include(req, resp);
	   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    
    
		
		
	}

}
