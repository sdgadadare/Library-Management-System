package com.library.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.db.DbConnection;
@WebServlet("/register")
public class Register extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String name= req.getParameter("name");
		String email=req.getParameter("email");
		String pasword=req.getParameter("password");
		
		String sql="insert into users(name,email,password) values(?,?,?)";
		Connection connection=DbConnection.DbConnection();
		try {
			PreparedStatement ps= connection.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pasword);
			int i=ps.executeUpdate();
			
			System.out.println(i);
			
			if(i==1) {
				System.out.println("registerd succesfully...!");
				resp.getWriter().print("<html><body><script>"
						+ "alert('data inserted succesfully')"
						+ "</script></body></html>");
			RequestDispatcher rs= req.getRequestDispatcher("login.jsp");
			rs.forward(req, resp);
			}else {
				RequestDispatcher rs=req.getRequestDispatcher("/register");
				rs.include(req, resp);
				resp.getWriter().print("<html><body><script>"
						+ "alert(' there is some issue while inserting the data')"
						+ "</script></body></html>");
			}
			System.out.println("method executed");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
