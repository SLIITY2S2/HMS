package com.sliit.itp.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.sliit.itp.service.InPatientService;

/**
 * Servlet implementation class InsertPhysicalPatient
 */
@WebServlet("/InsertPhysicalPatientServlet")
public class InsertPhysicalPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String id = session.getId();
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String NIC = request.getParameter("NIC");
		String dob = request.getParameter("dob");
		String ptype = request.getParameter("ptype");
		
		boolean isTrue = false;
		
		if(ptype == "Inpatient") {
			InPatientService inpatient = new InPatientService();
			inpatient.insertPatient(name, address, email, contact,gender,NIC, dob, id);
			
				if(isTrue == true) {
					RequestDispatcher dis = request.getRequestDispatcher("ReceptionistHome.jsp");
					dis.forward(request, response);
				}
				else {
					RequestDispatcher dis = request.getRequestDispatcher("PhysicalPatientRegistration.jsp");
					dis.forward(request, response);
				
				}
			
		}
	}

}
