<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
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
    	
    	<div class="simplesearchbox">
            <table>
                <form action = "shop" method = "POST" >
                <tr>
                    <td><h5>Search Item Code </h5></td>
                    <td><input name ="itemcode"></td>
                    <td><button type = "submit" name ="search">Search</button></td>
                </tr>
            </form>
            </table>
           
        </div>
        
    </class>
    <!-- interface -->

    <class class="footer_up">
        
    </class>
    <!-- footer_up -->

    <class class="footer">
        <a class="scroll_up" href="#">top</a>
    </class>
    <!-- footer_up -->
	
</body>
</html>