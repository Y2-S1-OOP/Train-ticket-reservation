<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>

<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>


<html>
<head>
<head>
<link rel="stylesheet" href="resources/css/AdminDashboard.css">
<link rel="stylesheet" href="resources/css/AdminTimetable.css">
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
                        <li><a href="#"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Reservations</span></a></li>
                        <li><a href="#"><i class="fa fa-close" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Cancellations Requests</span></a></li>
                        <li><a href="AdminTimetable.jsp"><i class="fa fa-train" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Add Train</span></a></li>
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
                    <h1 class="title">Train Timetable<a href="AdminTimetableInsert.jsp"><button type="button" class="addtrain">Add Train</button></a></h1>
                    
                    <table>
                    	<thead>
                    		<tr>
								<td>Train ID</td>
								<td>Name</td>
                                <td>From</td>
                                <td>To</td>
                                <td>Day</td>
                                <td>Arrival time</td>
                                <td>Departure time</td>
                                <td>Action</td>
							</tr>
						</thead>
						<tbody>
							<%
							try{
		
								Connection con = com.timetable.service.DBConnect.getConnection();
								Statement stmt = con.createStatement();
								String sql = "select * from search";
								ResultSet rs = stmt.executeQuery(sql);
									
								while(rs.next()){
								%>
									<tr>
									<td><%=rs.getString(2) %></td>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(4) %></td>
									<td><%=rs.getString(5) %></td>
									<td><%=rs.getString(6) %></td>
									<td><%=rs.getString(7) %></td>
									<td><%=rs.getString(8) %></td>
									<td>
									<a href="AdminTimetableUpdate.jsp?id=<%=rs.getString(1)%>">
									<button type="button" class="update">Edit</button>
									</a>
									<a href="AdminTimetableDelete.jsp?id=<%=rs.getString(1)%>">
									<button type="button" class="delete">Delete</button>
									</a>
									</td>
									
									</tr>
								<%
								}
									
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</tbody>
					</table>
                    
                </div>
            </div>
        </div>

    </div>
</body>
</html>




<%-- <body>

	<h1>Retrieve data from database in jsp</h1>
	
			
			<td><button onclick="document.getElementById('id01').style.display='block'">D</button>
			<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
  <div class="modal-content" >
    <div class="container">
      <h1>Delete Account</h1>
      <p>Are you sure you want to delete your account?</p>
    
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='AdminTimetableUpdate.jsp?id=<%=rs.getString(1)%>'" class="cancelbtn">Cancel</button>
        <button type="button" onclick="document.getElementById('id02').style.display='form.action='SecondServlet';?id=<%=rs.getString(1)%>'" class="deletebtn">Delete</button>
      </div>
    </div>
  </div>
</div>
<script>
// Get the modal
var modal_1 = document.getElementById('id01');
var modal_2 = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal_1) {
    modal.style.display = "AdminTimetableUpdate.jsp?id=<%=rs.getString(1)%>";
  }
}
</script>

	<!--<c:forEach var="time2" items="${adminTime}"> 
	<tr>
	<td>${time2.id}</td>
	<td>${time2.tarinID}</td>
	<td>${time2.name}</td>
	<td>${time2.from}</td>
	<td>${time2.to}</td>
	<td>${time2.day}</td>
	<td>${time2.arvTime}</td>
	<td>${time2.depTime}</td>
	<td><a href="adminupdate.jsp?id=${time2.id}">update</a></td>
	</tr>
	</c:forEach>
	-->
	
	
	
	</table>
	<h2>Hello World</h2>
	
</body>
</html>--%>