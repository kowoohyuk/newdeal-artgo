function check() {
  var name = $("#name");
  var phone = $("#phone");
	if (name.val() == "") {
		alert("이름을 입력하세요");
		name.focus();
		return false;
	}
	if (phone.val() == "") {
		alert("휴대폰번호를 입력하세요");
    phone.focus();
    return false;
	}
	return true;
}
$("#btnBack").click(function(){
	location.href = "/member/login.do";
});
