// 약관 및 마케팅 동의 전체 동의 선택시 체크박스 전체 체크
let chkCheckAll = (target) => {
    let isChecked = target.checked;

    document.querySelectorAll("input[type=checkbox]")
        .forEach(el => {
            el.checked = isChecked;
        });
}
// 체크박스 일부 해제/전체 선택시 전체동의 체크박스 활성화
function uncheckChkCheckAll(checkbox)  {
	let total = document.querySelectorAll("input[name=checkbox]").length;
	let checked = document.querySelectorAll("input[name=checkbox]:checked").length;

    if (total != checked) {
        document.getElementById("chkCheckAll").checked = false;
    } else if (total == checked) {
        document.getElementById("chkCheckAll").checked = true;
    }
}
document.getElementById("telAreacode").addEventListener("change", function() {

    if (document.getElementById("telAreacode").value === '없음') {
        document.querySelector("input[name=tel]").disabled = true;
    }
    if (document.getElementById("telAreacode").value !== '없음') {
        document.querySelector("input[name=tel]").disabled = false;
    }
})

// 유효성 체크
function validation() {

    // 이름 입력값 확인
    let nameValue = document.querySelector("input[name=name]").value;

    if (nameValue === "") {
        setTimeout(function() {document.querySelector("input[name=name]").focus();}, 1);
        alert("성함을 입력해주세요.");
        return false;
    }

    // 아이디 입력값, 아이디 형식 확인
    let idValue = document.querySelector("input[name=userId]").value;
    let validationId = /^[a-zA-Z0-9]{6,10}$/;

    if (idValue === "") {
        alert("아이디를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=userId]").focus();}, 1);
        return false;
    }
    if(!validationId.test(idValue)){
        alert("영문이 포함된 조합으로 6~20글자를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=userId]").focus();}, 1);
    	return false;
    }

    // 패스워드 입력값, 패스워드 형식 확인
    let passwordValue = document.querySelector("input[name=userPassword]").value;
    let validationPassword = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*()_+|<>?:{}]).{6,20}$/;

    if (passwordValue === "") {
        alert("패스워드를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=userPassword]").focus();}, 1);
        return false;
    }
    if(!validationPassword.test(passwordValue)){
        alert("영문, 숫자, 특수문자 조합으로 6~20글자를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=userPassword]").focus();}, 1);
    	return false;
    }

    // 패스워드 체크
    let checkPasswordValue = document.querySelector("input[name=checkPassword]").value;

    if (checkPasswordValue !== passwordValue) {
        alert("패스워드 확인란을 확인해주세요.");
        setTimeout(function() {document.querySelector("input[name=checkPassword]").focus();}, 1);
        return false;
    }

    // 이메일 입력값, 이메일 형식 확인
    let emailValue = document.querySelector("input[name=email]").value;
    let validationEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

    if (emailValue === "") {
        alert("이메일을 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=email]").focus();}, 1);
        return false;
    }
    if(!validationEmail.test(emailValue)){
        alert("이메일 형식에 맞게 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=email]").focus();}, 1);
    	return false;
    }

    // 전화번호 입력값, 전화번호 형식 확인
    let telAreacode = document.getElementById("telAreacode").value;
    let telNumber = document.querySelector("input[name=tel]").value;
    let validationTel = /^[0-9]{0,13}$/;

    if (telAreacode + telNumber === "") {
        alert("전화번호를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=tel]").focus();}, 1);
        return false;
    }
    if(!validationTel.test(telNumber)){
        alert("-를 제외하고 숫자만 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=tel]").focus();}, 1);
    	return false;
    }

    // 휴대폰 번호 입력값, 휴대본 번호 형식 확인
    let carrierIdNo = document.getElementById("carrierIdNo").value;
    let phoneNumber = document.querySelector("input[name=phone]").value;
    let validationPhone = /^[0-9]{7,11}$/;

    if (carrierIdNo + phoneNumber === "") {
        alert("휴대폰 번호를 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=phone]").focus();}, 1);
        return false;
    }
    if(!validationPhone.test(phoneNumber)){
        alert("-를 제외하고 숫자만 입력해주세요.");
        setTimeout(function() {document.querySelector("input[name=phone]").focus();}, 1);
    	return false;
    }

    // 생일 입력값 확인
    let birthValue = document.getElementById("birth").value;

    if (birthValue === "") {
        alert("생일을 선택해주세요.");
        setTimeout(function() {document.getElementById("birth").focus();}, 1);
        return false;
    }

    // 성별 선택 확인
    let genderValue = document.querySelectorAll("input[name=gender]:checked").length;

    if (genderValue < 1) {
        alert("성별을 선택해주세요.");
        setTimeout(function() {document.querySelector("input[name=gender]").focus();}, 1);
        return false;
    }

    // 약관동의 확인
    if (!document.getElementById("chkCheckAll").checked) {
        alert("모든 약관에 동의하셔야 가입하실 수 있습니다.");
        setTimeout(function() {document.getElementById("chkCheckAll").focus();}, 1);
    }

    register();
}

// 아이디 중복 검사
document.getElementById("duplicateCheck").addEventListener("click", function() {
    let xhr = new XMLHttpRequest();
    let value = "id=" + document.querySelector("input[name=userId]").value;

    xhr.open('POST', 'http://localhost:8075/api/user/user', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.send(JSON.stringify(value));

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log(xhr.response);

        } else {

        }
    }
});

// 회원가입
function register() {

    // 입력받은 회원 데이터
    let telAreacode = document.getElementById("telAreacode").value;
    let telNumber = document.querySelector("input[name=tel]").value;
    let carrierIdNo = document.getElementById("carrierIdNo").value;
    let phoneNumber = document.querySelector("input[name=phone]").value;

    let user = {
        name : document.querySelector("input[name=name]").value,
        id : document.querySelector("input[name=userId]").value,
        password : document.querySelector("input[name=userPassword]").value,
        email : document.querySelector("input[name=email]").value,
        tel : telAreacode + telNumber,
        phone : carrierIdNo + phoneNumber,
        birth : document.getElementById("birth").value,
        gender : document.querySelector("input[name=gender]:checked").value
    }
    console.log(user);

    let xhr = new XMLHttpRequest();

    xhr.open('POST', '/api/user/register', true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(user));

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log(xhr.response);
        } else {

        }
    }
}