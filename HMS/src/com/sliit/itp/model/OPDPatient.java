package com.sliit.itp.model;

public class OPDPatient extends Patient{
	
	
	private int OPDPatientId;
	private int Receptionist;
	
	public OPDPatient(String name, String address, String email, int phone, String dOB, String nIC, String gender, int Receptionist) {
		super(name, address, email, phone, dOB, nIC, gender);
		this.Receptionist = Receptionist;
		
	}

	public int getOPDPatientId() {
		return OPDPatientId;
	}

	public void setOPDPatientId(int oPDPatientId) {
		OPDPatientId = oPDPatientId;
	}
	
	


}
