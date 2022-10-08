<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
<style>
	.nav-link {
		color : black;
		font-weight : bold;
		margin-right : 10px;
	}
	.menu-image {
		width:30px;
		height:auto;
	}
</style>
<nav class="navbar navbar-expand bg-white navbar-secondary">
	<div class="container" style="min-width:1200px; max-width:1200px; height:87px;">
		<div>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/menu">메뉴</a></li>
				<li class="nav-item"><a class="nav-link" href="#">이벤트/할인</a></li>
				<li class="nav-item"><a class="nav-link" href="#">E-쿠폰주문</a></li>
			</ul>
		</div>
		<div>
			<a href="/"><img src="/resources/images/papajohns_logo.png"></a>
		</div>
		<div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/register" class="nav-link">회원가입</a></li>
				<li class="nav-item"><a href="/login" class="nav-link btn btn-outline-dark rounded-pill">로그인</a></li>
				<li class="nav-item"><a href="/cart" class="nav-link"><img class="menu-image" src="/resources/images/cart.svg"></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><img class="menu-image" src="/resources/images/filter-square.svg"></a></li>
			</ul>
		</div>
	</div>
</nav>