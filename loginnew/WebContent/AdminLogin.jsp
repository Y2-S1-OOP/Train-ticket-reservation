<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resourse/css/adminlogin.css">
<link rel="stylesheet" href="resourse/js/adminlogin.js">

<meta charset="ISO-8859-1">
<title>Admin login</title>
</head>
<body>

	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 login-box">
				<div class="col-lg-12 login-key">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="col-lg-12 login-title">ADMIN LOGIN</div>

				<div class="col-lg-12 login-form">
					<div class="col-lg-12 login-form">
						<form action="AdminServlet" method="post">
							<div class="form-group">
								<label class="form-control-label">USERNAME</label> <input
									type="text" class="form-control" name="uname">
							</div>
							<div class="form-group">
								<label class="form-control-label">PASSWORD</label> <input
									type="password" class="form-control" name="password">
							</div>

							<div class="col-lg-12 loginbttm">
								<div class="col-lg-6 login-btm login-text">
									<!-- Error Message -->
								</div>
								<div class="col-lg-6 login-btm login-button">
									<button type="submit" class="btn btn-outline-primary">LOGIN</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>