<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
	input[type=text]{
		border: 2px white;
	}
</style>


	<%
		
		String username2 = request.getParameter("username2");
		String id = request.getParameter("id");
	%>
	
	<p>Are you sure you want to delete user <%= username2 %>?</p>
	<form action="Delete" method="post">
	
	<table>
		<tr>
			<td>User ID   :  </td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
	 	</tr>
	</table>		
	<br>
	<input type="submit" name="submit" value="Yes">
	</form>
	
	<br>
	<a href="Index.jsp">
	<input type="button" name="No" value="No">
	</a>
	
	
	

</body>
</html>