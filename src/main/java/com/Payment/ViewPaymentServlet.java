package com.Payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ViewPaymentServlet")
public class ViewPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email= request.getParameter("eml");
		
		try {
		     List<Payment> usDetails = PaymentDBUtil.validate(email);
		     request.setAttribute("usDetails", usDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("ViewPayment.jsp");
		dis.forward(request, response);
		
		
	}

}

