package com.qsp;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.library.entity.BookEntity;
@MultipartConfig
@WebServlet("/addbook")
public class Book extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("method executed");
		
	String title=	req.getParameter("title");
	String author = req.getParameter("author");
    String publisher = req.getParameter("publisher");
    String category = req.getParameter("category");
    String isbn = req.getParameter("isbn");
    Part part=req.getPart("photo");
    InputStream ip=part.getInputStream();
    
     BookEntity bookEntity=new BookEntity();
     
     bookEntity.addBook(title, publisher, author, isbn, category,ip,part);
     System.out.println("method done");
     
    
	}
	
	

}
