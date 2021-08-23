package com.sliit.itp.pattern;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sliit.itp.util.DBConnect;

public class Singleton {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static Singleton singleton;
	
	private Singleton() {}
	
	public static Singleton getInstance() {
		if(singleton == null) {
			synchronized (Singleton.class) {
				if(singleton == null) {
					singleton = new Singleton();
				}
				
			}
		}
		return singleton;
	}
	
	public static String validateAdmin(String username, String password) {
		
		String role = null;
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select UserName,password from admin where UserName='"+username+"' and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String uname = rs.getString(1);
					String pwd = rs.getString(2);
					
					
					if(username.equals(uname) && password.equals(pwd))
						role = "admin";
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		return role;	
		}


}
