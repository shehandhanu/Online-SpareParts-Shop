<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css\style.css">
</head>
<body>
<style type="text/css">
	input[type=text]{
		border: 2px white;
	}
</style>
<% 
request.getSession(false);
if (session == null) { %>
  <a href="home.jsp"> Home</a>
  <a href="login.jsp"> Login</a>
  <% 
} else {
    // Already created.
    %>
  <% 
}

String name = request.getParameter("name");
%>


<%

//out.println("Welcome "+name);
%>


   
    <class class="side_bar" >
        <class class="logo">
            <img src="img/logo.png" alt="">
        </class>
        <!-- logo -->
        <class class="side_bar_links">
            <ul>
                <li><a href="home.html">Home</a></li>
                <li><a href="Search.jsp">Search</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="cart.html">Cart</a></li>
                <li><a href="check.html">Check Out</a></li>
                <li class="link"><a href="register.jsp">Sign In</a></li>
                <li class="link"><a href="login.jsp">Login</a></li>
            </ul>
        </class>
        <!-- side_bar_links -->
    </class>
    <!-- side_bar -->

        <class class="interface">
        
		<div class="container">
			<div class="slider">
				<div class="slide slide1">
					<div class="caption">
						<h2>OOP Spare Parts Solutions</h2>
						<p>Spare Parts naming has always been a challenge, from the lack of description standardization among parts 
						manufacturers to CMMS & ERP systems templates (parts classification) being configured by individual users.  
						Typically, the description is either entered manually or by a template that comes with the CMMS, ERP or third party 
						software.</p>
					</div>
				</div>
				<div class="slide slide2">
					<div class="caption">
						<h2>Save Your Time</h2>
						<p>There are thousands of piddling, trivial things anyone can do to save time. But this article focuses on how to save 
						time in daily life by focusing on the general things that anyone can do that will actually make a big change in the 
						amount of time you have to do what you want to do. Best of all, each of these ways to save time is relatively easy to do. 
						If you do all ten, you'll save so much time you may have to take up a new hobby!</p>
					</div>
				</div>
				<div class="slide slide3">
					<div class="caption">
						<h2>Quality Products</h2>
						<p>Best Quality You Can Trust is Sri Lanka based start-up business that provides 
						local businesses with world-class Internet businesses.</p>
					</div>
				</div>
				<div class="slide slide4">
					<div class="caption">
						<h2>Trusted Services</h2>
						<p>In a shift of scope from mere electronic signatures to developed Trust services, 
						the eIDAS Regulation has enabled the use of electronic identification and trust ...</p>
					</div>
				</div>
				<div class="slide slide1">
					<div class="caption">
						<h2>OOP Spare Parts Solutions</h2>
						<p>There are thousands of piddling, trivial things anyone can do to save time. But this article focuses on how to save 
						time in daily life by focusing on the general things that anyone can do that will actually make a big change in the 
						amount of time you have to do what you want to do. Best of all, each of these ways to save time is relatively easy to do. 
						If you do all ten, you'll save so much time you may have to take up a new hobby!</p>
					</div>
				</div>
			</div>
		</div>

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