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
	style="background-image: url(images/niamat-ullah-hpbuai1MDaw-unsplash.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;">

	<%
     
     String reservationID = request.getParameter("reservationID");
     String firstname = request.getParameter("firstname");
     String lastname = request.getParameter("lastname");
     String Email = request.getParameter("Email");
     String trainid = request.getParameter("trainid");
     String FSTATION = request.getParameter("FSTATION");
     String TSTATION = request.getParameter("TOSTATION");
     String CLASS = request.getParameter("CLASS");
     String DATE = request.getParameter("DATE");
     
     %>

	<div class="container">
		<form action="update" method="post">
			<br> Reservation Details <br> <br> <label for="resid">Reservation
				ID:</label> <input type="text" name="ResID" value="<%=reservationID%>"
				readonly> <br> <label for="fname">First Name:</label> <input
				type="text" name="firstname" value="<%=firstname %>" required>
			<br> <label for="lname">Last Name:</label> <input type="text"
				name="lastname" value="<%=lastname %>" required> <br> <label
				for="Email">Email: </label> <input type="email" name="Email"
				value="<%=Email%>" required><br> <br> <label
				for="trainid">Train ID:</label>
			<%=trainid %>
			<br> <br> <label for="fromstaion">From Station:</label>
			<%=FSTATION %>
			<br> <br> <label for="tostaion">To Station:</label>
			<%=TSTATION %>
			<br> <br><label for="trainclass">Train
				class:</label><input type="radio" id="1ST"
				name="CLASS" value="1st" ${CLASS eq "1st"?' checked="checked"':''}
				required /> <label for="1stClass">1st class </label> <input
				type="radio" id="2ND" name="CLASS" value="2nd"
				${CLASS eq "2nd"?' checked="checked"':''} required /> <label
				for="2ndClass">2nd class </label> <input type="radio" id="3RD"
				name="CLASS" value="3rd" ${CLASS eq "3rd"?' checked="checked"':''}
				required /><label for="3rdClass">3rd class</label> <br> <label style=color:red;>(Re-select Train Class*)<br></label>
			<br> <label for="Date">Date: </label> <input type="date"
				name="DATE" value="<%=DATE%>" required> <br>
			<br> <input type="submit" name="submit"
				value="Update Reservation">

		</form>
	</div>



</body>
</html>