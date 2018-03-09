<%-- 
    Document   : register
    Created on : Dec 21, 2017, 10:58:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Doner Registration</title>
        <!-- Bootstrap core CSS-->
        <link href="css/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
    </head>

    <body class="bg-dark">
        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Register as a Doner</div>
                <div class="card-body">
                    <form method="post" action="DonerReg">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleInputName">First name</label>
                                    <input class="form-control" id="exampleInputName" name="fname" required="required" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                                </div>
                                <div class="col-md-6">
                                    <label for="exampleInputLastName">Last name</label>
                                    <input class="form-control" id="exampleInputLastName" name="lname" required="required" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input class="form-control" id="exampleInputEmail1" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="exampleIDNumber">ID Number</label>
                            <input class="form-control" id="exampleIDNumber" type="text" name="id" aria-describedby="nameHelp" placeholder="Enter Identy Card Number">
                        </div>
                        <div class="form-group">
                            <label for="exampleAddress">Address</label>
                            <input class="form-control" id="exampleAddress" type="text" name="address" aria-describedby="nameHelp" placeholder="Enter Your Address">
                        </div>
                        <div class="form-group">
                            <label for="exampleOccupation">Occupation</label>
                            <input class="form-control" id="exampleOccupation" type="text" name="job" aria-describedby="nameHelp" placeholder="Enter Your Occupation">
                        </div>
                        <div class="form-group">
                            <label for="exampleOccupation">Occupation</label>
                            <input class="form-control" id="exampleOccupation" type="text" name="tp" aria-describedby="nameHelp" placeholder="Enter Your Contact Number">
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Password">
                                </div>

                            </div>
                        </div>
                        <button class="btn btn-primary btn-block" value="DonerReg" type="submit">Register</button>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="login.jsp">Login Page</a>
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

