//join js 수정필요

$(document).ready(function() {

	$("input:text").on("focusout", function() {
		var id = $(this).val();

		if ($(this).attr('id') == 'name') {
			var idReg = /^[가-힣]{2,6}$/g;
			if (!idReg.test(id)) {
				$(this).next().text("이름은 한글만 입력 가능합니다.");
				$(this).next().css("display", "inline-block");
			} else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}
		if ($(this).attr('id') == 'birth') {
			var idReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
			if (!idReg.test(id)) {
				$(this).next().text("생년월일 양식을 지켜주세요 (예 : 1991-12-02)");
				$(this).next().css("display", "inline-block");
			} else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}
	});

	$("#pwd").on("focusout", function() {
		if ($("#pwd").val() == '') {
			$(this).next().text("비밀번호를 확인해주세요.");
			$(this).next().css("display", "inline-block");
		} else {
			$(this).next().text("");
			$(this).next().css("display", "none");
		}
	});

	$("#pwd3").on("focusout", function() {
		if ($("#pwd2").val() != $("#pwd3").val()) {
			$(this).next().text("비밀번호가 일치하지 않습니다.");
			$(this).next().css("display", "inline-block");
		} else {
			$(this).next().text("");
			$(this).next().css("display", "none");
		}
	});

});

var checkDuplicateTestId = "1";
// 최종 테스트!
function check() {
	var id = $("#id").val();
	var pwd = $("#pwd").val();
	var pwd2 = $("#pwd2").val();
	var pwd3 = $("#pwd3").val();
	var name = $("#name").val();
	var birth = $("#birth").val();
	var tell = $("#tell").val();

	var idReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var nameReg = /^[가-힣]{2,6}$/g;
	var birthReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
	var phoneReg = /^[0]{1}[0-9]{2}[-]{1}[0-9]{3,4}[-]{1}[0-9]{4}$/g;

	if (!idReg.test(id)) {
		alert("아이디를 다시 입력해주세요.");
		return false;
	}
	if (!nameReg.test(name)) {
		alert("이름을 확인주세요");
		return false;
	}
	if (!birthReg.test(birth)) {
		alert("생년월일을 확인해주세요.");
		return false;
	}
	if (!emailReg.test(email)) {
		alert("이메일을 확인해주세요.");
		return false;
	}
	if (!phoneReg.test(email)) {
		alert("전화번호를 확인해주세요.");
		return false;
	}
	if (pwd == ''){
		alert("비밀번호를 입력해주세요");
	}
	if (pwd2 != '' && pwd2 != pwd3) {
		alert("비밀번호를 확인해주세요.");
		return false;
	}
}

//$('#member-modify-ok').on('click', function(e) {
//e.preventDefault();
//$.ajax({
//	url : '/member/modify.do',
//	type : 'PUT',
//	dataType : 'json',
//	data : data,
//	contentType : 'application/json;charset=UTF-8',
//	mimeType : 'application/json',
//	success : function(response) {
//		$('#myModal1').modal('hide');
//		$(location).attr('href', '/common/main.page');
//	},
//	error : function(xhr, status, message) {
//		alert("status: " + status + "error : " + message);
//	}
//});
//});