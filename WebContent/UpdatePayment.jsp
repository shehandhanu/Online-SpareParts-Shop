<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Payment</title>
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
                <li><a href="src/search.html">Search</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="cart.html">Cart</a></li>
                <li><a href="check.html">Check Out</a></li>
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
        	String firstname = request.getParameter("firstname");
        	String lastname = request.getParameter("lastname");
        	String email = request.getParameter("email");
        	String address = request.getParameter("address");
        	String phone = request.getParameter("phone");
        	String paymethod = request.getParameter("paymethod");
        	String cardNumber = request.getParameter("cardNumber");
        	String cvv = request.getParameter("cvv");
        	
        %>
        
        <form action="updatepayment" method="POST" >
        
        	<div class="checkoutleft">
        	
        		<div class="checkoutdetails2">
                    Payment ID<input type ="text" name = "payid" value = "<%= id %>" readonly >
                </div>
                <!-- checkoutdetails2 -->
        		
                <div class="checkoutdetails2">
                    First Name <br> <input type ="text" name = "fname" value = "<%= firstname %>">
        			Last Name <br> <input type ="text" name = "lname" value = "<%= lastname %>">
                </div>
                <!-- checkoutdetails -->
                
                <div class="checkoutdetails2">
                    Email<input type ="text" name = "email" value = "<%= email %>">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    Address<input type ="text" name = "address" value = "<%= address %>">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    Phone<input type ="text" name = "phone" value = "<%= phone %>">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    <select name= "method">
                        <option name = "method" value="<%= paymethod %>"><%= paymethod %></option>
                        <option name = "method" value="creditcard">Credit Card</option>
                        <option name = "method" value="debitcard">Debit Card</option>
                    </select>
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="carddetails">
                    <div class="checkoutdetails2">
                       Card Number <br> <input type ="text" name = "cardnum" value = "<%= cardNumber %>">
                    </div>
                    <!-- checkoutdetails2 -->
                    <div class="checkoutdetails2">
                        CVV Number <br> <input type ="text" name = "cvv" value = "<%= cvv %>">
                    </div>
                    <!-- checkoutdetails4 --> 
                </div>
                <!-- carddetails -->
                
                <div class="checkoutdetails2">
            		<button type ="submit" name = "submit">Update & Save Details</button>
            	</div>
            	<!-- checkoutdetails2 -->

	        </div>
	        <!-- checkoutleft -->
	        
        </form>
           
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