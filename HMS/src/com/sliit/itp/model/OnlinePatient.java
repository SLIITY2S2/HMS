package com.sliit.itp.model;

public class OnlinePatient extends Patient{
	
	private int OnlinePatientId;
	private String username;
	private String password;
	
	public OnlinePatient(String name, String address, String email, int phone, String dOB, String nIC, String gender, String username, String password) {
		super(name, address, email, phone, dOB, nIC, gender);
		this.username = username;
		this.password = password;
		
	}
	public OnlinePatient(String username, String password) {
		this.username = username;
		this.password = password ;
	}
	public int getOnlinePatientId() {
		return OnlinePatientId;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setOnlinePatientId(int onlinePatientId) {
		OnlinePatientId = onlinePatientId;
	}
	
	
	

}
