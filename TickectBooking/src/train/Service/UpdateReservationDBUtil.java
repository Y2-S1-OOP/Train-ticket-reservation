package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import train.DBConnect.DBConnect;
import train.Model.ReservationDetails;

public class UpdateReservationDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<ReservationDetails> getResDetails(String firstName, String email) {

		ArrayList<ReservationDetails> RES = new ArrayList<>();

		// Get data from Database after the Update database

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from reservationdetails where First_Name ='" + firstName + "' and Email = '" + email
					+ "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int ReservationID = rs.getInt(1);
				String FirstName = rs.getString(2);
				String LastName = rs.getString(3);
				String Email = rs.getString(4);
				String TrainID = rs.getString(5);
				String FromStation = rs.getString(6);
				String ToStation = rs.getString(7);
				String TrainClass = rs.getString(8);
				java.sql.Date ReservationDate = rs.getDate(9);

				ReservationDetails R = new ReservationDetails(ReservationID, FirstName, LastName, Email, TrainID,
						FromStation, ToStation, TrainClass, ReservationDate);
				RES.add(R);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return RES;
	}

	public static boolean UpdateReservation(String reservationID, String firstname, String lastname, String Email,
			String trainID, String FSTATION, String TSTATION, String CLASS, String DATE) {

		// Update the database

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update reservationdetails set First_Name='" + firstname + "', Last_Name='" + lastname
					+ "', Email='" + Email + "',Train_Class='" + CLASS + "', Date='" + DATE + "'"
					+ "where Reservation_ID ='" + reservationID + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

}
