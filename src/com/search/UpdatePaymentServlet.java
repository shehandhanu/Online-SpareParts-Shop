package com.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Servelet load");
		
		String id = request.getParameter("payid");
    	String firstname = request.getParameter("fname");
    	String lastname = request.getParameter("lname");
    	String email = request.getParameter("email");
    	String address = request.getParameter("address");
    	String phone = request.getParameter("phone");
    	String paymethod = request.getParameter("method");
    	String cardNumber = request.getParameter("cardnum");
    	String cvv = request.getParameter("cvv");
    	
    	System.out.println("Value seted");
    	
    	List<Payment> PayDetails = SearchDBUtil.UpdatePayment(id,firstname, lastname, email, address, phone, paymethod, cardNumber, cvv);
    	request.setAttribute("PayDetails", PayDetails);
    	
    	System.out.println("Function called");
    	
    	RequestDispatcher dis = request.getRequestDispatcher("CheckOutSuccess.jsp");
		dis.forward(request, response);
	}

}
