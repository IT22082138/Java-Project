package com.Payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PaymentDBUtil {
	
	//insert
	public static boolean insertpayment(String email, String phone, String cNo, String cvv, String eDate) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "12345";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert payment values ('"+email+"','"+phone+"','"+cNo+"', '"+cvv+"', '"+eDate+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	} 
	
	//validate
    public static List<Payment> validate(String email){
		
		ArrayList<Payment> us = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "12345";
		
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from payment where email = '"+email+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String eml = rs.getString(1);
				String phone = rs.getString(2);
				String cNo = rs.getString(3);
				String cvv = rs.getString(4);
				String eDate = rs.getString(5);
				
				Payment u = new Payment(eml,phone,cNo,cvv,eDate);
				us.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
    
    //update
    public static boolean updatepayment(String email, String phone, String cNo, String cvv, String eDate){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "12345";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update payment set phone='"+phone+"', cNo='"+cNo+"', cvv='"+cvv+"', eDate='"+eDate+"'"+ "where email='"+email+"'";
					 
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess= true;
		    }
		    else {
		    	isSuccess= false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}
    
    
    //delete
    
 public static boolean deletepayment(String email){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "12345";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "Delete from payment where email = '"+email+"'";
					 
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess= true;
		    }
		    else {
		    	isSuccess= false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}

	
	
}