<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/ReservationDetails.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>


     <c:forEach var="res" items="${resDetails}">
      
        <section class="box">
        <div class="box">
            <div class="row">

                <div class="col-md-4 text-center">
                    <div class="panel panel-success panel-pricing">
                        <div class="panel-heading">
                            <i class="fa fa-train" style="font-size:48px;color:red"></i>
                            <h3>Reservation ID</h3>
                            <h3>${res.reservationID}</h3>
                        </div>
                        <div class="panel-body text-center">
                            <p><strong>Name : ${res.name}</strong></p>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i> From : ${res.fromStation}</li>
                            <li class="list-group-item"><i class="fa fa-check"></i> To : ${res.toStation}</li>
                            <li class="list-group-item"><i class="fa fa-check"></i> Payment ID :  ${res.paymentID}</li>
                            <li class="list-group-item"><i class="fa fa-check"></i> Booked Date :  ${res.bookedDate}</li>
                        </ul>
                        <div class="panel-footer">
                            <a class="btn btn-lg btn-block btn-success" href="CancelationRequestForm.jsp">To Cancel / Update...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>   

  </c:forEach>  
  
 
</body>
</html>