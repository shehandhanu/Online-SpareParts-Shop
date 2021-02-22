<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <link rel="stylesheet" href="css\style.css">
</head>
<body>
		
		<class class="side_bar" >
        <class class="logo">
            <img src="css/logo.jpg" alt="">
        </class>
        <!-- logo -->
        <class class="side_bar_links">
            <ul>
                <li><a href="home.html">Home</a></li>
                <li><a href="Search.jsp">Search</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="cart.html">Cart</a></li>
                <li><a href="Payment.jsp">Check Out</a></li>
                <li class="link"><a href="register.html">Sign In</a></li>
                <li class="link"><a href="login.html">Login</a></li>
            </ul>
        </class>
        <!-- side_bar_links -->
    </class>
    <!-- side_bar -->

    <class class="interface">
    
        <c:forEach var = "x" items ="${itemDetails}">
        
	        <c:set var="id" value="${x.itemcode}"/>
	        <c:set var="name" value="${x.itemName}"/>
	        <c:set var="availability" value="${x.availability}"/>
	        <c:set var="modelid" value="${x.modelID}"/>
	        <c:set var="brand" value="${x.brand}"/>
	        <c:set var="year" value="${x.year}"/>
	        <c:set var="price" value="${x.price}"/>
	        
		        <div class="item">
		            <img src="css/item.jpg" alt="">
		                <h4>Item Name ${x.itemName}</h4>
                        <h5>Item Code ${x.itemcode}</h5>
                        <br>
                        <h5>Availability ${x.availability}</h5>
		                
		                
		            <c:url value="ItemDetails.jsp" var ="itemDetails">
		            	<c:param name="id" value="${id}"/>
		            	<c:param name="name" value="${name}"/>
		            	<c:param name="availability" value="${availability}"/>
		            	<c:param name="modelid" value="${modelID}"/>
		            	<c:param name="brand" value = "${x.brand}"/>
		            	<c:param name="year" value = "${x.year}"/>
		            	<c:param name="price" value = "${x.price}"/>
		            </c:url>
		                
		            <a href="${itemDetails}">
		            	<button name="viewdetails" value="viwedetails">View Details</button>
		            </a>
		        </div>
		        <!-- item -->
   		
   		</c:forEach>
	
        
    </class>
    <!-- interface -->

    

    <class class="footer_up">
        <form action="" method="post">
            
            <button>Subscribe</button>
            <input type="text">
            <h4>Subscribe For More Updates</h4>
        </form>
    </class>
    <!-- footer_up -->

    <class class="footer">
        <a class="scroll_up" href="#">top</a>
    </class>
    <!-- footer_up -->
		

</body>
</html>