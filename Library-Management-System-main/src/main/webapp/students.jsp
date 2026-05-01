<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Manage Students</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container mt-5">
  <h2 class="text-center text-success mb-4">🧑‍🎓 Manage Students</h2>

  <form id="studentForm" class="p-4 border rounded-4 bg-light shadow-sm">
    <div class="row g-3">
      <div class="col-md-4">
        <input id="name" name="name" class="form-control" placeholder="Student Name" required>
      </div>

      <div class="col-md-4">
        <input id="email" name="email" class="form-control" placeholder="Email" required>
      </div>

      <div class="col-md-4">
        <input id="phone" name="phone" class="form-control" placeholder="Phone" required>
      </div>
    </div>

    <button type="submit" class="btn btn-success mt-4 px-4">Add Student</button>
    <a href="index.jsp" class="btn btn-outline-secondary mt-4 ms-2">⬅ Back</a>
  </form>

  <h4 class="mt-5">🎓 Student List</h4>
  
  <table id="studentTable" class="table table-striped table-hover mt-3 text-center shadow-sm"></table>
</div>

<script src="js/students.js"></script>

</body>
</html>
