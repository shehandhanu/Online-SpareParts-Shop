package com.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String method = request.getParameter("method");
		String cardnum = request.getParameter("cardnum");
		String cvv = request.getParameter("cvv");

		
		
		List<Payment> PayDetails = SearchDBUtil.InsertPayment(fname, lname, email, address, phone, method, cardnum, cvv);
		request.setAttribute("PayDetails", PayDetails);
			
		RequestDispatcher dis = request.getRequestDispatcher("CheckOutSuccess.jsp");
		dis.forward(request, response);
			
//			RequestDispatcher dis = request.getRequestDispatcher("Error.jsp");
//			dis.forward(request, response);
		}
		
	}

