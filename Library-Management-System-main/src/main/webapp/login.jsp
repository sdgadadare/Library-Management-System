<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Library Login | Register</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/login.css">
</head>
<body>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
  <div class="card p-4 shadow-lg border-0 rounded-4" id="form-card">
    <div class="text-center mb-4">
      <h2 class="fw-bold text-primary">📚 Library Portal</h2>
      <p class="text-muted">Welcome back! Login or Register to continue</p>
    </div>

    <!-- Tabs -->
    <ul class="nav nav-tabs mb-3 justify-content-center" id="formTabs" role="tablist">
      <li class="nav-item">
        <button class="nav-link active" id="user-tab" data-bs-toggle="tab" data-bs-target="#user" type="button">User</button>
      </li>
      <li class="nav-item">
        <button class="nav-link" id="librarian-tab" data-bs-toggle="tab" data-bs-target="#librarian" type="button">Librarian</button>
      </li>
    </ul>

    <!-- Tab Content -->
    <div class="tab-content" id="formTabsContent">
      
      <!-- USER LOGIN/REGISTER -->
      <div class="tab-pane fade show active" id="user" role="tabpanel">
        <div id="userForms">

          <!-- LOGIN -->
          <form id="userLoginForm" class="form-section" action="login">
            <input name="email" class="form-control mb-3" placeholder="Email" required>
            <input name="password" type="password" class="form-control mb-3" placeholder="Password" required>
            <button class="btn btn-primary w-100">Login</button>
            <p class="mt-3 text-center">
              Don’t have an account? 
              <a href="#" class="text-decoration-none" id="showRegister">Register</a>
            </p>
          </form>

          <!-- REGISTER -->
          <form id="userRegisterForm" class="form-section d-none" action="register">

            <input name="name"
                   class="form-control mb-3"
                   placeholder="Full Name"
                   required
                   pattern="^[A-Za-z\\s]{3,30}$"
                   title="Name must contain only letters (min 3 characters)">

            <input name="email"
                   class="form-control mb-3"
                   placeholder="Email"
                   required
                   pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$"
                   title="Enter a valid email address">

            <input name="password"
                   type="password"
                   class="form-control mb-3"
                   placeholder="Password"
                   required
                   pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{6,}$"
                   title="Password must be at least 6 chars with 1 uppercase, 1 lowercase, 1 number, 1 special char">

            <button class="btn btn-success w-100">Register</button>

            <p class="mt-3 text-center">
              Already have an account? 
              <a href="#" class="text-decoration-none" id="showLogin">Login</a>
            </p>
          </form>

        </div>
      </div>

      <!-- LIBRARIAN LOGIN -->
      <div class="tab-pane fade" id="librarian" role="tabpanel">
        <form id="librarianLoginForm" action="librarianLogin">
          <input name="username" class="form-control mb-3" placeholder="Librarian Email" required>
          <input name="password" type="password" class="form-control mb-3" placeholder="Password" required>
          <button class="btn btn-dark w-100">Login as Librarian</button>
        </form>
      </div>

    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  const registerForm = document.getElementById('userRegisterForm');
  const loginForm = document.getElementById('userLoginForm');

  document.getElementById('showRegister').onclick = () => {
    loginForm.classList.add('d-none');
    registerForm.classList.remove('d-none');
    document.getElementById('form-card').classList.add('flipped');
  };

  document.getElementById('showLogin').onclick = () => {
    registerForm.classList.add('d-none');
    loginForm.classList.remove('d-none');
    document.getElementById('form-card').classList.remove('flipped');
  };
</script>

</body>
</html>
