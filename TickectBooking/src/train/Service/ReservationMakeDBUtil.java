package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import train.DBConnect.DBConnect;
import train.Model.ReservationDetails;

public class ReservationMakeDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean MakeReservation(String firstname, String lastname, String email, String trainid,
			String fromstation, String tostation, String trainclass, String reservationDate) {

		boolean isSuccess = false;

		// Insert data to the database from user

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "Insert into reservationdetails values(0,'" + firstname + "','" + lastname + "','" + email
					+ "','" + trainid + "','" + fromstation + "','" + tostation + "','" + trainclass + "','"
					+ reservationDate + "')";
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

	public static List<ReservationDetails> getResDetails(String firstName, String email) {

		ArrayList<ReservationDetails> RES = new ArrayList<>();

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

}
