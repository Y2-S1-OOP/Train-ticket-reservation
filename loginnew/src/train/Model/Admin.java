package train.Model;

public class Admin {
	//get variable
	private int id;
	private String username;
	private String password;

	//create overload constructors
	public Admin(int id, String userA, String passA) {

		this.id = id;
		this.username = userA;
		this.password = passA;
	}

	// create getters
	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

}
