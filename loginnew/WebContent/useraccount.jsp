<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="train.Servlet.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resourse/css/Contact-Form-Clean.css">
<link rel="stylesheet" href="resourse/css/styles.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="cus" items="${cusDetails}">

		<c:set var="id" value="${cus.id}" />
		<c:set var="name" value="${cus.name}" />
		<c:set var="username" value="${cus.username}" />
		<c:set var="email" value="${cus.email}" />
		<c:set var="address" value="${cus.address}" />
		<c:set var="dateofbirth" value="${cus.dateofbirth}" />
		<c:set var="phone" value="${cus.phone}" />
		<c:set var="zippostalcode" value="${cus.zippostalcode}" />
		<c:set var="gender" value="${cus.gender}" />
		<c:set var="password" value="${cus.password}" />

		<div class="container emp-profile">
			<form method="post">
				<div class="row">
					<div class="col-md-4">
						<div class="profile-img">
							<img src="resourse/img/profil.jpg"
								style="width: 80px; height: 80px;">

						</div>
					</div>
					<div class="col-md-6">
						<div class="profile-head">
							<h5>${cus.username}</h5>


							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="home-tab" data-toggle="tab" href="#home" role="tab"
									aria-controls="home" aria-selected="true">About</a></li>
								<li class="nav-item"><a class="nav-link" id="profile-tab"
									data-toggle="tab" href="#profile" role="tab"
									aria-controls="profile" aria-selected="false">Timeline</a></li>
							</ul>
						</div>
					</div>

				</div>
				<div class="row">

					<div class="col-md-4" style="font-color:blue">
						<div class="tab-content profile-tab" id="myTabContent">
							<div class="tab-pane fade show active" id="home" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="row">
									<div class="col-md-6">
										<label>User Id</label>
									</div>
									<div class="col-md-6">
										<p>${cus.id}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Full Name</label>
									</div>
									<div class="col-md-6">
										<p>${cus.name}</p>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<label>Email</label>
									</div>
									<div class="col-md-6">
										<p>${cus.email}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Address</label>
									</div>
									<div class="col-md-6">
										<p>${cus.address}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Date of Birth</label>
									</div>
									<div class="col-md-6">
										<p>${cus.dateofbirth}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Phone</label>
									</div>
									<div class="col-md-6">
										<p>${cus.phone}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Zip/ postal Code</label>
									</div>
									<div class="col-md-6">
										<p>${cus.zippostalcode}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Gender</label>
									</div>
									<div class="col-md-6">
										<p>${cus.gender}</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Password</label>
									</div>
									<div class="col-md-6">
										<p>${cus.password}</p>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</form>
		</div>
	</c:forEach>





	<c:url value="updatecustomer.jsp" var="cusupdate">

		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="uname" value="${username}" />
		<c:param name="email" value="${email}" />
		<c:param name="address" value="${address}" />
		<c:param name="dateofbirth" value="${dateofbirth}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="zippostalcode" value="${zippostalcode}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="pass" value="${password}" />
	</c:url>


	<a href="${cusupdate}"> <input type="button"
		class="profile-edit-btn" name="update" value="Edit Profile" style="border-radius:30px; background-color: #008CBA;">
	</a>
	<br>
	<br>

	<c:url value="deletecustomer.jsp" var="cusdelete">

		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="uname" value="${username}" />
		<c:param name="email" value="${email}" />
		<c:param name="address" value="${address}" />
		<c:param name="dateofbirth" value="${dateofbirth}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="zippostalcode" value="${zippostalcode}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="pass" value="${password}" />

	</c:url>

	<a href="${cusdelete}"> <input type="button"
		class="profile-edit-btn" name="delete" value="Delete account" style="border-radius:30px;background-color: #008CBA;">
	</a>

	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>