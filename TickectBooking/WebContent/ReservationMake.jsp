<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ReservationMake.css">
</head>
<body
	style="background-image: linear-gradient(180deg, #006080, #00131a);">


	<% 
      
           String trainid = request.getParameter("trainid");     
           String startstation = request.getParameter("startstation");
           String endstation = request.getParameter("endstation");
      %>

	<div class="header">
		<a href="Home.jsp" class="logo">Ceylon
				Railway Reservation</a>
		<div class="header-right">
			<a class="active" href="Home.jsp">Back to Home</a>
		</div>
	</div>


	<div class="container">
		<form action="make" method="post">

			<br><h4>RESERVATION DETAILS</h4> <label>Receiver Details</label> <br> <label
				for="fname">First Name:</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.." required> <br> <label
				for="lname">Last Name:</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.." required> <br> <label
				for="Email">Email: </label> <input type="email" id="email"
				name="Email" placeholder="Your email.." required> <br> <br>
			<label>Train Details</label> <br> <label for="trainid">Train
				ID:</label> <input type="text" id="trainid" name="trainid"
				value="<%= trainid %>" readonly> <br> <label
				for="fromstaion">From Station:</label> <input type="text"
				id="Fstation" name="FSTATION" value="<%= startstation %>" readonly>
			<br> <label for="tostaion">To Station:</label> <input
				type="text" id="Tstation" name="TSTATION" value="<%= endstation %>"
				readonly> <br> <label for="trainclass">Train
				class:</label> <input type="radio" id="1ST" name="CLASS" value="1st" required>
			<label for="1stClass">1st class </label> <input type="radio" id="2ND"
				name="CLASS" value="2nd" required> <label for="2ndClass">2nd
				class </label> <input type="radio" id="3RD" name="CLASS" value="3rd" required>
			<label for="3rdClass">3rd class</label><br>
			<br> <label for="Date">Date for Reservation: </label> <input
				type="date" id="Date" name="DATE" placeholder="YYYY/MM/DD" required> <br>
			<br> <input type="submit" name="submit" value="Make Reservation">

		</form>
	</div>
	<br>
	<br>


</body>
</html>