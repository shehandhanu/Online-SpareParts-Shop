package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class UpdateDBUtil  {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;

    
    public static List<Item> validate(String username) {
	
	ArrayList<Item> itm = new ArrayList<>();
	
	//create database connection
	String url = "jdbc:mysql://localhost:3306/database";
	String user = "root";
	String pass = "sifer";
	
	//validate
	
	try {
	    
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    Connection con = DriverManager.getConnection(url, user, pass);
	    Statement stmt = con.createStatement();
	    String sql = "select * from item where ItemName='"+username+"'";	    
	    ResultSet rs = stmt.executeQuery(sql);
	    
	    if(rs.next()) {
	    int ItemID = rs.getInt(1);
		String ItemName = rs.getString(2);
		String Brand = rs.getString(3);
		String Description = rs.getString(4);
		String Price = rs.getString(5);
		String qty = rs.getString(6);
		
		
		
		Item i = new Item(ItemID, ItemName, Brand, Description, Price, qty);
		itm.add(i);
	    }
	    
	}	
	catch(Exception e) {
	    e.printStackTrace();
	}
	
	return itm;
	
    }
    
public static boolean updateemp(String itemName,String brand,String description,String price,String qty) {
    	
    	try {
    		
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql = "update item set Brand='"+brand+"',Description='"+description+"',Price='"+price+"',qty='"+qty+"'" + "where ItemName='"+itemName+"'" ;
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

public static boolean deleteitem(String itemName,String brand,String description,String price,String qty) {
	
	try {
		
		con = DB.getConnection();
		stmt = con.createStatement();
		String sql = "delete from item where ItemName='"+itemName+"'";
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


 
}


    



