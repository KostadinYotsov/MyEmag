<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script src="js/jquery.min.js"></script>

<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>Register</h1>
		<em></em>
		<h2><a href="index.html">Home</a><label>/</label>Register</h2>
	</div>
</div>


<!--register-->
<div class="container">
		<div class="login">
			<f:form action="register" method="post">
			<div class="col-md-6 login-do">
			<div class="login-mail">
					<f:input path="username" type="text" placeholder="Username" required=""> </f:input>
					<i  class="glyphicon glyphicon-user"></i>
				</div>
				<div class="login-mail">
					<f:input path="email" type="text" placeholder="Email" required=""></f:input>
					<i  class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">
					<f:input  path="password" type="password" placeholder="Password" required=""></f:input>
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="Confirm password" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				  
				<label class="hvr-skew-backward">
					<input type="submit" value="Submit">
				</label>
			
			</div>
			</f:form>
		</div>

</div>
<!--//register-->	

	<!--//content-->
		<!--//footer-->
	<div class="footer">
	<div class="footer-middle">
				<div class="container">		
					<div class="col-md-3 footer-middle-in">
						<h6>Information</h6>
						<ul class=" in">
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="wishlist.html">Wish List</a></li>
						</ul>
					</div>
					
					<!-- da! -->
					<div class="col-md-3 footer-middle-in">
						<h6>Newsletter</h6>
						<span>Sign up for News Letter</span>
							<form>
								<input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
								<input type="submit" value="Subscribe">	
							</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			
		</div>
		<!--//footer-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>