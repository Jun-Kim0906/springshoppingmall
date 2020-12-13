<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Pen+Script&family=Yeon+Sung&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;;
}

.navbar {
	display: flex;
	align-items: center;
	padding: 20px;
}

body {
	font-family: 'Poppins', sans-serif;
}

nav {
	flex: 1;
	text-align: right;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav ul li {
	display: inline-block;
	margin-right: 20px;
}

a {
	text-decoration: none;
	color: #555;
}

p {
	color: #555;
}

.container {
	max-width: 1300px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

.row {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	justify-content: space-around;
}

.col-2 {
	flex-basis: 50%;
	min-width: 300px;
}

.col-2 img {
	max-width: 100%;
	padding: 50px 0;
}

.col-2 h1 {
	font-size: 50px;
	line-height: 60px;
	margin: 25px;
}

.btn {
	display: inline-block;
	background: #ff523b;
	color: #fff;
	padding: 8px 30px;
	margin: 30px 0;
	border-radius: 30px;
	transition: background 1s;
}

.btn :hover {
	background: #563434;
}

.header {
	background: radial-gradient(#fff, #ffd6d6);
}

.header .row {
	margin-top: 70px;
}

.categories {
	margin: 70px 0;
}

.col-3 {
	flex-basis: 30%;
	min-width: 250px;
	margin-bottom: 30px;
}

.col-3 img {
	width: 100%;
}

.small-container {
	max-width: 1080px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

.col-4 {
	flex-basis: 25%;
	padding: 10px;
	min-width: 200px;
	margin-bottom: 50px;
	transition: transform 0.5s;
}

.col-4 img {
	width: 100%;
}

.title {
	text-align: center;
	margin: 0 auto 80px;
	position: relative;
	line-height: 60px;
	color: #555;
}

.title::after {
	content: '';
	width: 80px;
	background: #ff523b;
	height: 5px;
	border-radius: 5px;
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
}

.h4 {
	color: #555;
	font-weight: normal;
}

.col-4 p {
	font-size: 14px;
}

.col-4:hover {
	transform: translateY(-5px);
}
/*---------footer----------*/
.footer {
	background: #000;
	color: #8a8a8a;
	font-size: 14px;
	padding: 60px 0 20px;
}

.footer p {
	color: #8a8a8a;
}

.footer h3 {
	color: #fff;
	margin-bottom: 20px;
}

.footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4 {
	min-width: 250px;
	margin-bottom: 20px;
}

.footer-col-1 {
	flex-basis: 30%;
	text-align: center;
}

.footer-col-2 {
	flex: 1;
	text-align: center;
	border: 1px solid white;
}

.footer-col-1 img {
	width: 50%;
	height: 50%;
	object-fit: cover;
	margin-bottom: 20px;
}

.footer-col-3, .footer-col-4 {
	flex-basis: 12%;
	text-align: center;
}

.footer-col-4 {
	text-align: center;
}

ul {
	list-style-type: none;
}

.app-logo {
	margin-top: 20px;
}

.app-logo img {
	width: 140px;
}

.footer hr {
	border: none;
	background: #b5b5b5;
	height: 1px;
	margin: 20px 0;
}

.copyright {
	text-align: center;
}
/*----------all products---------*/
.row-2 {
	justify-content: space-between;
	margin: 100px auto 50px;
}

select {
	border: 1px solid #ff523b;
	padding: 5px;
}

select:focous {
	outline: none;
}

.button_base {
	margin: 0;
	border: 0;
	font-size: 18px;
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -25px;
	margin-left: -100px;
	width: 200px;
	height: 50px;
	text-align: center;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-user-select: none;
	cursor: default;
}

.button_base:hover {
	cursor: pointer;
}

.b03_skewed_slide_in {
	overflow: hidden;
	border: #000000 solid 1px;
}

.b03_skewed_slide_in div {
	position: absolute;
	text-align: center;
	width: 100%;
	height: 50px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	padding: 10px;
}

.b03_skewed_slide_in div:nth-child(1) {
	color: #000000;
	background-color: #ffffff;
}

.b03_skewed_slide_in div:nth-child(2) {
	background-color: #000000;
	width: 230px;
	transition: all 0.2s ease;
	-webkit-transition: all 0.2s ease;
	-moz-transition: all 0.2s ease;
	transform: translate(-250px, 0px) skewX(-30deg);
	-webkit-transform: translate(-250px, 0px) skewX(-30deg);
	-moz-transform: translate(-250px, 0px) skewX(-30deg);
}

.b03_skewed_slide_in div:nth-child(3) {
	color: #ffffff;
	left: -200px;
	transition: left 0.2s ease;
	-webkit-transition: left 0.2s ease;
	-moz-transition: left 0.2s ease;
}

.b03_skewed_slide_in:hover div:nth-child(2) {
	transition: all 0.5s ease;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	transform: translate(-15px, 0px) skewX(-30deg);
	-webkit-transform: translate(-15px, 0px) skewX(-30deg);
	-moz-transform: translate(-15px, 0px) skewX(-30deg);
}

.b03_skewed_slide_in:hover div:nth-child(3) {
	left: 0px;
	transition: left 0.30000000000000004s ease;
	-webkit-transition: left 0.30000000000000004s ease;
	-moz-transition: left 0.30000000000000004s ease;
}
</style>
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
			<h2>Add Product</h2>
		</div>
		<form action="/addproductOk/${login.uid}" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="email">Product Name:</label> <input type="text" class="form-control" id="username" placeholder="상품 이름을 입력하세요 " name="name">
			</div>
			<div class="form-group">
				<label for="userid">Price:</label> <input type="number" class="form-control" id="userid" placeholder="판매 가격을 입력하세요" name="price">
			</div>
			<div class="form-group">
				<label for="place">구입시기:</label> <input type="date" class="form-control" id="place" placeholder="제품 구입 시기를 입력하세" name="bdate">
			</div>
			<div class="form-group">
				<label for="photo">제품 사진:</label> <input type="file" class="form-control" id="photo" name="uploadFile">
			</div>
			<div class="form-group">
				<label for="detail">상세 설명:</label>
				<textarea cols="50" class="form-control" rows="5" placeholder="후기를 입력 해주세요" name="content"></textarea>
			</div>
			<button type="button" class="btn btn-danger" onclick="history.back()">Cancel</button>
			<button type="submit" value="upload" class="btn btn-default pull-right">Submit</button>

		</form>
	</div>

	<!------- footer --------->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1 col-9" style="float: left;">
					<img src="${path}/resources/images/footer-logo.png" id="footer-logo">
					<p>우린 쓸모 남은 물건을 사고 팔아요.</p>
				</div>
				<div class="footer-col-3 col-9">
					<h3>Contact Us</h3>
					<ul>
						<li>Woo <i class="fas fa-phone"></i></li>
						<li>Rin <i class="fas fa-phone"></i></li>
						<li>ㅤ</li>
						<li>ㅤ</li>
					</ul>
				</div>
				<div class="footer-col-4 col-9">
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