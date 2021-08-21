package com.sliit.itp.model;

public class Patient {
	
	private int PatientId;
	private String name;
	private String address;
	private String email;
	private int phone;
	private String DOB;
	private String NIC;
	private String gender;
	
	
	public Patient() {
		super();
	}

	public Patient(String name, String address, String email, int phone, String dOB, String nIC, String gender) {
		
		this.name = name;
		this.address = address;
		this.email = email;
		this.phone = phone;
		DOB = dOB;
		NIC = nIC;
		this.gender = gender;
	}
	
	


	public int getPatientId() {
		return PatientId;
	}

	public void setPatientId(int patientId) {
		PatientId = patientId;
	}




	public String getName() {
		return name;
	}


	public String getAddress() {
		return address;
	}


	public String getEmail() {
		return email;
	}


	public int getPhone() {
		return phone;
	}


	public String getDOB() {
		return DOB;
	}


	public String getNIC() {
		return NIC;
	}


	public String getGender() {
		return gender;
	}
	
	
	
	

}
