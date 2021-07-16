package train.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import train.Model.Admin;
import train.DBConnect.DBConnect;

public class AdminDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//validate admin details
	public static List<Admin> validate(String username, String password) {

		ArrayList<Admin> ad = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username = '" + username + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int id = rs.getInt(1);
				String userA = rs.getString(2);
				String passA = rs.getString(3);

				Admin a = new Admin(id, userA, passA);
				ad.add(a);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ad;
	}

}
