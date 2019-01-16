$(function(){
	var type = $("#type").val();
	
	var buttonA = "";
	var buttonB = "";
	var locationA = "";
	var locationB = "";
	var title = "";
	var content = "";
	
	switch (type) {
	case '1':
		buttonA = "로그인";
		buttonB = "메인";
		locationA = "/member/login.do";
		locationB = "/main.do";
		title = "회원가입 성공";
		content = "회원가입에 성공하였습니다!<br> 인증 이메일을 확인해주세요.";
		break;
	case '2':
		buttonA = "뒤로 가기";
		buttonB = "메인";
		locationA = "/member/login.do";
		locationB = "/main.do";
		title = "회원가입 실패";
		content = "서버의 이상으로 회원가입에 실패하였습니다.<br> 잠시 후 다시 시도해주세요.";
		break;
	case '3':
		title = "이메일 인증 완료";
		content = "이메일 인증에 성공하였습니다!<br> 이제 사이트 이용이 가능합니다.";
		hideBtn();
		break;
	case '4':
		buttonA = "재발송";
		buttonB = "메인";
		locationA = "/재발송 경로 지정";
		locationB = "/main.do";
		title = "이메일 인증 실패";
		content = "이메일 인증에 실패하였습니다.<br>인증 이메일을 확인해주세요.<br>";
		content += "메일이 확인되지 않는 경우 <br>재발송 또는 스팸메일함을 확인해주세요."; 
		break;
	case '5':
		title = "회원 탈퇴";
		content = "회원탈퇴가 왼료되었습니다.";
		hideBtn();
		break;		
	default:
		break;
	}
	
	$("#btnA").val(buttonA);
	$("#btnB").val(buttonB);
	$(".result-title").text(title);
	$("#result-content").html(content);
	
	$("#btnA").on("click",function(){
		location.href = locationA;
	});
	$("#btnB").on("click",function(){
		location.href = locationB;
	});
	
	function hideBtn() {
		$("#btnA").css("display", "none");
		$("#btnB").css("display", "none");
		
		setTimeout(function() {
			location.href = "/main.do";
		}, 2000);
	}
});

