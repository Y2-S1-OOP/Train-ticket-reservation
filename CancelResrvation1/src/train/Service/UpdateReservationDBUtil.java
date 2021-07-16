package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

import train.DBConnect.*;

public class UpdateReservationDBUtil {
	
	private static boolean isUpdated;
	
	//for database connection purpose
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//get Details of which want to update 
	public static boolean updateReservation(String id,String name,String FromStation,String ToStation,String PaymentID,String BookedDate) {
		
		try {
			
			con  = DBConnect.getConnection();
			stmt = con.createStatement();
			//find row and update
			String sql = "UPDATE reservation SET Name = '"+name+"',FromStation = '"+FromStation+"',ToStation = '"+ToStation+"',PaymentID = '"+PaymentID+"',BookedDate = '"+BookedDate+"'"
					      + "WHERE ReservationID = '"+id+"'";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				
				isUpdated = true;
				
			}else {
				
				isUpdated = false;
			}
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		//return to Servlet that update is success or not
		return isUpdated;
	}

}
