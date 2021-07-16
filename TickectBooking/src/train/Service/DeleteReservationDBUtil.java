package train.Service;

import java.sql.Connection;
import java.sql.Statement;

import train.DBConnect.DBConnect;

public class DeleteReservationDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;

	public static boolean DeleteReservation(String reservationID) {

		int convID = Integer.parseInt(reservationID);

		// Delete data from database for given Reservation ID

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from reservationdetails where Reservation_ID = '" + convID + "'";
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
