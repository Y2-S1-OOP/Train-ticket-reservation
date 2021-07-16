<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="pageNumber.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/AdminReservationUpdate.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Reservation Update</title>
</head>
<body>


 
  
<div class="container">
    	
	</div>
	<div class="form-bg">
    <div class="">
        <div class="row">
            <div class="col-md-offset-2 col-md-6">
            
                <form action="UpdateReservation" method="post" class="form-horizontal">
                <% 
                String id = request.getParameter("ReservationID");
                
                	
                try{
                	Connection con = null;
    				Class.forName("com.mysql.jdbc.Driver");
    				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trainreservation", "root", "#Dongaa99");
    				
    				String sql = "SELECT * FROM reservation WHERE ReservationID='"+id+"'";
    				Statement stmt = con.createStatement();
    				ResultSet result = stmt.executeQuery(sql);
                
    				while(result.next()){
    					
    				
                %>
                    <div class="header">Update Reservation</div>
                    <div class="form-content">
                        <h4 class="heading">Your Details</h4>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label">ReservationID</label><br>
                                <input class="form-control" id="exampleInputName2" name="resID" value="<%=result.getString("ReservationID")%>" type="text" readonly>
                            </div>
                         <div class="form-group">   
                            <div class="col-sm-6">
                                <label class="control-label">Name</label><br>
                                <input class="form-control" id="exampleInputName2" name="name" value="<%=result.getString("Name")%>" type="text">
                            </div>
                         </div>
                         <div class="form-group">   
                            <div class="col-sm-6">
                                <label class="control-label">From Station</label><br>
                                <input class="form-control" id="exampleInputName2" name= "from" value="<%=result.getString("FromStation")%>" type="text">
                            </div>
                         </div>
                         <div class="form-group">   
                            <div class="col-sm-6">
                                <label class="control-label">To Station</label><br>
                                <input class="form-control" id="exampleInputName2" name="to" value="<%=result.getString("ToStation")%>" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label">Payment ID</label><br>
                                <input class="form-control" id="exampleInputName2" name="paymentID" value="<%=result.getString("PaymentID")%>" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label">Booked Date</label><br>
                                <input class="form-control" id="exampleInputName2" name="date" value="<%=result.getString("BookedDate")%>" type="text">
                            </div>
                   </div>
                    
                        <div class="clearfix">
                            <input type="submit" class="btn btn-default btnmk" name="update" value="Update">
                        </div>
                    <% 
    				}
                }catch(Exception e){
                	e.printStackTrace();
                }
                
                %>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>