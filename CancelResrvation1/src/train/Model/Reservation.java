package train.Model;

import java.util.Date;

public class Reservation {
	
	private String ReservationID;
	private String Name;
	private String FromStation;
	private String ToStation;
	private String PaymentID;
	private Date BookedDate;
	
	//overloaded constructor
	public Reservation(String reservationID, String name, String fromStation, String toStation, String paymentID,
			Date bookedDate) {
		
		ReservationID = reservationID;
		Name = name;
		FromStation = fromStation;
		ToStation = toStation;
		PaymentID = paymentID;
		BookedDate = bookedDate;
	}
	
    //for get Reservation ID
	public String getReservationID() {
		return ReservationID;
	}
	//for get Name
	public String getName() {
		return Name;
	}
	//for get From Station
	public String getFromStation() {
		return FromStation;
	}
	//for get To Station
    public String getToStation() {
		return ToStation;
	}

    //for get Payment ID
	public String getPaymentID() {
		return PaymentID;
	}
    ////for get Date
	public Date getBookedDate() {
		return BookedDate;
	}


}
