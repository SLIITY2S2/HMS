package com.sliit.itp.service;


import java.sql.*;


import com.sliit.itp.util.DBConnect;

public class LoginDao {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	
		public static String validatePatient(String username, String password) {
			
			
			String role = null;
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select username,password from onlinepatient where username='"+username+"' and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String uname = rs.getString(1);
					String pwd = rs.getString(2);
					
					if(uname.equals(username) && pwd.equals(password))
						role = "onlinepatient";
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
			
			try {
				
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return role;
			
		
		}
		
		public static String validateEmployee(String username, String password) {
		
			
			String role = null;
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select username,password,jobrole from employee where username='"+username+"' and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String uname = rs.getString(1);
					String pwd = rs.getString(2);
					String jobrole = rs.getString(3);
					
					if(username.equals(uname) && password.equals(pwd) && jobrole.equals("receptionist")) 
						role = "receptionist";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("permenentDoctor"))
						role = "permenentDoctor";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("consultingDoctor"))
						role = "consultingDoctor";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("labAssistant"))
						role = "labAssistant";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("pharmacist"))
						role = "pharmacist";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("driver"))
						role = "driver";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("nursingOfficer"))
						role = "nursingOfficer";
					
					else if(username.equals(uname) && password.equals(pwd) && jobrole.equals("nursingSister"))
						role = "nursingSister";
					
					else {
						System.out.println("Error");
						role = null ;
					}
						
					
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
			
			try {
				
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return role;
			
		
		}

	
}
