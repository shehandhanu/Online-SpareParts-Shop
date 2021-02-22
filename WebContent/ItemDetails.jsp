<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
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
    
    <%
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	String availability = request.getParameter("availability");
    	String modelID = request.getParameter("modelid");
    	String year = request.getParameter("year");
    	String brand = request.getParameter("brand");
    	String price = request.getParameter("price");
    %>
       
        <c:forEach var = "x" items ="${itemDetails}">
	
	        <div class="itemd">
	            <img src="css/item2.jpg" alt="">
	                <h4>Item Name <%= name %></h4>
	                <h5>Item Code <%= id %></h5>
	                <h5>Availability <%= availability %></h5>
	                <h5>Year <%= year %></h5>
	                <h5>Brand <%= brand %></h5>
	                <h5>Model <%= modelID %></h5>
                    <h6>Price <%= price %></h6>
                    
                    <form action="#" method="post"> 
                        <button name="itemnum" value=${x.itemcode}>Add Cart</button>
                    </form>
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