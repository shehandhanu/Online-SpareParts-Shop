package userManagement;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String username = request.getParameter("username");
	   //String password = request.getParameter("password");
	   
	   
	   // HttpSession session = request.getSession(false);
	   // String username = (String) session.getAttribute("username");
		
	    //String username = (String) session.getAttribute("username");
	    //String password = (String) session.getAttribute("password");
	
	    
	    try {
        	  List<Customer> cusDetails = CustomerDBUtil.validate(username);
        	  request.setAttribute("cusDetails", cusDetails);
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }
	    
	    
	    RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	    dis.forward(request, response);    
	    
	}

}
