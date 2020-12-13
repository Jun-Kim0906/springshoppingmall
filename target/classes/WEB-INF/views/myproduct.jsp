<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Product</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<script type="text/javascript">
		function delete_ok(id, uid) {
			var a = confirm("정말로 삭제하겠습니까?");
			if (a)
				location.href = 'deleteOk/' + id + '/' + uid;
		}
		function edit(pid) {
			location.href = 'editproduct/' + pid;
		}
	</script>
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
			<h2>My Products</h2>
		</div>

		<div class="row">
			<c:forEach items="${list}" var="u">
				<div class="col-4">
					<div OnClick="location.href='/detail/${u.getPid()}'">
						<div class="frontimage">
							<img src="${pageContext.request.contextPath}/upload/${u.getPhoto()}">
						</div>
						<h4>${u.getName() }</h4>
						<div class="rating"></div>
						<p>${u.getPrice() }</p>
					</div>
					<div class="row">
						<button type="button" class="btn" onclick="delete_ok('${u.getPid()}','${login.uid}')">삭제</button>
						<button type="button" class="btn" onclick="edit('${u.getPid()}')" style="background-color: green;">수정</button>
					</div>


				</div>
			</c:forEach>
		</div>


		<div style="margin-bottom: 30px;">
			<div class="back">
				<div class="button_base b03_skewed_slide_in" onclick="location.href='addproduct/${login.uid}'">
					<div>ADD NEW PRODUCT</div>
					<div></div>
					<div>상품 추가하기</div>
				</div>
			</div>
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
						<li>Woo<i class="fas fa-phone"></i></li>
						<li>Rin<i class="fas fa-phone"></i></li>
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