<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>

<div class="login-wrap">

		<div class="login-html">
			
				<input id="tab-1" type="radio" name="tab" class="sign-in" >
				
				<label for="tab-1" class="tab">Sign In</label> 
				
				<input id="tab-2" type="radio" name="tab" class="sign-up" checked>
				
				<label for="tab-2"class="tab">Sign Up</label>

					
					
					<div class="login-form">
						
						<div class="sign-in-htm">
							<form action="LoginServlet" method="Post">		
					
								<div class="group">
									<label for="user" class="label">Username</label>
							 			<input name="username" type="text" class="input">
								</div>
								
								<div class="group">
									<label for="pass" class="label">Password</label> 
									<input name="password" type="password" class="input" type="password">
								</div>
								
								
								<div class="group">
									<input type="submit" class="button" value="Sign In">
								</div>
								
								
								<div class="hr"></div>
									<div class="foot-lnk"> <a href="#forgot">Forgot Password?</a>

								</div>
								
							</form>
							
						</div>
					
			
			
			
			<div class="sign-up-htm">
			
			<form action="Register" method="Post"> 
				<div class="group">
					<label for="fname" class="label">First Name</label> 
					<input name="fname" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="lname" class="label">Last Name</label> 
					<input name="lname" type="text" class="input">
				</div>
			
				<div class="group">
					<label for="user" class="label">Username</label> 
					<input name="username" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="pass" class="label">Password</label> 
					<input name="password" type="password" class="input" type="password">
				</div>
				
				<div class="group">
					<label for="email" class="label">Email Address</label> 
					<input name="email" type="text" class="input">
				</div>
				
				<div class="group">
					<label for="no" class="label">Contact No</label> 
					<input name="phn" type="text" class="input" type="text">
				</div>
				
				
				
				<div class="group">
					<label for="address" class="label">Address</label> 
					<input name="address" type="text" class="input">
				</div>
				
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				
				</form>
				
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1"><a href="login.jsp">Already Member?</a>
					</label>
				</div>
			</div>
		</div>

	</div>
	</div>


</body>
</html>