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
import com.sliit.itp.pattern.Singleton;
import com.sliit.itp.service.LoginDao;

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
		
		
		
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    
	    
	    String role = LoginDao.validatePatient(username, password);
		String role2 = LoginDao.validateEmployee(username, password);
		String role1 = Singleton.getInstance().validateAdmin(username, password);
		   
		   
		   if(role == "onlinepatient") {
			   
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("PatientHome.jsp").forward(request, response);
		   
		   }
		   else if(role2 == "receptionist") {
				   HttpSession session = request.getSession(); //Creating a session
				   session.setAttribute("username",username);  
		           request.getRequestDispatcher("ReceptionistHome.jsp").forward(request, response);
			   
		   }
		   
		   else if(role2 == "permenentDoctor") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "consultingDoctor") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "labAssistant") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "pharmacist") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "driver") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "nursingOfficer") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   else if(role2 == "nursingSister") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   else if(role1 == "admin") {
			   HttpSession session = request.getSession(); //Creating a session
			   session.setAttribute("username",username);  
	           request.getRequestDispatcher("#").forward(request, response);
		   }
		   
		   
		   else {
			   System.out.println("error");
		   }
		   
	    
	   
	}
}
