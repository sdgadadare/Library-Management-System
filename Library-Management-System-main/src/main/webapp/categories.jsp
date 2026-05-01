<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Manage Categories</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">

  <h2 class="text-center text-warning mb-4">🏷️ Manage Categories</h2>

  <!-- Category Form -->
  <form id="categoryForm" method="post" action="categories"
        class="p-4 border rounded-4 bg-light shadow-sm">

    <div class="row g-3">

      <div class="col-md-6">
        <input name="name" class="form-control" placeholder="Category Name" required />
      </div>

      <div class="col-md-6">
        <input name="description" class="form-control" placeholder="Description" required />
      </div>

    </div>

    <button type="submit" class="btn btn-warning text-white mt-4 px-4">Add Category</button>
    <a href="index.jsp" class="btn btn-outline-secondary mt-4 ms-2">⬅ Back</a>

  </form>

  <h4 class="mt-5">🏷️ Category List</h4>

  <table id="categoryTable" class="table table-striped table-hover mt-3 text-center shadow-sm"></table>

</div>

<script src="js/categories.js"></script>

</body>
</html>
