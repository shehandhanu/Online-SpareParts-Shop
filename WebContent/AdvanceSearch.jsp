<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<div class="advancesearch">
			<form action = "ashop" method = "POST" >
				<table>
					<tr>
						<td>
							<tr>
								<td><h5>Select Brand </h5></td>
								<td>
									<select name ="brand">
									<option value = "#">Select Brand</option>
									  <option value="BMW">BMW</option>
									  <option value="saab">Susuki</option>
									  <option value="mercedes">Mercedes</option>
									  <option value="audi">Audi</option>
									  <option value="lambo">Lamogini</option>
									  <option value="ferari">Ferari</option>
									  <option value="mistubishi">Mitsubisishi</option>
									</select>
								</td>
							</tr>
						</td>
					</tr>
					<tr>
						<td>
							<tr>
								<td><h5>Select Model</h5></td>
								<td>
									<select name ="model">
									<option value = "#">Select Model</option>
									  <option value="x1">X1</option>
									  <option value="x7">X7</option>
									  <option value="c5">C5</option>
									  <option value="b5">B5</option>
									  <option value="c6">C6</option>
									  <option value="a11">A11</option>
									  <option value="b124">B124</option>
									  <option value="x45">X45</option>
									  <option value="mc6">MC^</option>
									  <option value="trx">TRX</option>
									</select>
								</td>
							</tr>
						</td>
					</tr>
					<tr>
						<td>
							<tr>
								<td><h5>Select Year </h5></td>
								<td>
									<select name ="year">
									<option value = "#">Select Year</option>
									  <option value="2020">2020</option>
									  <option value="2019">2019</option>
									  <option value="2018">2018</option>
									  <option value="2017">2017</option>
									  <option value="2016">2016</option>
									  <option value="2015">2015</option>
									  <option value="2014">2014</option>
									  <option value="2013">2013</option>
									  <option value="2012">2012</option>
									  <option value="2011">2011</option>
									</select>
								</td>
							</tr>
						</td>
					</tr>
					<tr>
						<td>
							<tr>
								<td><h5>Select Spare part name </h5></td>
								<td>
									<select name ="name">
									<option value = "#">Select Part Name</option>
									  <option value="door">Door</option>
									  <option value="sideMirror">Side Mirror</option>
									  <option value="suspencers">Suspencers</option>
									  <option value="buffer">Buffers</option>
									  <option value="engine">Engine</option>
									  <option value="breaks">Breaks</option>
									  <option value="trobo">Trobo</option>
									  <option value="bodykit">bodykit</option>
									  <option value="trancsmition">Trancsmition</option>
									  <option value="Tyers">Tyers</option>
									  <option value="glass">Glass</option>
									</select>
								</td>
							</tr>	
						</td>
					</tr>
				</table>
					<button type = "submit" name ="search">Search</button>
			</form>
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