<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
	<c:forEach var="itm" items="${cusDetails}">
	
	
	<tr>
		<td>Item ID</td>
		<td>${itm.itemID}</td>
	</tr>
	<tr>
		<td>Item Name</td>
		<td>${itm.itemName}</td>
	</tr>
	<tr>
		<td>Brand</td>
		<td>${itm.brand}</td>
	</tr>
	<tr>
		<td>Description</td>
		<td>${itm.description}</td>
	</tr>
	<tr>
		<td>Price</td>
		<td>${itm.price}</td>
	</tr>
	<tr>
		<td>Quantity</td>
		<td>${itm.qty}</td>
	</tr>

	</c:forEach>
	</table>
	
	<h1>Dash Board</h1>
	<form action="DashBoard.jsp" method="post">
		<input type="submit" name="submit" value="DashBoard">
	</form>
	
</body>
</html>