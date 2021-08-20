package com.sliit.itp.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sliit.itp.model.OnlinePatient;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unlikely-arg-type")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    if (username.equals("") || password.equals("") || username == null || password == null) {
	        request.getRequestDispatcher("Login.jsp").forward(request,response);
	        
	    } else{
		         OnlinePatient opatient = new OnlinePatient(username, password);
		        if (opatient.getUsername().equals(username) && opatient.getPassword().equals(password)) {
		        	
		           	RequestDispatcher dis = request.getRequestDispatcher("PatientHome.jsp");
					dis.forward(request, response);
					
		        } else {
		            request.getRequestDispatcher("ReceptionistHome.jsp").forward(request, response);
		        }
	    }
	}

}
