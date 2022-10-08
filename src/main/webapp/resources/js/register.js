// 회원가입
document.getElementById("btn-register").addEventListener("click", function() {

    // 입력받은 회원 데이터
    let telAreacode = document.getElementById("tel-areacode").value;
    let telNumber = document.querySelector("input[name=tel]").value;
    let carrierIdentificationNumber = document.getElementById("carrier-identification-number").value;
    let phoneNumber = document.querySelector("input[name=phone]").value;

    let user = {
        name : document.querySelector("input[name=name]").value,
        id : document.querySelector("input[name=id]").value,
        password : document.querySelector("input[name=password]").value,
        email : document.querySelector("input[name=email]").value,
        tel : telAreacode + telNumber,
        phone : carrierIdentificationNumber + phoneNumber,
        birth : document.getElementById("birth").value,
        gender : document.querySelector("input[name=gender]:checked").value
    }
    // console.log(user);

    let xhr = new XMLHttpRequest();

    xhr.open('POST', 'http://localhost:8075/user/register', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.send("user");

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log(xhr.response);
        } else {

        }
    }
});