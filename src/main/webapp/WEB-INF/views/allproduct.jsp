<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Product</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<div class="container">
		<div class="navbar">
			<div class="logo">
				<img src="${path}/resources/images/logo.png" width="125px">
			</div>
			<nav>
				<ul>
					<li><a href="home">Home</a></li>
					<li><a href="">All Product</a></li>
					<li><a href="">My Product</a></li>
					<li><a href="">Search <i class="fas fa-search"></i></a></li>
					<li><a href="login.html">Login</a></li>
					<li><a href="login.html">Register</a></li>
				</ul>
			</nav>
			<img src="${path}/resources/images/cart.png" width="30px" height="30px">
		</div>
	</div>
	<div class="small-container">

		<div class="row row-2">
			<h2>All Products</h2>
			<select>
				<option>Default Shorting</option>
				<option>Short by price</option>
				<option>Short by popularity</option>
				<option>Short by rating</option>
				<option>Short by sale</option>
			</select>
		</div>


		<div class="row">
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
			<div class="col-4">
				<img src="${path}/resources/images/product-1.jpg">
				<h4>상품명</h4>
				<div class="rating"></div>
				<p>상품가격</p>
			</div>
		</div>

		<div class="page-btn">
			<span>1</span> <span>2</span> <span>3</span> <span>4</span> <span>&#8594;</span>
		</div>
	</div>

	<!------- footer --------->
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