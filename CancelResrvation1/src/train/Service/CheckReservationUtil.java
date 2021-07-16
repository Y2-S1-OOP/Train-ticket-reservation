package train.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import train.DBConnect.*;
import train.Model.Reservation;

public class CheckReservationUtil {
	
	//for database connection purpose
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//get Reservation Id and Name for Check reservation from table
	public static List<Reservation> validate(String ResID,String Name){
		
		ArrayList<Reservation> res = new ArrayList<>();
		

		//validate and return all Reservation table details
		try {
			
			con  = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM reservation WHERE ReservationID = '"+ResID+"' and Name = '"+Name+"'";
			result = stmt.executeQuery(sql);
			
			if(result.next()) {
				String resID = result.getString(1);
				String name = result.getString(2);
				String from = result.getString(3);
				String to = result.getString(4);
				String payID = result.getString(5);
				Date date = result.getDate(6);
				
				Reservation re = new Reservation(resID,name,from,to,payID,date);
				res.add(re);
				
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
		}
		//Return all Details related to which inputted reservation id & name
		return res;
		
	}

}
