package com.sliit.itp.model;

public class OutPatient extends Patient{
	
	private int OutPatientId;
	private int Receptionist;

	public OutPatient(String name, String address, String email, int phone, String dOB, String nIC, String gender,int Receptionist) {
		
		super(name, address, email, phone, dOB, nIC, gender);
		
		this.Receptionist = Receptionist;
	}

	public int getOutPatientId() {
		return OutPatientId;
	}
	
	
	
	

}
