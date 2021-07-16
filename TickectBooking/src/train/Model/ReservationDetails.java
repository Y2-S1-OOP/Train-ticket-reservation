package train.Model;

import java.util.Date;

public class ReservationDetails {

	private int ReservationID;
	private String FirstName;
	private String LastName;
	private String Email;
	private String TrainID;
	private String FromStation;
	private String ToStation;
	private String TrainClass;
	private Date ReservationDate;

	public ReservationDetails(int reservationID, String firstName, String lastName, String email, String trainID,
			String fromStation, String toStation, String trainClass, Date reservationDate) {
		super();
		ReservationID = reservationID;
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		TrainID = trainID;
		FromStation = fromStation;
		ToStation = toStation;
		TrainClass = trainClass;
		ReservationDate = reservationDate;
	}

	public int getReservationID() {
		return ReservationID;
	}

	public String getFirstName() {
		return FirstName;
	}

	public String getLastName() {
		return LastName;
	}

	public String getEmail() {
		return Email;
	}

	public String getTrainID() {
		return TrainID;
	}

	public String getFromStation() {
		return FromStation;
	}

	public String getToStation() {
		return ToStation;
	}

	public String getTrainClass() {
		return TrainClass;
	}

	public Date getReservationDate() {
		return ReservationDate;
	}

}
