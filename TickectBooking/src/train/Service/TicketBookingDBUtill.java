package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import train.DBConnect.DBConnect;
import train.Model.TrainJourney;

public class TicketBookingDBUtill {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<TrainJourney> validate(String Fstation, String Tstation, String frequency) {

		ArrayList<TrainJourney> trj = new ArrayList<>();

		// Validate search train for given data

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "select * from trainjourney where From_Station='" + Fstation + "' and To_Station='" + Tstation
					+ "' and Frequency='" + frequency + "'";

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int JourneyID = rs.getInt(1);
				String TrainID = rs.getString(2);
				String TrainName = rs.getString(3);
				String FromStation = rs.getString(4);
				String ToStation = rs.getString(5);
				String StartTime = rs.getString(6);
				String EndTime = rs.getString(7);
				String Frequency = rs.getString(8);
				String TrainType = rs.getString(9);
				String AvailableTrain = rs.getString(10);
				String FClassPrice = rs.getString(11);
				String SClassPrice = rs.getString(12);
				String TClassPrice = rs.getString(13);
				String TotalDistance = rs.getString(14);

				TrainJourney j = new TrainJourney(JourneyID, TrainID, TrainName, FromStation, ToStation, StartTime,
						EndTime, Frequency, TrainType, AvailableTrain, FClassPrice, SClassPrice, TClassPrice,
						TotalDistance);

				trj.add(j);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return trj;

	}

}
