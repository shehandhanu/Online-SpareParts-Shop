package com.search;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/vehical";
	private static String userName = "root";
	private static String password = "shehan";
	private static Connection con;
	
	public static String customerid;
	public static String cartid;
	
	
	public static Connection getConnectionSearch() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;	
	}
	
	public static Connection getConnectionPayment() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;	
	}
	
	
	
}
