package com.sliit.itp.service;

import java.sql.*;

import com.sliit.itp.util.DBConnect;

public class LoginDao {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement preparedStatement;
	
	
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql1 = "select * from receptionist where username='"+username+"' and password='"+password+"'";
			String sql2 = "select * from onlinepatient where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql1);
			rs = stmt.executeQuery(sql2);
			
			
			
		}	
		return isSuccess;
	}
	

}
