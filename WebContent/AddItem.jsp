<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
						
<div class="sign-up-htm">
			
			<form action="AddServlet" method="Post"> 
				<div class="group">
					<label for="ItemName" class="label">Item Name</label> 
					<input name="ItemName" type="text" class="input">
				</div>
			
				<div class="group">
					<label for="Brand" class="label">Brand</label> 
					<input name="Brand" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="Description" class="label">Description</label> 
					<input name="Description" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="Price" class="label">Price</label> 
					<input name="Price" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="qty" class="label">Quantity</label> 
					<input name="qty" type="text" class="input" type="text">
				</div>
				
				
				<div class="group">
					<input type="submit" class="button" value="ADD">
				</div>
				
				</form>
				
				
			</div>
		
</body>
</html>