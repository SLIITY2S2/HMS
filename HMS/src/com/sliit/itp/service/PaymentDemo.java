package com.sliit.itp.service;

import java.sql.*;

import javax.xml.parsers.ParserConfigurationException;

import com.sliit.itp.util.DBConnect;


public class PaymentDemo {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement preparedStatement = null ;
	
public static boolean insertpayment(String appno,String cardno, String holder, String expire, String bank,String type,String service, String currentDate,  String total) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into payment(payID,Appointment,cardNo,holdername,expirydate,bankname,cardtype,servicetype,pdate,amount) values (0,'"+appno+"','"+cardno+"','"+holder+"','"+expire+"','"+bank+"','"+type+"','"+service+"','"+currentDate+"','"+total+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
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

	
