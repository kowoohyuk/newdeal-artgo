$(document).ready(function() {
	$("input:text").on("focusout", function(){
		var id = $(this).val();
		if($(this).attr('id') == 'id'){
			var idReg = /^[A-za-z0-9]{4,12}$/g;
			if(!idReg.test(id)){
				$(this).next().text("아이디는 영문 또는 숫자로 네 글자 이상이어야 합니다.");
				$(this).next().css("display", "inline-block");
			}else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}
		if($(this).attr('id') == 'name'){
			var idReg = /^[가-힣]{2,6}$/g;
			if(!idReg.test(id)){
				$(this).next().text("이름은 한글만 입력 가능합니다.");
				$(this).next().css("display", "inline-block");
			}else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}
		if($(this).attr('id') == 'birth'){
			var idReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
			if(!idReg.test(id)){
				$(this).next().text("생년월일 양식을 지켜주세요 \n ( 예시 : 1991-12-02 )");
				$(this).next().css("display", "inline-block");
			}else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}
		if($(this).attr('id') == 'email'){
			var idReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
			if(!idReg.test(id)){
				$(this).next().text("이메일 양식을 지켜주세요 \n ( 예시 : kowoohyuk91@gmail.com )");
				$(this).next().css("display", "inline-block");
			}else {
				$(this).next().text("");
				$(this).next().css("display", "none");
			}
		}

	});
	
	
	$("#pwd").on("focusout", function(){
		if($(this).val().length < 6){
			$(this).next().text("비밀번호는 6자리 이상이어야 합니다.");
			$(this).next().css("display", "inline-block");
		}else {
			$(this).next().text("");
			$(this).next().css("display", "none");
		}
	});
	
	$("#pwd2").on("focusout", function(){
		if($(this).val() != $("#pwd").val()){
			$(this).next().text("비밀번호가 일치하지 않습니다.");
			$(this).next().css("display", "inline-block");
		}else {
			$(this).next().text("");
			$(this).next().css("display", "none");
		}
	});
    
});

var checkDuplicateTestEmail = "1";
var checkDuplicateTestId = "1";
//최종 테스트!
function check() {
	var id = $("#id").val();
	var pwd = $("#pwd").val();
	var pwd2 = $("#pwd2").val();
	var name = $("#name").val();
	var email = $("#email").val();
	var birth = $("#birth").val();

	var idReg = /^[A-za-z0-9]{4,12}$/g;
	var nameReg = /^[가-힣]{2,6}$/g;
	var birthReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
	var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(!idReg.test(id)){
		alert("아이디를 다시 입력해주세요.");
		return false;
	}else {
		checkId("1");
		if(checkDuplicateTestId=="1"){
			alert("사용 중인 아이디 입니다.");
			return false;
		}
	}
	if(!nameReg.test(name)){
		alert("이름을 확인주세요");
		return false;
	}
	if(!birthReg.test(birth)){
		alert("생년월일을 확인해주세요.");
		return false;
	}
	if(!emailReg.test(email)){
		alert("이메일을 확인해주세요.");
		return false;
	}else {
		checkEmail("1");
		if(checkDuplicateTestEmail=="1"){
			alert("사용 중인 이메일 입니다.");
			return false;
		}
	}
	if(pwd =='' || pwd2 =='' || pwd != pwd2){
		alert("비밀번호를 확인해주세요.");
		return false;
	}
}