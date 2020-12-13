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
					<li><a href="/home">Home</a></li>
					<li><a href="/allproduct">All Product</a></li>
					<c:if test="${login!=null}">
						<li><a href="/myproduct/${login.uid}">My Product</a></li>
					</c:if>
					<li><a href="">Search <i class="fas fa-search"></i></a></li>
					<c:if test="${login==null}">
						<li><a href="login">Login</a></li>
					</c:if>
					<c:if test="${login!=null}">
						<li><a>${login.username}님 환영합니다</a></li>
						<li><a href="/signout">Sign-out</a></li>
					</c:if>
				</ul>
			</nav>
			<img src="${path}/resources/images/cart.png" width="30px" height="30px">
		</div>
	</div>
	<div class="small-container">

		<div class="row row-2">
			<h2>All Products</h2>
		</div>


		<div class="row">
			<c:forEach items="${list}" var="u">
				<div class="col-4" OnClick="location.href='detail/${u.getPid()}'">
					<div class="frontimage">
						<img src="${pageContext.request.contextPath}/upload/${u.getPhoto()}">
					</div>
					<h4>${u.getName() }</h4>
					<div class="rating"></div>
					<p>${u.getPrice() }</p>
				</div>
			</c:forEach>
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