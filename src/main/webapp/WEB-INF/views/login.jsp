<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign in/up</title>
<link rel="stylesheet" href="${path}/resources/css/login.css">
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<!-- ---------------main -->

	<div class="header">
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="${path}/resources/images/logo.png" width="125px">
				</div>
				<nav>
					<ul>
						<li><a href="">Home</a></li>
						<li><a href="allproduct">All Product</a></li>
						<li><a href="myproduct">My Product</a></li>
						<li><a href="">Search <i class="fas fa-search"></i></a></li>
						<li><a href="login">Login</a></li>
						<li><a href="">Register</a></li>
					</ul>
				</nav>
				<img src="${path}/resources/images/cart.png" width="30px" height="30px">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function toggle() {
			document.querySelector('.cont').classList.toggle('s--signup');
		}
	</script>
	<div class="cont">
		<div class="form sign-in">
			<h2>Welcome back,</h2>
			<form action="loginOk" method="post">
				<label> <span>ID</span> <input type="text" name="uid" />
				</label> <label> <span>Password</span> <input type="password" name="password" />
				</label>
				<button type="submit" class="submit">Sign In</button>
			</form>
		</div>
		<div class="sub-cont">
			<div class="img">
				<div class="img__text m--up">
					<h2>New here?</h2>
					<p>Sign up and discover great amount of new opportunities!</p>
				</div>
				<div class="img__text m--in">
					<h2>One of us?</h2>
					<p>If you already has an account, just sign in. We've missed you!</p>
				</div>
				<div class="img__btn" onClick="toggle();">
					<span class="m--up">Sign Up</span> <span class="m--in">Sign In</span>
				</div>
			</div>
			<div class="form sign-up">
				<h2>Time to feel like home,</h2>
				<form action="signupOk" method="post">
					<label> <span>Name</span> <input type="text" name="username" />
					</label> <label> <span>ID</span> <input type="text" name="uid" />
					</label> <label> <span>Password</span> <input type="password" name="password" />
					</label> <label> <span>Phone Number</span> <input type="tel" name="phoneNumber" />
					</label>
					<button type="submit" class="submit" value="signup">Sign Up</button>
				</form>
			</div>
		</div>
	</div>
	<!-- ------------footer-------------- -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<img src="${path}/resources/images/footer-logo.png" id="footer-logo">
					<p>우린 쓸모 남은 물건을 사고 팔아요.</p>
				</div>
				<div class="footer-col-3">
					<h3>Contact Us</h3>
					<ul>
						<li>Woo <i class="fas fa-phone"></i></li>
						<li>Rin <i class="fas fa-phone"></i></li>
						<li>ㅤ</li>
						<li>ㅤ</li>
					</ul>
				</div>
				<div class="footer-col-4">
					<h3>Follow Us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>Youtube</li>
					</ul>
				</div>
			</div>
			<hr>
			<p class="copyright">Copyright 2020 - We are Market</p>
		</div>
	</div>

</body>
</html>