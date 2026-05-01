<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.library.db.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<%

 Connection connection=  DbConnection.DbConnection();
 PreparedStatement ps= connection.prepareStatement("select * from books");
 
  ResultSet rs=  ps.executeQuery();
  



%>

<div class="container mt-5">

    <h2 class="text-center mb-4 text-primary">📘 Manage Books</h2>

    <!-- Add Book Button -->
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#bookModal">
        ➕ Add Book
    </button>

    <!-- Book List Table -->
    <div class="table-responsive">
        <table id="bookTable" class="table table-bordered table-striped align-middle text-center">
            <thead class="table-dark">
                <tr>
                    <th>Photo</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Category</th>
                    <th>ISBN</th>
                    <th>Actions</th>
                </tr>
                
            </thead>
            <tbody id="bookTableBody">
            <% while(rs.next()){
            	
            	
            	%>
            	
            	<tr>
            	<td>demo</td>
            	<td><p> <%= rs.getString(2) %></p></td>
            	<td><%= rs.getString(3) %></td>
            	<td><%= rs.getString(4) %></td>
            	<td><%= rs.getString(9) %></td>
            	<td><%= rs.getString(7) %></td>
            	<td>
            	<form action="">
            	<input type="submit" value="Read">
            	</form>
             	<form action="">
            	<input type="submit" value="Update">
            	</form>
             	<form action="/delete">
             	    <input type="hidden" name="id" value="<%= rs.getInt(1) %>">
            	<input type="submit" value="Delete">
            	</form>
            	</td>
            	
            	
            	</tr>
            	
         <% }%>
            </tbody>
        </table>
    </div>

</div>

<!-- MODAL FORM (Add + Update) -->
<div class="modal fade" id="bookModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">Add / Update Book</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">

        <form id="bookForm" action="addbook" method="post" enctype="multipart/form-data">

          <input type="hidden" id="bookId">

          <div class="row g-3">

            <div class="col-md-6">
              <label class="form-label">Book Title</label>
              <input id="title" class="form-control" required name="title">
            </div>

            <div class="col-md-6">
              <label class="form-label">Author</label>
              <input id="author" class="form-control" required name="author">
            </div>

            <div class="col-md-6">
              <label class="form-label">Publisher</label>
              <input id="publisher" class="form-control" required name="publisher">
            </div>

            <div class="col-md-6">
              <label class="form-label">Category</label>
              <input id="category" class="form-control" required name="category">
            </div>

            <div class="col-md-6">
              <label class="form-label">ISBN</label>
              <input id="isbn" class="form-control" required name="isbn">
            </div>

            <div class="col-md-6">
              <label class="form-label">Book Image</label>
              <input type="file" id="photoInput" accept="image/*" class="form-control" name="photo">

              <img id="previewImage" src="images/default-book.png" class="img-thumbnail mt-2" width="140">
            </div>

          </div>

          <button type="submit" class="btn btn-success mt-3">Save Book</button>

        </form>

      </div>

    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/books.js"></script>

</body>
</html>
