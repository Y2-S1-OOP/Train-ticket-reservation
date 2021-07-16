<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body style="background-image: url(images/niamat-ullah-hpbuai1MDaw-unsplash.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;">


	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


	<c:forEach var="RES" items="${ResDetails}">

		<c:set var="reservationID" value="${RES.reservationID}" />
		<c:set var="firstname" value="${RES.firstName}" />
		<c:set var="lastname" value="${RES.lastName}" />
		<c:set var="Email" value="${RES.email}" />
		<c:set var="trainid" value="${RES.trainID}" />
		<c:set var="FSTATION" value="${RES.fromStation}" />
		<c:set var="TOSTATION" value="${RES.toStation}" />
		<c:set var="CLASS" value="${RES.trainClass}" />
		<c:set var="DATE" value="${RES.reservationDate}" />

		<div class="card"
			style="width: 400px; margin-left: auto; margin-right: auto; margin-top: 80px; margin-bottom: auto; background-color: #E9E9E9;">
			<h5 class="card-header">RESERVATION DETAILS</h5>
			<div class="card-body">
				Reservation ID: ${RES.reservationID}<br>
				<br> Name : ${RES.firstName} ${RES.lastName}<br>
				<br> Email : ${RES.email}<br>
				<br> Train ID: ${RES.trainID}<br>
				<br> From Station: ${RES.fromStation}<br>
				<br> To station: ${RES.toStation}<br>
				<br> Train Class: ${RES.trainClass}<br>
				<br> Reserved Date: ${RES.reservationDate}<br>
				<br>


				<c:url value="UpdateReservation.jsp" var="ResUpdate">
					<c:param name="reservationID" value="${reservationID}" />
					<c:param name="firstname" value="${firstname}" />
					<c:param name="lastname" value="${lastname}" />
					<c:param name="Email" value="${Email}" />
					<c:param name="trainid" value="${trainid}" />
					<c:param name="FSTATION" value="${FSTATION}" />
					<c:param name="TOSTATION" value="${TOSTATION}" />
					<c:param name="CLASS" value="${CLASS}" />
					<c:param name="DATE" value="${DATE}" />
				</c:url>

				<a href="${ResUpdate}"> <input type="button"
					class="btn btn-primary" name="UpdateReservation"
					value="Update Reservation">
				</a>


				<c:url value="DeleteReservation.jsp" var="ResDelete">
					<c:param name="reservationID" value="${reservationID}" />
					<c:param name="trainid" value="${trainid}" />
					<c:param name="FSTATION" value="${FSTATION}" />
					<c:param name="TOSTATION" value="${TOSTATION}" />
				</c:url>

				<a href="${ResDelete}"> <input type="button"
					class="btn btn-danger" name="DeleteReservation" data-toggle="modal" data-target="#form"
					value="Delete Reservation">
				</a> <br> <br> <a href="Payment.jsp"> <input type="button"
					class="btn btn-primary" name="MakePayment" value="Make payment">
				</a>
			</div>
		</div>



	</c:forEach>

</body>
</html>