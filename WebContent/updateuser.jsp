<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
		table {
			
  			border-collapse: collapse;
		}
		div{display: block;}
		table, th, td {
		  border: 1px solid white;
		}
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username2 = request.getParameter("username2");
		String email2 = request.getParameter("email2");
		String phn = request.getParameter("phn");
		String address = request.getParameter("address");
	%>
	<div>
	
	<form action="Update" method="post">
	<table>
		<tr>
			<td>User ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%= fname %>"></td>
		</tr>
		<tr>
		<td>Last Name</td>
		<td><input type="text" name="lname" value="<%= lname %>"></td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="username2" value="<%= username2 %>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email2" value="<%= email2 %>"></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input type="text" name="phn" value="<%= phn %>"></td>
	</tr>		
	
	
	<tr>
		<td>Address</td>
		<td><input type="text" name="address" value="<%= address %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Account">
	</form></div>

</body>
</html>