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
	
	<c:set var="itemID" value="${itm.itemID}"/>
	<c:set var="itemName" value="${itm.itemName}"/>
	<c:set var="brand" value="${itm.brand}"/>
	<c:set var="description" value="${itm.description}"/>
	<c:set var="price" value="${itm.price}"/>
	<c:set var="qty" value="${itm.qty}"/>
	
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
	
	<c:url value="UpdateItem.jsp" var="cusupdate">
		<c:param name="itemID" value="${itemID}"/>
		<c:param name="itemName" value="${itemName}"/>
		<c:param name="brand" value="${brand}"/>
		<c:param name="description" value="${description}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="qty" value="${qty}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update Data">
	</a>
	
</body>
</html>