package com.sliit.itp.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sliit.itp.service.PaymentDemo;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appno = request.getParameter("appno");
		String cardno = request.getParameter("cardno");
		String holder = request.getParameter("holder");
		String expire = request.getParameter("expire");
		String bank = request.getParameter("bank");
		String type = request.getParameter("type");
		String service = request.getParameter("service");
		String currentdate = request.getParameter("currentdate");
		String total = request.getParameter("total");
		
		boolean isTrue;
		
		isTrue = PaymentDemo.insertpayment(appno, cardno, holder, expire, bank, type, service, currentdate, total);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Receipt.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Payment.jsp");
			dis2.forward(request, response);
		}
	}

}
