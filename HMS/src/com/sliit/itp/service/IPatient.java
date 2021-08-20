package com.sliit.itp.service;

import java.util.List;

import com.sliit.itp.model.Patient;

public interface IPatient {
	
	
	
	public List<Patient> getPatient(String username, String password);
	
	public boolean validate(String username, String password);
	
	public boolean updatePatient(String name, String address, String email, int phone, String dOB, String nIC, String gender);
	
	public List<Patient> getPatientDetails(String Id);
	
	public boolean deletePatient(String Id);
	
	
	
	

}
