package userManagement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UpdateDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	 public static boolean updatecustomer(String id, String fname, String lname, String username, String email, String phn,String address) {
	    	
	    	try {
	    		
	    		con = DB.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update user set fname='"+fname+"',lname='"+lname+"',username='"+username+"',email='"+email+"',phn='"+phn+"',address='"+address+"'"
	    				+ "where uid='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	    public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int newID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DB.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from user where uid='"+newID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String fname = rs.getString(2);
	    			String lname = rs.getString(3);
	    			String username = rs.getString(4);
	    			String email = rs.getString(6);
	    			String phn = rs.getString(7);
	    			String address = rs.getString(8);
	    			
	    			Customer c = new Customer(id, fname, lname, username, email, phn,address);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	}


