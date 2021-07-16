<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<link rel="Stylesheet" href="css/Homepage.css">


<link rel="stylesheet" href="fonts/ionicons.min.css">
<link rel="stylesheet" href="css/Footer-Dark.css">
<link rel="stylesheet" href="css/Homestyles.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		

</head>
<body
	style="background-image: linear-gradient(180deg, #006080, #00131a);">


	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<i style="font-size: 24px; color: white; margin-right: 10px;"
				class="fa">&#xf238;</i> <a class="navbar-brand" href="#">Ceylon
				Railway Reservation</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="Home.jsp">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					
				</ul>
				<a href="ReservationCart.jsp">
				<i class="fa fa-shopping-cart"
					style="font-size: 20px; color: white; margin-left: 20px;"></i></a>
			</div>
		</div>
	</nav>

	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('images/adam-vandermeer-Dw9dWTzzsUE-unsplash.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">Travel with us all over Sri Lanka</h3>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('images/minura-wijesena-ECWxeU9A7uY-unsplash.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">All of this is now at your fingertips</h3>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('images/kevin-olson-0udyYWLlzu0-unsplash.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">Make reservations and travel safely</h3>
						<p class="lead">Ceylon train reservations</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>
	<br>


	<div class="container" style="border-radius: px;">

		<div class="row justify-content-center" style="border-radius: 20px;">
			<div class="col-12 col-md-10 col-lg-8" style="border-radius: 25px;">
				<form class="card card-sm">
					<div class="card-body row no-gutters align-items-center"
						style="border-radius: 25px;">
						<div class="col-auto" style="border-radius: px;">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col" style="border-radius: px;">
							<input
								class="form-control form-control-lg form-control-borderless"
								type="search" placeholder="Search topics or keywords">
						</div>
						<!--end of col-->
						<div class="col-auto">
							<button class="btn btn-lg btn-success" type="submit">Search</button>
						</div>
						<!--end of col-->
					</div>
				</form>
			</div>
			<!--end of col-->
		</div>
	</div>
	<br>
	<br>

	<section style="text-align: center;">
		<button type="button" class="btn btn-primary btn-lg"
			style="background-color: #33ccff;">Time Table</button>
		<a href="SearchTrainBook.jsp">
			<button type="button" class="btn btn-primary btn-lg">Book
				your ticket</button>
		</a>
		<button type="button" class="btn btn-secondary btn-lg">Cancel/update
			your ticket</button>
	</section>
	<br>
	<br>



  <div class="row">
  
	<div class="col-sm-5 col-md-5 col-xs-5"
		style="border: 5px solid #eee; margin-left:auto; margin-right:auto;">
		<div>
			<div class="col-sm-4 col-md-4 col-xs-8" style="padding:15px;">
				<img alt="" src="images/demodara_1.jpg"
					style="height: 350px; width:fixed;" />
			</div>
			<div class="col-sm-8 col-md-8 col-xs-16">
				<h4 style="color:white; width:100%" >A Photo of the eye - catching nine arch bridge in Sri Lanka, a marvelous idea of a Railway employee, gose to world.</h4>
				<br>
				<p style="color:white;">
					The photograph of a train, running on the nine arch bridge in Demodara, Sri Lanka , taken by among the most attractive photographs of the railway tracks in the world.
				</p>
			</div>
		</div>
	</div>

		<div class="col-sm-5 col-md-5 col-xs-5"
		style="border: 5px solid #eee; margin-left:auto; margin-right:auto;">
		<div>
			<div class="col-sm-4 col-md-4 col-xs-8" style="padding: 15px">
				<img alt="" src="images/s13.jpg"
					style="height: 350px; width:570px" />
			</div>
			<div class="col-sm-8 col-md-8 col-xs-16">
				<h4 style="color:white; width:100%">Newly imported rolling stock (Class S14) for Sri Lanka Railway</h4>
				<br>
				<p style="color:white;">
					New intercity express train named the "Denuwara Menike" will be deployed from Colombo Fort to Badulla on the upcountry line from First of November, 2019. The train is scheduled to begin its journey at 6.45 am in the morning every day from Colombo Fort and due to travel from Badulla to Fort on the following day. The express train will reach its destination in 8 hours and 42 min.
				</p>
			</div>
		</div>
	</div>
	
</div>

<br>
	<!-- Footer -->
	<footer class="footer-dark">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 item">
					<h3>Services</h3>
					<ul>
						<li><a href="#">Train ticket reservations</a></li>
						<li><a href="#">Parcel transport</a></li>
						<li><a href="#">Hosting</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-md-3 item">
					<h3>About</h3>
					<ul>
						<li><a href="#">Company</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Careers</a></li>
					</ul>
				</div>
				<div class="col-md-6 item text">
					<h3>Ceylon Railway Reservation</h3>
					<p>Ceylon Railway Reservation ( CRR ) is a semi-government department functioning under the Ministry of Transport. It is a major transport service provider and is the only rail transport organization in the country. SLR transports both passenger and freight. At its inception, railway was carrying more freight than passenger. But today, it is passenger oriented. SLR’s market share for passenger transport is about 6.0 % and about 0.7 % for goods transport.</p>
				</div>
				<div class="col item social">
					<a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i
						class="icon ion-social-twitter"></i></a>
				</div>
			</div>
			<p class="copyright">Developed by 2021-2Y-1S-MTR-11 © 2021</p>
		</div>
	</footer>
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>