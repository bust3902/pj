<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 부트스트랩 -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- jQuery Date Picker-->
<script src="/resources/jquery-ui-1.13.2/external/jquery/jquery.js"></script>
<script src="/resources/jquery-ui-1.13.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/resources/jquery-ui-1.13.2/jquery-ui.min.css">
<link rel="stylesheet" href="/resources/jquery-ui-1.13.2/date-picker.css">

<title>Menu</title>

<style>
 </style>

</head>
<body style="background-color: #F5F9F5;">
<%@ include file="../nav.jsp" %>
<div class="container mt-5" style="min-width:1200px; max-width:1200px; height:87px;">
    <div class="mt-3">
        <div class="row">
            <h1 class="text-center">
                <span class="fw-bold fs-2">회원가입<span>
            </h1>
            <div class="text-end mb-2" style="font-size:12px;">
                <span>홈&lt;회원가입
            </div>
        </div>
        <div class="row rounded-3 bg-white p-5">
            <div class="mt-2 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-6 fw-bold fs-5 nav-item">정보입력</div>
                    <div class="col-6 text-end text-danger nav-item">*필수사항입니다</div>
                </div>
            </div>

            <!-- 이름 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">이름<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="name">
                    </div>
                </div>
            </div>

            <!-- 아이디 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">아이디<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="id">
                    </div>
                    <div class="col-4">
                        <button class="btn btn-outline-dark rounded-pill">중복체크</button>
                    </div>
                </div>
            </div>

            <!-- 비밀번호 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">비밀번호<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="password">
                    </div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="checkPassword">
                    </div>
                </div>
            </div>

            <!-- 이메일 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">이메일<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="email">
                    </div>
                </div>
            </div>

            <!-- 전화번호 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">전화번호</div>
                    <div class="col-4">
                        <div class="row">
                            <div class="col-4">
                                <select class="form-select" name="telAreacode" id="tel-areacode">
                                    <option></option>
                                    <option>02</option>
                                </select>
                            </div>
                            <div class="col-8">
                                <input class="form-control" type="text" name="tel">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 핸드폰 번호 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">휴대폰<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <div class="row">
                            <div class="col-4">
                                <select class="form-select" name="carrierIdentificationNumber" id="carrier-identification-number">
                                    <option></option>
                                    <option>010</option>
                                </select>
                            </div>
                            <div class="col-8">
                                <input class="form-control" type="text" name="phone">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 생일 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">생일<span class="text-danger">*<span></div>
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <input class="datepicker form-select" id="birth">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 성별 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">성별<span class="text-danger">*<span></div>
                    <div class="col-6">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="M">
                            <label class="form-check-label" for="flexRadioDefault1"><span class="fw-bold">남성</span></label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="F">
                            <label class="form-check-label" for="flexRadioDefault1"><span class="fw-bold">여성</span></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 약관 동의 입력 폼 -->
            <div class="mt-5 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-6 fw-bold fs-5 nav-item">약관 동의 및 마케팅 동의</div>
                </div>
            </div>
            <div class="mt-3 border-bottom border-2">
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" value="">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">모든 약관 및 마케팅에 동의합니다.</span></label>
                </div>
            </div>
            <div class="mt-3 border-bottom border-2">
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" value="">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">파파존스 이용약관 (필수)</span></label>
                </div>
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" value="">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">개인정보 수집 및 이용 동의 (필수)</span></label>
                </div>
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" value="">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">위치기반 서비스 이용약관 (필수)</span></label>
                </div>
            </div>
        </div>

        <!-- 유효성 체크 -->
        <div class="mt-5 mb-5 text-center">
            <button class="btn btn-danger btn-lg rounded-pill text-white" id="btn-validation"><span class="fw-bold">가입완료</span></button>
        </div>
        <!-- submit -->
        <div class="mt-5 mb-5 text-center">
            <button class="btn visually-hidden" id="btn-register"></button>
        </div>

    </div>
</div>
</body>

<!-- JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/registerform.js"></script>

<!-- Date Picker -->
<script>

    $(function(){
        $('.datepicker').datepicker();
    })
</script>

</html>