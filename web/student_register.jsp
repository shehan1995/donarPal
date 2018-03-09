<%-- 
    Document   : student_register
    Created on : Dec 22, 2017, 7:38:51 PM
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
        <title>Student Registration</title>
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
                <div class="card-header">Register as a Student</div>
                <div class="card-body">
                    <form method="post" action="StudentReg" enctype="multipart/form-data">
                        
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
                        <label>Gender</label>                            
                        <div class="form-group">
                        	
                        			<input  type="radio" name="gender" value="Male"/>  Male
                            	
                        			<input  type="radio" name="gender" value="Female"/>  Female
                            
                        	</div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input class="form-control" id="exampleInputEmail1" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleIDNumber">ID Number</label>
                                    <input class="form-control" id="exampleIDNumber" type="text" name="id" aria-describedby="nameHelp" placeholder="Enter Identy Card Number">
                                </div>
                                <div class="col-md-6">
                                    <label for="exampleContactNumber">Contact Number</label>
                                    <input class="form-control" id="exampleContactNumber" type="text" name="number" aria-describedby="nameHelp" placeholder="Enter Contact Number">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                            		<label for="examplePropic">Profile Picture</label>
                            	<input class="form-control" id="examplePropic" type="file" name="image" aria-describedby="nameHelp" placeholder="">
                            	</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleSchool">School</label>
                            <input class="form-control" id="exampleSchool" type="text" name="school" aria-describedby="nameHelp" placeholder="Enter Your School">
                        </div>
                        <div class="form-group">
                            <label for="exampleAddress">Address</label>
                            <input class="form-control" id="exampleAddress" type="text" name="address" aria-describedby="nameHelp" placeholder="Enter Your Address">
                        </div> 
                        <div class="form-group">
                        	<div class="form-row">
                                <div class="col-md-6">
                            		<label for="exampleCertify">Certification</label>
                            	<input class="form-control" id="exampleCertify" type="file" required="required" name="uploadFile" aria-describedby="nameHelp" placeholder="">
                            	</div>
                            </div>
                        </div>
                        
                        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Password">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Requirement Categories</label>                            
                        </div>
                        <div class="form-group">
                        	<div class="form-row">
                                <div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Stationary"/>  Stationary
                        		</div>
                       			<div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Uniform"/>  Uniform
                            	</div>
                            </div>
                        </div>
                        <div class="form-group">
                        	<div class="form-row">
                                <div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Shoes"/>  Shoes
                            	</div>
                            	<div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Textbooks"/>  Textbooks
                            	</div>
                                    
                        	</div>
                        </div>
                        <div class="form-group">
                        	<div class="form-row">
                                <div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Shoes"/>  Bags
                            	</div>
                            	<div class="col-md-6">
                        			<input  type="checkbox" name="Category" value="Textbooks"/>  Other
                            	</div>
                                    
                        	</div>
                        </div>
                       
                        <button class="btn btn-primary btn-block" value="StudentReg" type="submit">Register</button>
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
