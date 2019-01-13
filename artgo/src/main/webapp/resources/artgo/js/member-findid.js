function memberFindIdCheck() {
	if (document.findId.name.value == "") {
		alert("이름을 입력하세요");
		document.findId.name.focus();
		return false;
	}
	if (document.findId.phone.value == "") {
		alert("휴대폰번호를 입력하세요");
		document.findId.phone.focus();
		return false;
	}
	return true;
}
$("#btnBack").click(function(){
	location.href = "/member/login.do";
});
