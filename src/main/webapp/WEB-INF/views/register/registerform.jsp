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
                        <input class="form-control" type="text" name="name" placeholder="이름을 입력해주세요">
                    </div>
                </div>
            </div>

            <!-- 아이디 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">아이디<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="text" name="userId" placeholder="아이디를 입력해주세요.">
                    </div>
                    <div class="col-4">
                        <button class="btn btn-outline-dark rounded-pill" id="duplicateCheck">중복체크</button>
                    </div>
                </div>
            </div>

            <!-- 비밀번호 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">비밀번호<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="password" name="userPassword" placeholder="영문, 숫자, 특수문자 조합으로 8~20글자.">
                    </div>
                    <div class="col-4">
                        <input class="form-control" type="password" name="checkPassword" placeholder="비밀번호를 한번 더 입력해주세요.">
                    </div>
                </div>
            </div>

            <!-- 이메일 입력 폼 -->
            <div class="mt-3 border-bottom border-2">
                <div class="row mb-3">
                    <div class="col-2 fw-bold fs-6 text-center">이메일<span class="text-danger">*<span></div>
                    <div class="col-4">
                        <input class="form-control" type="email" name="email" placeholder="이메일을 입력해주세요.">
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
                                <select class="form-select" id="telAreacode">
                                    <option></option>
                                    <option>없음</option>
                                    <option>02</option>
                                    <option>031</option>
                                    <option>032</option>
                                    <option>033</option>
                                    <option>041</option>
                                    <option>042</option>
                                    <option>043</option>
                                    <option>051</option>
                                    <option>052</option>
                                    <option>053</option>
                                    <option>054</option>
                                    <option>055</option>
                                    <option>061</option>
                                    <option>062</option>
                                    <option>063</option>
                                    <option>064</option>
                                </select>
                            </div>
                            <div class="col-8">
                                <input class="form-control" type="text" name="tel"  placeholder="전화번호를 입력해주세요.">
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
                                <select class="form-select" id="carrierIdNo">
                                    <option></option>
                                    <option>010</option>
                                    <option>011</option>
                                    <option>016</option>
                                    <option>017</option>
                                    <option>018</option>
                                    <option>019</option>
                                </select>
                            </div>
                            <div class="col-8">
                                <input class="form-control" type="text" name="phone" placeholder="휴대폰 번호를 입력해주세요.">
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
                    <input class="form-check-input" type="checkbox" id="chkCheckAll" onchange="chkCheckAll(this)">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">모든 약관 및 마케팅에 동의합니다.</span></label>
                </div>
            </div>
            <div class="mt-3 border-bottom border-2">
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" name="checkbox" onclick="uncheckChkCheckAll(this)">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">파파존스 이용약관 (필수)</span></label>
                </div>
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" name="checkbox" onclick="uncheckChkCheckAll(this)">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">개인정보 수집 및 이용 동의 (필수)</span></label>
                </div>
                <div class="form-check mb-3 ms-5">
                    <input class="form-check-input" type="checkbox" name="checkbox" onclick="uncheckChkCheckAll(this)">
                    <label class="form-check-label" for="flexCheckDefault"><span class="fw-bold">위치기반 서비스 이용약관 (필수)</span></label>
                </div>
            </div>
        </div>

        <!-- 유효성 체크 -->
        <div class="mt-5 mb-5 text-center">
            <input type="button" class="btn btn-danger btn-lg rounded-pill text-white fw-bold"
                   onclick="validation()" value="가입완료"></input>
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
        $('.datepicker').datepicker({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            closeText: '닫기',
            currentText: '오늘',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearSuffix: '년',
            showButtonPanel: true
        });
    })
</script>
</html>