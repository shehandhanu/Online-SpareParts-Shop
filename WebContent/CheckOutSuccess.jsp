<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Out</title>
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

            <c:forEach var = "x" items ="${PayDetails}">
            
            <c:set var = "id" value = "${x.payid}"/>
            <c:set var = "firstname" value = "${x.firstname}"/>
            <c:set var = "lastname" value = "${x.lastname}"/>
            <c:set var = "email" value = "${x.email}"/>
            <c:set var = "address" value = "${x.address}"/>
            <c:set var = "phone" value = "${x.phone}"/>
            <c:set var = "paymethod" value = "${x.paymethod}"/>
            <c:set var = "cardNumber" value = "${x.cardNumber}"/>
            <c:set var = "cvv" value = "${x.cvv}"/>
            
                <div class="checkout">
        
                   		<div class="checkoutdetails2">
                        	<h4>Payment ID :- ${x.payid}</h4>
                    	</div>
                    	<!-- checkoutdetails2 -->
                    	
	                    <div class="checkoutdetails">
	                        <table>
	                            <tr>
	                                <td><h4>First Name :- ${x.firstname}</h4></td>
	                                <td><h4>Last Name :- ${x.lastname}</h4></td>
	                            </tr>
	                        </table>
	                    </div>
	                    <!-- checkoutdetails -->
                    
	                    <div class="checkoutdetails2">
	                        <h4>Email :- ${x.email}</h4>
	                    </div>
	                    <!-- checkoutdetails2 -->
	                    
	                    <div class="checkoutdetails2">
	                        <h4>Address :- ${x.address}</h4>
	                    </div>
	                    <!-- checkoutdetails2 -->
	                    
	                    <div class="checkoutdetails2">
	                        <h4>Phone :- ${x.phone}</h4>
	                    </div>
	                    <!-- checkoutdetails2 -->
	                    
	                    <div class="checkoutdetails2">
	                        <h4>Payment Method :- ${x.paymethod}</h4>
	                    </div>
	                    <!-- checkoutdetails2 -->
                    
	                    <div class="carddetails">
	                        <div class="checkoutdetails3">
	                            <h4>Card Number :- ${x.cardNumber}</h4>
	                        </div>
	                        <!-- checkoutdetails3 -->
	                        <div class="checkoutdetails4">
	                            <h4>CVV :- ${x.cvv}</h4>
	                        </div>
	                        <!-- checkoutdetails4 --> 
	                    </div>
	                    <!-- carddetails -->
	                    
	                    <c:url value = "UpdatePayment.jsp" var="payupdate">
	                    	<c:param name="id" value="${id}"/>
	                    	<c:param name="firstname" value="${firstname}"/>
	                    	<c:param name="lastname" value="${lastname}"/>
	                    	<c:param name="email" value="${email}"/>
	                    	<c:param name="address" value="${address}"/>
	                    	<c:param name="phone" value="${phone}"/>
	                    	<c:param name="paymethod" value="${paymethod}"/>
	                    	<c:param name="cardNumber" value="${cardNumber}"/>
	                    	<c:param name="cvv" value="${cvv}"/>
	                    </c:url>
	                    
	                    
	                    <div class="checkoutdetails5">
		            		<a href = "${payupdate}">
		                    	<input type = "button" name = "update" value = "Update Payment Details">
		                    </a>
		            	</div>
						<!-- checkoutdetails5 -->
					
			</c:forEach>
			
			<div class="final">
				<div class="paybox">
					<a href = "Home.jsp">
						<h5>Process The Payment</h5> 
					</a>
				</div>
			</div>
        
        </div>
        <!-- checkout -->
        
        
           
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