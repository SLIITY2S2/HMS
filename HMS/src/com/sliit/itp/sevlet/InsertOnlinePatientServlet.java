package com.sliit.itp.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sliit.itp.service.IPatient;
import com.sliit.itp.service.OnlinePatient;
import com.sliit.itp.service.PatientService;

/**
 * Servlet implementation class InsertOnlinePatient
 */
@WebServlet("/InsertOnlinePatientServlet")
public class InsertOnlinePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String NIC = request.getParameter("NIC");
		String dob = request.getParameter("dob");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String hobby = request.getParameter("hobby");
		
		OnlinePatient op = new OnlinePatient();
		
		int id = op.insertPatient(name,address,email,contact,gender,NIC,dob);
		
		op.insertOnline(id, username, password, hobby);
		
		response.sendRedirect("Login.jsp");
	}

}
