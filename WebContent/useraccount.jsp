<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><div class="text">
		<h2 align="center">Welcome!!</h2>
	</div>
	<div class="wrapper">
		<div class="left">
		</div>
		<div class="right">
			<div class="info">
				<h3>User Profile</h3>
				<div class="info_data">
					<div class="data">
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="fname" value="${cus.fname}"/>
	<c:set var="lname" value="${cus.lname}"/>
	<c:set var="username2" value="${cus.username2}"/>
	<c:set var="email2" value="${cus.email2}"/>
	<c:set var="phn" value="${cus.phn}"/>
	<c:set var="address" value="${cus.address}"/>
	
	<tr>
		<td>User ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${cus.fname} ${cus.lname}</td>
	</tr>
	
	<tr>
		<td>User Name</td>
		<td>${cus.username2}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${cus.email2}</td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>${cus.phn}</td>
	</tr>
	
	<tr>
		<td>Address</td>
		<td>${cus.address}</td>
	</tr>
	
	</c:forEach>
	</table>
	</div></div></div></div></div>
<c:url value="updateuser.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="username2" value="${username2}"/>
		<c:param name="email2" value="${email2}"/>
		<c:param name="phn" value="${phn}"/>
		<c:param name="address" value="${address}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update Account">
	</a>
	
	
	<c:url value="deleteuser.jsp" var="cusdelete">
		
		<c:param name="username2" value="${username2}"/>
		<c:param name="id" value="${id}"/>
	</c:url>
	
	<a href="${cusdelete}">
	<input type="button" name="update" value="Delete Account">
	</a>
	
	
	
	
</body>
</html>