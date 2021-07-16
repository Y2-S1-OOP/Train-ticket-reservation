package train.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/trainjourneydetails";
	private static String UserName = "root";
	private static String Password = "Gomes123*?";
	private static Connection con;

	public static Connection getConnection() {

		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url, UserName, Password);

		} catch (Exception e) {
			System.out.println("Database connection is not success!");
		}

		return con;

	}

}
