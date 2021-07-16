package train.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	//Create database connection
	private static String url = "jdbc:mysql://localhost:3306/trainreservation";
	private static String user = "root";
	private static String pass = "#Dongaa99";
	private static Connection con;
 
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
			
		} catch (Exception e) {
			System.out.println("Database Connection is Not Successe.");
			
		}
		return con;
	}
}
