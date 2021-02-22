package userManagement;

import java.sql.Connection;

import java.sql.Statement;



public class RegisterDBUtil {
	
	
	
	private static Statement stmt = null;
;
	private static Connection con = null;

    
    
    
    public static boolean insertcustomer(String fname, String lname, String username, String password, String email, String phn, String address ) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DB.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into user values (0,'"+fname+"','"+lname+"','"+username+"','"+password+"','"+email+"','"+phn+"','"+address+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
   
}





