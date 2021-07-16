<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="resources/css/SuccessfullyDeleted.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Deleted</title>
</head>
<body>


<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
    <i style="font-size:48px;color:red" class="fas fa-edit"></i>
      
      <h1>Updated Successfully !</h1>
    </div>

   
    <form action="AdminReservation.jsp" method="post">
      <input type="submit" class="fadeIn fourth" value="Go Back">
    </form>
    
    <div id="formFooter">
      <a class="underlineHover" href="AdminDashboard.jsp">Admin Dashboard</a>
    </div>

  </div>
</div>

</body>
</html>