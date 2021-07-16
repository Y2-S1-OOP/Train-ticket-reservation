<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="css/SearchTrain.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body
	style="background-image: url(images/arturo-rey-ej7h6g3e8Kg-unsplash.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;">

	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<div class="header">
		<a href="Home.jsp" class="logo">Ceylon Railway Reservation</a>
		<div class="header-right">
			<a class="active" href="Home.jsp">Back to Home</a>
		</div>
	</div>

	<div class="form">
		<form action="search" method="post">
			<h3>Search train for reservation</h3>
			<br> <label for="fromstation">From Station</label> <select
				id="fstation" name="FROM">
				<option value="BELIATHTHA">BELIATHTHA</option>
				<option value="MATARA">MATARA</option>
				<option value="HIKKADUWA">HIKKADUWA</option>
				<option value="COLOMBO FORT">COLOMBO FORT</option>
			</select> <br> <label for="tostation">To Station</label> <select
				id="tstation" name="TO">
				<option value="BELIATHTHA">BELIATHTHA</option>
				<option value="MATARA">MATARA</option>
				<option value="HIKKADUWA">HIKKADUWA</option>
				<option value="COLOMBO FORT">COLOMBO FORT</option>
			</select> <br> <label for="RunsOn">Runs On</label> <select id="Run"
				name="RunsOn">
				<option value="DAILY">DAILY</option>
				<option value="WEEKDAY">WEEKDAY</option>
				<option value="WEEKEND">WEEKEND</option>
			</select> <br> <input type="submit" name="submit" value="Search">
		</form>
	</div>

</body>
</html>