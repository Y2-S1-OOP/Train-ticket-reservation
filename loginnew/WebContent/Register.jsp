<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resourse/css/Register.css">
<link rel="stylesheet" href="resourse/js/Register.js">
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

	<div class="container">
		<form action="CustomerInsert" method="post" class="form-horizontal"
			role="form">
			<h2>Registration</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Full
					Name</label>
				<div class="col-sm-9">
					<input type="text" name="name" id="firstName"
						placeholder="First Name" class="form-control" autofocus required>
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" name="username" id="username"
						placeholder="Username" class="form-control" autofocus required>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email </label>
				<div class="col-sm-9">
					<input type="email" id="email" placeholder="Email"
						class="form-control" name="email" required>
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-sm-3 control-label">Address</label>
				<div class="col-sm-9">
					<textarea class="form-control" id="address" placeholder="address"
						name="address" rows="6" required>
                        </textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					of Birth</label>
				<div class="col-sm-9">
					<input type="date" name="dateofbirth" id="birthDate"
						class="form-control" required>
				</div>
			</div>
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-7 control-label">Phone
					Number </label>
				<div class="col-sm-9">
					<input name="phone" id="phoneNumber" placeholder="Phone number"
						class="form-control" required>
				</div>
			</div>
			<div class="form-group">
				<label for="postalcode" class="col-sm-3 control-label">Zip/PostalCode
				</label>
				<div class="col-sm-9">
					<input name="zippostalcode" id="postalcode"
						placeholder="postalcode/Zip" class="form-control"
						name="postalcode" required>
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-3" for="gender">Gender</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-0"> <input
								type="radio" name="gender" id="gender-0" value="Female"
								checked="checked" required>Female
							</label>
						</div>
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-1"> <input
								type="radio" name="gender" id="gender-1" value="Male" required>Male
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password</label>
					<div class="col-sm-9">
						<input name="psw" type="password" id="password"
							placeholder="Password" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-8 control-label">Confirmed
						Password</label>
					<div class="col-sm-9">
						<input name="psw" type="password" id="password"
							placeholder="Password" class="form-control" required>
					</div>
				</div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<span class="help-block">*Required fields</span>
				</div>
			</div>
			<button type="submit" name="submit" class="btn btn-primary btn-block"
				style="border-radius: 40px">Register</button>
		</form>
		<!-- /form -->
	</div>
	<!-- ./container -->

</body>
</html>