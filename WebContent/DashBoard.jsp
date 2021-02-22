<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("emp_id");
String driverName = "com.mysql.jdbc.Driver";
String Url = "jdbc:mysql://localhost:3306/database";
String username = "root";
String pass = "sifer";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection con = null;
Statement stmt = null;
ResultSet rs = null;

Class.forName(driverName).newInstance();
con = DriverManager.getConnection(Url, username, pass);

%> 
<% 
request.getSession(false);
if (session == null) { %>
  <a href="home.jsp"> Home</a>
  <a href="login.jsp"> Login</a>
  <% 
} else {
    // Already created.
    %>
     <a href="logout.jsp"> Logout</a>
  <% 
}

String name = request.getParameter("name");

if(name != null){
	
	  
	
}

%>


<%

//out.println("Welcome "+name);
%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    table{width : 900px; float : right; padding-right : 100px;}
    div{width : 300px; float : left;}
    }
</style>
</head>
<body>

   
<h2>User  : <%= name %></h2>



	<div>	
			<h4>Add New Item</h4>
	<form action="AddItem.jsp" method="post">
		<input type="submit" name="submit" value="Add">
	</form>
	<br>
	<h4>View Item Info</h4>
	<form action="ViewServlet" method="post">
		Item Name <input type="text" name="username"> <br>
		<input type="submit" name="submit" value="View">
	</form>
	<br>
	

	<br>
	<h4>Update Item</h4>
	<form action="DisplayServlet" method="post">
		Item Name <input type="text" name="username"> <br>
		<input type="submit" name="submit" value="Update">
	</form>
	<br>
	<h4>Delete Item</h4>
	<form action="DeltServlet" method="post">
		Item Name <input type="text" name="username"> <br>
		<input type="submit" name="submit" value="Delete">
	</form>
	</div>
	
		
				<h3 align="center">Items</h3>
				
	<table align="center" cellpadding="5" cellspacing="5" >
<tr>

</tr>
<tr bgcolor="#D3D3D3">
<td><b>Item ID</b></td>
<td><b>Item Name</b></td>
<td><b>Brand</b></td>
<td><b>Price</b></td>
<td><b>Quantity</b></td>
</tr>
<%
try{ 
con = DriverManager.getConnection(Url, username, pass);
stmt=con.createStatement();
String sql ="SELECT * FROM item";

rs = stmt.executeQuery(sql);
while(rs.next()){
%>
<tr bgcolor="#f3f3f3">

<td><%=rs.getString("ItemID") %></td>
<td><%=rs.getString("ItemName") %></td>
<td><%=rs.getString("Brand") %></td>
<td><%=rs.getString("Price") %></td>
<td><%=rs.getString("qty") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
	</body>
</html>