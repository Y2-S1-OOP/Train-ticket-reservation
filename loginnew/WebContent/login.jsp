<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resourse/css/styles2.css">
</head>
<body>


<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>
	<script src="resourse/js/login.js"></script>


<section class="loginy">
<div id="logreg-forms">
        <form action="LoginServlet" method="post" class="form-signin" style="background-color: white;">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Login</h1>
        
            
            <div class="input-group">
              <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="uid" autofocus>
            </div>

            <div class="input-group">
              <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" >
            </div>

            <div class="input-group">
              <button class="btn btn-md btn-rounded btn-block form-control submit" type="submit" style="background-color: blue;"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            </div>

          
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <a href="Register.jsp">
            <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus" ></i> Sign up</button>
            </a>
            </form>
            <br>

    </div>
    
    
    </section>
</body>
</html>