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

	<form action="UpdateServlet" method="post">
		
		Item Name <input type="text" name="itemName" value="<%= ItemName  %>" readonly><br>
		Brand <input type="text" name="brand" value="<%= Brand %>"><br>
		Description <input type="text" name="description" value="<%= Description %>"><br>
		Price <input type="text" name="price" value="<%= Price %>"><br>
		Quantity <input type="text" name="qty" value="<%= qty %>"><br>
		
		<input type="submit" name="submit" value="Update Data"><br>
	</form>

</body>
</html>