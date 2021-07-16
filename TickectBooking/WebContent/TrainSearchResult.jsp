<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/searchResult.css">
</head>
<body style="background-image:url(images/arturo-rey-ej7h6g3e8Kg-unsplash.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;">


 <script src="js/jquery.min.js"></script>
 <script src="bootstrap/js/bootstrap.min.js"></script>
 
 	<div class="header">
		<a href="Home.jsp" class="logo">Ceylon
				Railway Reservation</a>
		<div class="header-right">
			<a class="active" href="Home.jsp">Back to Home</a>
		</div>
	</div>


    <c:forEach var="trj" items="${jouDetails}">
    
    <c:set var="trainid" value="${trj.trainID}"/>
    <c:set var="startstation" value="${trj.fromStation}"/>
    <c:set var="endstation" value="${trj.toStation}"/>
    
    <div class="card" style="width:1100px; margin-left: auto; margin-right: auto; margin-top:80px; margin-bottom:50px;">
    <h5 class="card-header">Search Train</h5>
    <div class="card-body">
     <table style="width:100%" border="1">
     <tr>
     <th> Train ID </th>
     <th> Train Name </th>
     <th> From station </th>
     <th> To station </th>
     <th> Start time </th>
     <th> End time </th>
     <th> Frequency </th>
     <th> Train type </th>
     <th> Train Class </th>
     </tr>
     <tr>
     <th>${trj.trainID}</th>
     <th>${trj.trainName}</th>
     <th>${trj.fromStation}</th>  
     <th>${trj.toStation}</th>  
     <th>${trj.startTime}</th>  
     <th>${trj.endTime}</th>
     <th>${trj.frequency}</th>  
     <th>${trj.trainType}</th>  
     <th>${trj.availableTrain}</th>
     </tr>
     </table>
     <br>
     
     <h5>Ticket Prices</h5>
     <table style="width:20%" border="1">
     <tr>
     <th>Class Name </th>
     <th>Price(Rs.)</th>
     </tr>
     <tr>
     <td>1st Class</td>
     <td>${trj.FClassPrice}</td>
     </tr>
     <tr>
     <td>2nd Class</td>
     <td>${trj.SClassPrice}</td>
     </tr>
     <tr>
     <td>3rd Class</td>
     <td>${trj.TClassPrice}</td>
     </tr>
     </table>
     <br>
     Total distance : ${trj.totalDistance}
     <br>
    
    
    <c:url value="ReservationMake.jsp" var="RES">
    
       <c:param name="trainid" value="${trainid}"/> 
       <c:param name="startstation" value="${startstation}"/>
       <c:param name="endstation" value="${endstation}"/>
    
    </c:url>
    <br>
    <a href="${RES}">
    <input type ="button" class="btn btn-primary" name="MakeReservation" value = "Make Reservation">
    </a> 
    </div>
    </div>
      
    
    
    </c:forEach>
     
</body>
</html>