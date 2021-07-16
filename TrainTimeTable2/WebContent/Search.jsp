<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ceylon Railway Reservation</title>


<!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <link rel="stylesheet" href="resources/search/css/style.css">
    <link rel="stylesheet" href="resources/css/fonts.css">
    <link rel="stylesheet" href="resources/search/css/Search.css">




<link rel="stylesheet" href="resources/home/bootstrap/css/bootstrap.min.css">

<link rel="Stylesheet" href="resources/home/css/Homepage.css">


<link rel="stylesheet" href="resources/home/fonts/ionicons.min.css">
<link rel="stylesheet" href="resources/home/css/Footer-Dark.css">
<link rel="stylesheet" href="resources/home/css/Homestyles.css">

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
<body>


	<script src="resources/home/js/jquery.min.js"></script>
	<script src="resources/home/bootstrap/js/bootstrap.min.js"></script>

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
					<li class="nav-item"><a class="nav-link" href="#">Sign In</a>
					</li>
					<li class="nav-item"><a class="nav-link" style="color: red;"
						href="#">Sign Up</a></li>
				</ul>
				<a href="#">
				<i class="fa fa-shopping-cart"
					style="font-size: 20px; color: white; margin-left: 20px;"></i></a>
			</div>
		</div>
	</nav>
	<br><br><br><br>
		
	
<!-- Content -->
     <div class="container container-bigger form-request-wrap form-request-wrap-modern">
            <div class="row row-fix justify-content-sm-center justify-content-lg-end">
              <div class="col-lg-6 col-xxl-5">
                <div class="form-request form-request-modern bg-gray-lighter novi-background">
                  
                  <h4>Find your Journey</h4>
                  <!-- RD Mailform-->
                  
                  <form class="rd-mailform form-fix" action="time" method="post">
                    <div class="row row-20 row-fix">
                      <div class="col-sm-12">
                        <label class="form-label-outside">From</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="fromid" required>
                            <option value = "">--Select--</option>
					        <option value = "Matara">Matara</option>
					        <option value = "Galle">Galle</option>
					        <option value = "Maradana">Maradana</option>
                          </select>
                        </div>
                      </div>
                      
                      <div class="col-sm-12">
                        <label class="form-label-outside">To</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="toid" required>
                            <option value = "">--Select--</option>
					        <option value = "Matara">Matara</option>
					        <option value = "Galle">Galle</option>
					        <option value = "Maradana">Maradana</option>
                          </select>
                        </div>
                      </div>
                      
                      <div class="col-sm-12">
                        <label class="form-label-outside">Day</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="dayid" required>
                            <option value = "">--Select--</option>
					        <option value = "Sunday">Sunday</option>
					        <option value = "Monday">Monday</option>
					        <option value = "Tuesday">Tuesday</option>
					        <option value = "Wednesday">Wednesday</option>
					        <option value = "Thursday">Thursday</option>
					        <option value = "Friday">Friday</option>
					        <option value = "Saturday">Saturday</option>
                          </select>
                        </div>
                      </div>
                     
                      
                    </div>
                    <div class="form-wrap form-button">
                      <button class="button button-block button-secondary" type="submit">Search Journey</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div> <br><br><br><br>
     
     
     
     
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