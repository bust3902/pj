<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	.dropdown-item.menu {
	    font-size : 14px;
	}
</style>
<nav class="navbar navbar-expand bg-white navbar-secondary">
	<div class="container" style="min-width:1200px; max-width:1200px; height:87px;">
		<div>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/menu">메뉴</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">이벤트/할인</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">E-쿠폰주문</a></li>
			</ul>
		</div>
		<div>
			<a href="/"><img src="/resources/images/papajohns_logo.png"></a>
		</div>
		<div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/register" class="nav-link">회원가입</a></li>
				<li class="nav-item">
				    <button class="btn btn-outline-dark mb-2 me-4 rounded-pill" type="button" data-bs-toggle="modal"
				            data-bs-target="#modal-login"><span class="fw-bold">로그인</span>
				    </button>
				</li>
				<li class="nav-item">
				    <a href="/cart" class="nav-link"><img class="menu-image" src="/resources/images/cart.svg"></a>
				</li>
				<li class="nav-item">
				    <div class="dropdown">
                        <button class="btn btn-outline-light dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img class="menu-image" src="/resources/images/filter-square.svg">
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item disabled fw-bold">주문</a></li>
                            <li><a class="dropdown-item menu" href="/menu">메뉴</a></li>
                            <li><a class="dropdown-item menu" href="/findstore">매장찾기</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item disabled fw-bold">고객센터</a></li>
                            <li><a class="dropdown-item menu" href="/notice">공지사항</a></li>
                            <li><a class="dropdown-item menu" href="/inquiry">직접문의</a></li>
                        </ul>
                    </div>
				</li>
			</ul>
		</div>

        <!-- 로그인 모달 -->
        <div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    <p class="fw-bold">로그인&nbsp;</p><br>
                    <p style="font-size:12px;"> *주문하기 위해서는 로그인이 필요합니다.</p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row mt-3">
                            <div class="col-3">아이디</div>
                            <div class="col-9"> <input class="form-control" type="text" id="userId"></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-3">패스워드</div>
                            <div class="col-9"> <input class="form-control" type="text" id="userPassword"></div>
                        </div>
                        <div class="row mt-5 mb-3 px-3">
                            <button class="btn btn-danger rounded-pill">로그인</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</nav>