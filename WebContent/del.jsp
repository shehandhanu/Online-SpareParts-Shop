<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		
		String ItemName = request.getParameter("itemName");
		String Brand = request.getParameter("brand");
		String Description = request.getParameter("description");
		String Price = request.getParameter("price");
		String qty = request.getParameter("qty");
		
	%>

	<form action="DeleteServlet" method="post">
		<h1>Are you sure you want to delete this employee?</h1>
		Item Name <input type="text" name="itemName" value="<%= ItemName  %>" readonly><br>
		<input type="submit" name="submit" value="Delete"><br>
	</form>

</body>
</html>