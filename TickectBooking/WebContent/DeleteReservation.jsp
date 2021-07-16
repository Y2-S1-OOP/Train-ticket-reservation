<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body style="background-image: url(images/niamat-ullah-hpbuai1MDaw-unsplash.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;">

	<%

String reservationID = request.getParameter("reservationID");
String trainid = request.getParameter("trainid");
String FSTATION = request.getParameter("FSTATION");
String TSTATION = request.getParameter("TOSTATION");

%>





	<div class="card"
		style="width: 1100px; margin-left: auto; margin-right: auto; margin-top: 80px; margin-bottom: 50px;">
		<h5 class="card-header">Delete Reservation</h5>
		<div class="card-body">


			<form action="Delete" method="post">

				<input type="text" name="ResID" value=<%=reservationID%> readonly>
				<br>

				<table style="width: 100%" border="1">
					<tr>
						<th>Reservation ID</th>
						<th>Train ID</th>
						<th>From station</th>
						<th>To station</th>
					</tr>
					<tr>
						<th><%=reservationID%></th>
						<th><%=trainid%></th>
						<th><%=FSTATION%></th>
						<th><%=TSTATION%></th>
					</tr>
				</table>
				<br> <input type="submit" class="btn btn-primary"
					name="Deletereservation" value="Confirm Delete Reservation">

			</form>
		</div>
	</div>

</body>
</html>