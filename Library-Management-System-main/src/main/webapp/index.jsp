
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Library Management System</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container text-center mt-5">
    <h1 class="display-5 fw-bold mb-4 text-primary">📚 Library Management System</h1>
    <p class="lead text-muted">Manage books, students, and issues seamlessly</p>

    <div class="d-flex justify-content-center flex-wrap gap-3 mt-4">
      <a href="books.jsp" class="btn btn-lg btn-outline-primary shadow-sm">📘 Manage Books</a>
      <a href="students.jsp" class="btn btn-lg btn-outline-success shadow-sm">🧑‍🎓 Manage Students</a>
      <a href="categories.jsp" class="btn btn-lg btn-outline-warning shadow-sm">🏷️ Manage Categories</a>
      <a href="issue.jsp" class="btn btn-lg btn-outline-danger shadow-sm">📤 Issue/Return Books</a>
    </div>
  </div>
</body>
</html>
