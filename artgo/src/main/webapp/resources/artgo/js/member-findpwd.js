function check() {
	if (document.finePwd.id.value == "") {
	alert("아이디를 입력하세요");
		document.finePwd.id.focus();
		return false;
	}
	return true;
}
$("#btnBack").click(function(){
	location.href = "/member/login.do";
});
