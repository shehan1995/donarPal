<%-- 
    Document   : register
    Created on : Dec 21, 2017, 10:03:52 PM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

   
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Login</title>
  <!-- Bootstrap core CSS-->
  <link href="css/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
        
      <div class="card-header">Login</div>
      <div class="card-body">
          
          <form method="post" action="Login">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" type="email" name="uname" required="required" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
            
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" name="pass" required="required" placeholder="Password">
          </div>
            
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
            
            <button type="submit" value="Login" class="btn btn-primary btn-block">Login</button>
        </form>
          
          
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="js/vendor/jquery/jquery.min.js"></script>
  <script src="js/vendor/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="js/vendor/jquery.easing.min.js"></script>
</body>

</html>

