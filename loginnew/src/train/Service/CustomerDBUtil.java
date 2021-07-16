package train.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import train.DBConnect.DBConnect;
import train.Model.Customer;

public class CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// validate customer details
	
	public static  List<Customer> validate(String username, String password) {

		ArrayList<Customer> cus = new ArrayList<>();

		try {
			// create DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username = '" + username + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String userU = rs.getString(3);
				String email = rs.getString(4);
				String address = rs.getString(5);
				Date dateofbirth = rs.getDate(6);
				int phone = rs.getInt(7);
				int zippostalcode = rs.getInt(8);
				String gender = rs.getString(9);
				String passU = rs.getString(10);

				Customer c = new Customer(id, name, userU, email, address, dateofbirth, phone, zippostalcode, gender,
						passU);

				cus.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}

	// insert customer details
	public static boolean insertcustomer(String name, String username, String email, String address, String dateofbirth,
			String phone, String zippostalcode, String gender, String password) {
		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into customer values(0,'" + name + "','" + username + "','" + email + "','" + address
					+ "','" + dateofbirth + "','" + phone + "','" + zippostalcode + "','" + gender + "','" + password
					+ "')";
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

	// update customer details
	
	public static  boolean updatecustomer(String id, String name, String username, String email, String address,
			String dateofbirth, String phone, String zippostalcode, String gender, String password) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "update customer set name='" + name + "',username='" + username + "',email='" + email
					+ "',address='" + address + "',dateofbirth='" + dateofbirth + "',phone='" + phone
					+ "',zippostalcode='" + zippostalcode + "',gender='" + gender + "',password='" + password + "'"
					+ "where id='" + id + "'";
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


	public static  List<Customer> getCustomerDetails(String Id) {

		int convertedID = Integer.parseInt(Id);

		ArrayList<Customer> cus = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where id='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String username = rs.getString(3);
				String email = rs.getString(4);
				String address = rs.getString(5);
				Date dateofbirth = rs.getDate(6);
				int phone = rs.getInt(7);
				int zippostalcode = rs.getInt(8);
				String gender = rs.getString(9);
				String password = rs.getString(10);

				Customer c = new Customer(id, name, username, email, address, dateofbirth, phone, zippostalcode, gender,
						password);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}

	// delete customer details

	public static boolean deleteCustomer(String id) {
		int convId = Integer.parseInt(id);

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "delete from customer where id='" + convId + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
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
