package com.search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

public class SearchDBUtil{
	
	public static Connection con = null;
	public static Statement stmt = null;
	public static ResultSet rs = null;
	public static int rs2;
	public static ResultSet rs3 = null;

	public static List<ItemDetails> Search(String itemcode){
		
		ArrayList<ItemDetails> details = new ArrayList<>();
		
		try {
			con = DBConnect.getConnectionSearch();
			stmt = con.createStatement();
			String sql = "select * from vehical.item where itemCode = '"+itemcode+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs == null) {

			}else {
				if(rs.next()){
					String itemCode = rs.getString(1);
					String itemName = rs.getString(2);
					String Availability = rs.getString(3);
					String model = rs.getString(5);
					String price = rs.getString(7);
					String brand = rs.getString(4);
					String year = rs.getString(6);
					
					ItemDetails item = new ItemDetails(itemCode, itemName, Availability, model,price,year, brand);
					details.add(item);
					}
			}		
		}
		catch(Exception e)
			{
				e.printStackTrace();
			}
		return details;
	}

	public static List<ItemDetails> ASearch(String brand, String model, String year, String name){
		
		System.out.println(brand+ model + year + name);
		
		ArrayList<ItemDetails> details = new ArrayList<>();
		try {
			con = DBConnect.getConnectionSearch();
			stmt = con.createStatement();
			String sql = "select * from vehical.item where brand = '"+brand+"' and model = '"+model+"' and year = '"+year+"' and itemName = '"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
					String itemCode = rs.getString(1);
					String itemName = rs.getString(2);
					String Availability = rs.getString(3);
					String modelID = rs.getString(4);
					String price = rs.getString(7);
					
					System.out.println(price);
					
					ItemDetails item = new ItemDetails(itemCode, itemName, Availability, model,price,year, brand);
					details.add(item);
			}		
		}
		catch(Exception e)
			{
				e.printStackTrace();
			}
		return details;
	}
	
	public static List<Payment> InsertPayment(String fname,String lname,String email,String address,String phone,String payMethod,String cardnum,String cvv) {
		
		ArrayList<Payment> details = new ArrayList<>();
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnectionPayment();
			stmt = con.createStatement();

			String sql = "insert into vehical.payment values (0,'"+fname+"','"+lname+"','"+email+"','"+address+"','"+phone+"','"+payMethod+"','"+cardnum+"','"+cvv+"')";
			String sql2 = "select * from vehical.payment where firstName = '"+fname+"' and lastName = '"+lname+"' and email = '"+email+"' and address = '"+address+"' and phone = '"+phone+"' and payMethod = '"+payMethod+"' and cardNumber = '"+cardnum+"' and cvv = '"+cvv+"'";
			
			rs2 = stmt.executeUpdate(sql);
			
			if(rs2 == 0) {
				isSuccess = false;
			}else {
				rs3 = stmt.executeQuery(sql2);
				if(rs3.next()) {
					String PayID = rs3.getString(1);
					String FirstName = rs3.getString(2);
					String LastName = rs3.getString(3);
					String Email = rs3.getString(4);
					String Address = rs3.getString(5);
					String Phone = rs3.getString(6);
					String PayMethod = rs3.getString(7);
					String CardNum = rs3.getString(8);
					String CVV = rs3.getString(9);
					

					System.out.println(PayID);
					
					Payment Paymentdetails = new Payment(PayID,FirstName,LastName,Email,Address,Phone,PayMethod,CardNum,CVV);
					details.add(Paymentdetails);
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return details;
	}

	public static List<Payment> UpdatePayment(String id ,String firstname, String lastname, String email, String address,
			String phone, String paymethod, String cardNumber, String cvv) {
		
		ArrayList<Payment> details = new ArrayList<>();
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnectionPayment();
			stmt = con.createStatement();
			
			String sql = "update vehical.payment set firstName ='"+firstname+"' , lastName = '"+lastname+"' , email = '"+email+"' , address = '"+address+"' , phone = '"+phone+"' , payMethod = '"+paymethod+"' , cardNumber = '"+cardNumber+"' , cvv = '"+cvv+"' where paymentID = '"+id+"'";
			String sql2 = "select * from vehical.payment where paymentID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs < 0) {
				isSuccess = false;
			}else {
				
				System.out.println("SQL 2 run");
				rs3 = stmt.executeQuery(sql2);
				if(rs3.next()) {
					String PayID = rs3.getString(1);
					String FirstName = rs3.getString(2);
					String LastName = rs3.getString(3);
					String Email = rs3.getString(4);
					String Address = rs3.getString(5);
					String Phone = rs3.getString(6);
					String PayMethod = rs3.getString(7);
					String CardNum = rs3.getString(8);
					String CVV = rs3.getString(9);
					
					Payment Paymentdetails = new Payment(PayID,FirstName,LastName,Email,Address,Phone,PayMethod,CardNum,CVV);
					details.add(Paymentdetails);
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return details;
	}
}
	
	
	
//	public static List<Payment> getPaymentDetails(String fname,String lname,String email,String address,String phone,String payMethod,String cardnum,String cvv){
//		
//		ArrayList<Payment> details = new ArrayList<>();
//		
//		try {
//			
//			con = DBConnect.getConnectionPayment();
//			stmt = con.createStatement();
//			String sql = "select * from vehical.payment where firstName = '"+fname+"' and lastName = '"+lname+"' and email = '"+email+"' and address = '"+address+"' and phone = '"+phone+"' and payMethod = '"+payMethod+"' and cardNumber = '"+cardnum+"' and cvv = '"+cvv+"'";
//			rs = stmt.executeQuery(sql);
//			
//			if(rs.next()) {
//				String Payid = rs.getString(1);
//				String firstName = rs.getNString(2);
//				String Lastname = rs.getNString(3);
//				String Email = rs.getNString(4);
//				String Address = rs.getNString(5);
//				String Phone = rs.getNString(6);
//				String Paymethod = rs.getNString(7);
//				String CardNumber = rs.getNString(8);
//				String Cvv = rs.getNString(9);
//				
//				Payment payDetails = new Payment(Payid,firstName,Lastname,Email,Address,Phone,Paymethod,CardNumber,Cvv);
//				details.add(payDetails);
//			} 
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return details;
//	}
//}
