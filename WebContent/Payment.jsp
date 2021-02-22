<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Details</title>
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
        
        <form action="pay" method="post">
        
        	<div class="checkoutleft">
        
                <div class="checkoutdetails">
                    <input type="text" name="fname" placeholder="First Name">
                    <input type="text" name="lname" placeholder="Last Name">
                </div>
                <!-- checkoutdetails -->
                
                <div class="checkoutdetails2">
                    <input type="text" name="email" placeholder="Email">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    <input type="text" name="address" placeholder="Address">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    <input type="text" name="phone" placeholder="Phone">
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="checkoutdetails2">
                    <select name= "method">
                        <option value="Null">Select Payment Method</option>
                        <option name = "method" value="creditcard">Credit Card</option>
                        <option name = "method" value="debitcard">Debit Card</option>
                    </select>
                </div>
                <!-- checkoutdetails2 -->
                
                <div class="carddetails">
                    <div class="checkoutdetails3">
                        <input type="text" name="cardnum" placeholder="Card Number">
                    </div>
                    <!-- checkoutdetails3 -->
                    <div class="checkoutdetails4">
                        <input type="text" name="cvv" placeholder="CVV">
                    </div>
                    <!-- checkoutdetails4 --> 
                </div>
                <!-- carddetails -->

	        </div>
	        <!-- checkoutleft -->

	        <div class="checkoutright">
	
	            <div class="cart-total">
	
	                <div class="cartd">
	                    <table>
	                        <tr>
	                            <td class="tname"><h3>Sub Total</h3></td>
	                            <td><h3>xxxx.xx</h3></td>
	                        </tr>
	                    </table>
	                </div>
	                <!-- cartd -->
	                <div class="cartd">
	                    <table>
	                        <tr>
	                            <td class="tname"><h3>Discount</h3></td>
	                            <td><h3>xxxx.xx</h3></td>
	                        </tr>
	                    </table>
	                </div>
	                <!-- cartd -->
	                <div class="cartd">
	                    <table>
	                        <tr>
	                            <td class="tname"><h3>Total</h3></td>
	                            <td><h3>xxxx.xx</h3></td>
	                        </tr>
	                    </table>
	                </div>
	                <!-- cartd -->
	
	                <div class="checkoutbutton">
	                    <button type="submit" name="checkout">Submit</button>
	                </div>
	                <!-- checkoutbutton -->
	            </div>
	            <!-- cart-total -->
	        </div>
	        <!-- checkoutright -->
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