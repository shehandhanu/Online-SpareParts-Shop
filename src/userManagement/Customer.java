package userManagement;

public class Customer {
	private String fname;
	private String lname;
	private String username2;
	private String pass;
	private String email2;
	private String phn;
	private String address;
	private int id;
    
 
    public Customer(int id, String fname, String lname, String username2, String email2, String phn,String address) {
    	this.id = id;
    	this.fname = fname;
    	this.lname= lname;
    	this.username2 = username2;
    	this.email2 = email2;
    	this.phn= phn;
    	this.address= address;
    }


	






	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getUsername2() {
		return username2;
	}


	public String getPass() {
		return pass;
	}


	public String getEmail2() {
		return email2;
	}


	public String getPhn() {
		return phn;
	}


	public String getAddress() {
		return address;
	}




	public int getId() {
		return id;
	}
}
	