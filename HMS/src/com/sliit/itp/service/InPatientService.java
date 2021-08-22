package com.sliit.itp.service;

import java.sql.*;
import java.util.List;

import com.sliit.itp.model.Patient;
import com.sliit.itp.util.DBConnect;

public class InPatientService {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement preparedStatement = null;
			
	
	
	public boolean insertPatient(String name, String address, String email, String contact, String dOB, String nIC, String gender,String id) {
		
		isSuccess = false ;
		
		try {
			con = DBConnect.getConnection();
			
			stmt = con.createStatement();
			
			String sql1 = "insert into patient values(0,'"+name+"','"+address+"','"+email+"','"+contact+"','"+gender+"','"+nIC+"','"+dOB+"')";
				
				
			String sql2 = "insert into inpatient values(0,'"+id+"')";
			int rs1 = stmt.executeUpdate(sql1);
			int rs2 = stmt.executeUpdate(sql2);
			
			if(rs1 > 0 && rs2 > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		} finally {
			
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
		
		return isSuccess;
		
	}
	
}
