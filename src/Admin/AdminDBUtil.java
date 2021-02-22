package Admin;

import java.sql.Connection;
import java.sql.Statement;



public class AdminDBUtil {
	

	private static Connection con = null;
	private static Statement stmt = null;

    
    
    
    public static boolean insertcustomer(String ItemName, String Brand, String Description, String Price, String qty ) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DB.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into item values ('0','"+ItemName+"','"+Brand+"','"+Description+"','"+Price+"','"+qty+"')";
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


