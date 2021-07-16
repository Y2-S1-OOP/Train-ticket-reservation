<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/CancelationRequestForm.css">
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
<link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<meta charset="ISO-8859-1">
<title>Cancelation Request</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="card d-flex justify-content-center mx-auto my-3 p-5">
            
            <h2 style="font-size:30px;">Cancelation/Update Form</h2>
            <h6 class="text-muted">IF YOU WANT CANCEL THE RESERVATION , PLEASE FILL THIS FORM & SUBMIT.</h6>
            <form action="CancelationRequest" method="post">
            <div class="form-row">
                <div class="form-group col-md-6 first"> <label for="inputFirstName">Reservation ID <span>*</span></label> <input type="text" class="form-control" id="inputResID" name="ResID" required>
                    <div id="fname_error" class="val_error"></div>
                </div>
                <div class="form-group col-md-6 first"> <label for="inputFirstName">FIRST NAME <span>*</span></label> <input type="text" class="form-control" id="inputFirstName" name="firstname" required>
                    <div id="fname_error" class="val_error"></div>
                </div>
                <div class="form-group col-md-6 first"> <label for="inputLastName">LAST NAME <span>*</span></label> <input type="text" class="form-control" id="inputLastName" name="lastname" required>
                    <div id="lname_error" class="val_error"></div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6"> <label for="inputEmail">EMAIL <span>*</span></label> <input type="email" class="form-control" id="inputEmail" name="youremail" required>
                    <div id="email_error" class="val_error"></div>
                </div>
                <div class="form-group col-md-6"> <label for="inputPhone">PHONE <span>*</span></label> <input type="text" class="form-control" id="inputPhone" name="yourphoneno" required>
                    <div id="phone_error" class="val_error"></div>
                </div>
            </div>
            <div class="form-group mt-0"> <label for="exampleFormControlTextarea1">MESSAGE </label> <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="yourmessage"></textarea>
                <div id="message_error" class="val_error"></div>
            </div>
            <div class="form-check form-check-inline"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> <label class="form-check-label" for="inlineCheckbox1">&nbsp;&nbsp;I confirmed cancelation</label> </div>
            <div class="form-button pt-4"> <input type="submit" class="btn btn-primary btn-block btn-lg" value="Request to Cancel" name="sendmessage"></div>
        </form>
        </div>
    </div>
</div>

</body>
</html>