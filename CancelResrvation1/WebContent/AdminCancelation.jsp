<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/trainreservation";

String user = "root";
String password = "#Dongaa99";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: red;
}
</style>
<link rel="stylesheet" href="resources/css/AdminDashboard.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>AdminCancelation</title>

</head>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">
<body class="home">
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box"
				id="navigation">
				<div class="logo">

					<i class="fa fa-train"
						style="font-size: 48px; color: red; margin-top: 20px; margin-bottom: 20px;"></i>


				</div>
				<div class="navi">
					<ul>
						<li class="active"><a href="#"><i class="fa fa-home"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>
						<li><a href="AdminReservation.jsp"><i class="fa fa-tasks" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Reservations</span></a></li>
						<li><a href="AdminCancelation.jsp"><i class="fa fa-close"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Cancelations
									Requests</span></a></li>
						<li><a href="#"><i class="fa fa-train" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Add Train</span></a></li>
						<li><a href="#"><i class="fa fa-bar-chart"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Get
									Report</span></a></li>
						<li><a href="#"><i class="fa fa-credit-card"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Payment</span></a></li>
						<li><a href="#"><i class="fa fa-cog" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Setting</span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<div class="row">
					<header>
						<div class="col-md-7">
							<%-- <nav class="navbar-default pull-left">
                                 <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="offcanvas" data-target="#side-menu" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div> 
                            </nav> --%>
							<div class="search hidden-xs hidden-sm">
								<input type="text" placeholder="Search" id="search">
							</div>
						</div>
						<div class="col-md-5">
							<div class="header-rightside">
								<ul class="list-inline header-top pull-right">
									<li class="hidden-xs"><a href="#" class="add-project"
										data-toggle="modal" data-target="#add_project">USER
											PROFILE</a></li>
									<li><a href="#"><i class="fa fa-envelope"
											aria-hidden="true"></i></a></li>
									<li><a href="#" class="icon-info"> <i
											class="fa fa-bell" aria-hidden="true"></i> <span
											class="label label-primary">3</span>
									</a></li>

								</ul>
							</div>
						</div>
					</header>
				</div>
				<h1>Pending Cancelation Requests...</h1>
				<br>
				<br>
	<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 mx-auto">
				<table border="1" class="table bg-white rounded border table-striped table-dark">
					<thead style="background-color:#D3C8C8;">
					<tr>
						<th scope="col">ID</td>
						<th scope="col">Reservation ID</td>
						<th scope="col">first name</td>
						<th scope="col">last name</td>
						<th scope="col">Email</td>
						<th scope="col">Phone</td>
						<th scope="col">Message</td>

					</tr>
					</thead>
					<%
					try {
						connection = DriverManager.getConnection(connectionUrl, user, password);
						statement = connection.createStatement();
						String sql = "SELECT * FROM CancelationRequest";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
					<tbody>
					<tr style="background-color:#eee;">
						<td scope="row"><%=resultSet.getInt(1)%></td>
						<td><%=resultSet.getString(2)%></td>
						<td><%=resultSet.getString(3)%></td>
						<td><%=resultSet.getString(4)%></td>
						<td><%=resultSet.getString(5)%></td>
						<td><%=resultSet.getString(6)%></td>
						<td><%=resultSet.getString(7)%></td>

					</tr>
					
					<%
					}
					connection.close();
					} catch (Exception e) {
						
					e.printStackTrace();
					
					}
					%>
					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>