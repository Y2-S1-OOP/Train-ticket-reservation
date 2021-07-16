
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/CheckReservation.css">
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<meta charset="ISO-8859-1">
<title>Check Reservation</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form action="CheckReservation" method="post" class="box">
                    <p style="color:red;" class="text-muted"> Please enter your Reservation ID and Name</p> 
                    <input type="text" name="uid" placeholder="Reservation ID"> 
                    <input type="text" name="name" placeholder="Name"> 
                    <input type="submit" name="" value="Check" >
                    <div class="col-md-12">
                        
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>