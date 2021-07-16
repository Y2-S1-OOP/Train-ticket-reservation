package train.Model;

import java.util.Date;

public class Customer {
	//get variable
	private int id;
	private String name;
	private String username;
	private String email;
	private String address;
	private Date dateofbirth;
	private int phone;
	private int zippostalcode;
	private String gender;
	private String password;

	//create overload constructors
	public Customer(int id, String name, String username, String email, String address, Date dateofbirth, int phone,
			int zippostalcode, String gender, String password) {

		this.id = id;
		this.name = name;
		this.username = username;
		this.email = email;
		this.address = address;
		this.dateofbirth = dateofbirth;
		this.phone = phone;
		this.zippostalcode = zippostalcode;
		this.gender = gender;
		this.password = password;
	}

	// create getters
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public int getPhone() {
		return phone;
	}

	public int getZippostalcode() {
		return zippostalcode;
	}

	public String getGender() {
		return gender;
	}

	public String getPassword() {
		return password;
	}

}
