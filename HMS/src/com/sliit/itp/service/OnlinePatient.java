package com.sliit.itp.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.sliit.itp.model.Patient;
import com.sliit.itp.util.DBConnect;

public class OnlinePatient implements IPatient {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement preparedStatement = null;
	
	
	public int insertPatient(String name, String address, String email, String contact, String gender, String nIC, String dOB) {
	
	int id = 0;
	
	try {
		con = DBConnect.getConnection();
		
		preparedStatement = con.prepareStatement("insert into patient values(0,'"+name+"','"+address+"','"+email+"','"+contact+"','"+gender+"','"+nIC+"','"+dOB+"');", Statement.RETURN_GENERATED_KEYS);
			
		preparedStatement.executeUpdate();
		
		rs = preparedStatement.getGeneratedKeys();
		
		while (rs.next()) {
		    id = rs.getInt(1); //get the id of the inserted event
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
	return id;
	
}
	
	public void insertOnline(int id, String username, String password, String hobby) {
		
		try {
			con = DBConnect.getConnection();
			
			preparedStatement = con.prepareStatement("Insert into onlinepatient values('"+id+"','"+username+"','"+password+"')");
			preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
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
	}

@Override
public List<Patient> getPatient(String username, String password) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public boolean validate(String username, String password) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean updatePatient(String name, String address, String email, int phone, String dOB, String nIC,
		String gender) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public List<Patient> getPatientDetails(String Id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public boolean deletePatient(String Id) {
	// TODO Auto-generated method stub
	return false;
}


}
