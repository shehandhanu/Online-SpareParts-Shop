package userManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
    
    public static List<Customer> validate(String userName) {
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	//create database connection
	String url = "jdbc:mysql://localhost:3306/database";
	String user = "root";
	String pass = "sifer";
	
	//validate
	
	try {
	    
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    Connection con = DriverManager.getConnection(url, user, pass);
	    Statement stmt = con.createStatement();
	    String sql = "select * from user where username='"+userName+"'";	    
	    ResultSet rs = stmt.executeQuery(sql);
	    
	    if(rs.next()) {
		int id = rs.getInt(1);
		String fname = rs.getString(2);
		String lname = rs.getString(3);
		String username2 = rs.getString(4);
		String email2 = rs.getString(6);
		String phn = rs.getString(7);
		String address = rs.getString(8);
		
		
		Customer c = new Customer( id,fname,lname,username2,email2,phn, address);
		cus.add(c);
	    }
	    
	}
	catch(Exception e) {
	    e.printStackTrace();
	}
	
	return cus;
	
    }
    
   
    
}
