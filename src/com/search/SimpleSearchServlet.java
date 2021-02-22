package com.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SimpleSearchServlet")
public class SimpleSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("itemcode");
		
		if(code == null){
			
			RequestDispatcher dis = request.getRequestDispatcher("SimpleSearch.jsp");
			dis.forward(request, response);
			
		}else {
			try {
				
				List<ItemDetails> itemDetails = SearchDBUtil.Search(code);
				request.setAttribute("itemDetails", itemDetails);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("Shop.jsp");
			dis.forward(request, response);
		}
		
	}

}
