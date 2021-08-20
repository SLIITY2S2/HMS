package com.sliit.itp.model;

public class InPatient extends Patient {
	
	private int InPatientId;
	private int Receptionist;
	public InPatient(String name, String address, String email, int phone, String dOB, String nIC, String gender,int Receptionist) {
		super(name, address, email, phone, dOB, nIC, gender);
		this.Receptionist = Receptionist;
	}
	public int getInPatientId() {
		return InPatientId;
	}
	public int getReceptionist() {
		return Receptionist;
	}
	public void setInPatientId(int inPatientId) {
		InPatientId = inPatientId;
	}
	
	
	

}
