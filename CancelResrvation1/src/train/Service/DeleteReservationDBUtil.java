package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import train.DBConnect.*;

public class DeleteReservationDBUtil {
	
	
	private static boolean isDeleted;
	
	//for database connection purpose
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;

	//get Reservation Id of which want to delete 
	public static boolean DeleteReservation(String id) {
		
		
        try {
			
			   con  = DBConnect.getConnection();
			   stmt = con.createStatement();
			   //find row and delete
			   String sql = "DELETE FROM reservation WHERE ReservationID = '"+id+"'";
			   int res = stmt.executeUpdate(sql);
		
               if(res > 0) {
				
                 	isDeleted = true;
				
			   }else {
				
				    isDeleted = false;
		       }
		
        }catch(Exception e) {
    	
    	e.printStackTrace();
    	
        }
      //return to Servlet that Deletion is success or not 
    return isDeleted;
	}
	
}
