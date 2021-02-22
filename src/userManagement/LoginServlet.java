package userManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class oginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        
    }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
    PrintWriter out = response.getWriter();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    String admin = null;
    
    if(username.matches("admin")) {
      	
      	HttpSession session1 = request.getSession();
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","sifer");
          Statement stmt1 = con1.createStatement();
          ResultSet rs1 = stmt1.executeQuery("select username,password from admin_info where username='"+username+"' and password='"+password+"'");
          
          if(rs1.next()) {
            response.sendRedirect("DashBoard.jsp?name="+rs1.getString("username"));
            
     
            session1.setAttribute("username", username);
    		session1.setAttribute("password", password);
        
    		
    		
          
          }
          
          else {
        	  //response.sendRedirect("login.jsp");
        	  //out.println("Wrong id and password");
        	  //PrintWriter out2= response.getWriter();
        	  //out2.println("<font color=red>Either user name or password is wrong.</font>");
        	  RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
        	  PrintWriter out1= response.getWriter();
        	  out1.println("<font color=red >Username or password is incorect!</font>");
        	  rd.include(request, response);
        	  
          }
          
          
          
        } catch (ClassNotFoundException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        
        
        
      }
      
    else {
    HttpSession session = request.getSession();
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","sifer");
      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("select username,password from user where username='"+username+"' and password='"+password+"'");
      
      if(rs.next()) {
        response.sendRedirect("home.jsp?name="+rs.getString("username"));
        
 
        session.setAttribute("username", username);
		session.setAttribute("password", password);
    
		
		
      }
     
      
      else {
    	  //response.sendRedirect("login.jsp");
    	  //out.println("Wrong id and password");
    	  //PrintWriter out2= response.getWriter();
    	  //out2.println("<font color=red>Either user name or password is wrong.</font>");
    	  RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
    	  PrintWriter out1= response.getWriter();
    	  out1.println("<font color=red >Username or password is incorect!</font>");
    	  rd.include(request, response);
    	  
      }
      
      
      
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    
    
    
  }
 }
}
