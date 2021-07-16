<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/AdminDashboard.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="resources/js/AdminDashboard.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>AdminDashBoard</title>
</head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<body class="home">
    <div class="container-fluid display-table">
        <div class="row display-table-row">
            <div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation">
                <div class="logo">
                    
                        <i class="fa fa-train" style="font-size:48px;color:red;margin-top:20px;margin-bottom:20px;"></i>
                        
                    
                </div>
                <!-- Navigation Bar  -->
                <div class="navi">
                    <ul>
                        <li class="active"><a href="AdminDashboard.jsp"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>
                        <li><a href="AdminReservation.jsp"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Reservations</span></a></li>
                        <li><a href="AdminCancelation.jsp"><i class="fa fa-close" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Cancellations Requests</span></a></li>
                        <li><a href="#"><i class="fa fa-train" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Add Train</span></a></li>
                        <li><a href="#"><i class="fa fa-bar-chart" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Get Report</span></a></li>
                        <li><a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Payment</span></a></li>
                        <li><a href="#"><i class="fa fa-cog" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Setting</span></a></li>
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
                                    <li class="hidden-xs"><a href="#" class="add-project" data-toggle="modal" data-target="#add_project">USER PROFILE</a></li>
                                    <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
                                    <li>
                                        <a href="#" class="icon-info">
                                            <i class="fa fa-bell" aria-hidden="true"></i>
                                            <span class="label label-primary">3</span>
                                        </a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </header>
                </div>
                <div class="user-dashboard">
                    <h1>Hello, ADMIN</h1>
                    
                </div>
            </div>
        </div>

    </div>
</body>
</html>