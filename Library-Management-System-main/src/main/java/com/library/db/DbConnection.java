package com.library.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection DbConnection() {
		Connection connection=null;
		try {
			Class.forName("org.postgresql.Driver");
		 connection=	DriverManager.getConnection("jdbc:postgresql://localhost:5432/librarymsystem","postgres","root");
		 return connection;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			
			
		}
		return connection;
		
		
	}
	

}
