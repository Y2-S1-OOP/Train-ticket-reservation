package train.Model;

public class CancelationRequest {
	
	private int id;
	private String resID;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String msg;
	
	//overloaded constructor
	public CancelationRequest(int id,String resID, String fname, String lname, String email, String phone, String msg) {

		this.id = id;
		this.resID = resID;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.msg = msg;
	}
    //for get ReservationID
	public String getResID() {
		return resID;
	}
	//for Cancellation ID
	public int getId() {
		return id;
	}
	//for get First Name
	public String getFname() {
		return fname;
	}

	//for get Last Name
	public String getLname() {
		return lname;
	}

	
	//for get Email
	public String getEmail() {
		return email;
	}

	//for get Phone Number
	public String getPhone() {
		return phone;
	}
  
	//for get Note from Customer
	public String getMsg() {
		return msg;
	}

	
	
	
	


}
