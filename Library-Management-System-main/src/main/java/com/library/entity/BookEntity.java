package com.library.entity;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

import com.library.db.DbConnection;
@MultipartConfig
public class BookEntity {
	
	public void addBook(String title,String publisher,String author,String isbn,String category,InputStream ip,Part part) {
		
	Connection connection=	DbConnection.DbConnection();
	try {
	PreparedStatement ps=	connection.prepareStatement("INSERT INTO books (title, author, publisher, category, isbn,photo) VALUES (?, ?, ?, ?, ?,?)");
	
	 ps.setString(1, title);
     ps.setString(2, author);
     ps.setString(3, publisher);
     ps.setString(4, category);
     ps.setString(5, isbn);
     ps.setBinaryStream(6,ip, part.getSize());
     
    int i= ps.executeUpdate();
    System.out.println(i);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ip.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
	
}
