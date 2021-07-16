 package train.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import train.DBConnect.*;

public class CancelationRequestDBUtil {
	
	//for database connection purpose
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//get Cancelation Details from Servlet
	public static boolean InsertCancelationRequest(String ReservationID,String fName,String lName,String email,String phone,String msg) {

		boolean isSuccess = false;
		
	
		try {

                con = DBConnect.getConnection();
                stmt = con.createStatement(); 
                //Insert Cancelation Request Details to Table
				String sql = "INSERT INTO cancelationrequest VALUES(0,'"+ReservationID+"','"+fName+"','"+lName+"','"+email+"','"+phone+"','"+msg+"')";
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
					
					
				} catch(Exception e) {
					
					e.printStackTrace();
					
				}		
		//return to Servlet that insertion is success or not 
		return isSuccess;
	
	}
	
	
}
