<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="Stylesheet" href="css/Payment.css">

</head>
<body>
<form action="ReservationComplete.jsp">
	<div class="checkout-panel">
		<div class="panel-body">
			<h2 class="title">Checkout</h2>

			

			<div class="payment-method">
				<label for="card" class="method card"> <img
					src="images/verified-by-visa-logo-png-0.png"
					style="display: flex; width: 150px; justify-content: space-between; align-items: center;" />
						<input id="card" type="radio" name="payment" style="display: inline-block;" required> Pay with
						VISA

				</label> <label for="paypal" class="method paypal"> <img
					src="images/file-mastercard-logo-svg-wikimedia-commons-4.png"
					style="display: flex; width: 100px; justify-content: space-between; align-items: center;" />
						<input id="paypal" type="radio" name="payment" style="display: inline-block;" required> Pay With
						Mastercard
				</label>
			</div>

			<div class="input-fields">
				<div class="column-1">
					<label for="cardholder">Cardholder's Name</label> <input
						type="text" id="cardholder" name="cardholder" required />

					<div class="small-inputs">
						<div>
							<label for="date">Valid thru</label> <input type="text" id="date"
								name="date" placeholder="MM / YY" required />
						</div>

						<div>
							<label for="verification">CVV / CVC *</label> <input
								type="password" id="verification" name="CV" required/>
						</div>
					</div>

				</div>
				<div class="column-2">
					<label for="cardnumber">Card Number</label> <input type="password"
						id="cardnumber" name="cardnumber" required/> <span class="info">*
						CVV or CVC is the card security code, unique three digits number
						on the back of your card separate from its number.</span>
				</div>
			</div>
		</div>

		<div class="panel-footer">
			<button class="btn back-btn">Back</button>
			<input type="submit" class="btn next-btn" value="Next Step"/>
		</div>
	</div>
	</form>

</body>
</html>