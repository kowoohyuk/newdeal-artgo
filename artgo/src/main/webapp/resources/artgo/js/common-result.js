$(function(){
	var type = $("#type").val();
	var id = $("#id").val();
	var buttonA = "";
	var buttonB = "";
	var locationA = "";
	var locationB = "";
	var title = "";
	var content = "";
	
	switch (type) {
	case '1':
		buttonA += "로그인";
		buttonB += "메인";
		locationA += "/member/login.do";
		locationB += "/main.do";
		title += "회원가입 성공";
		content += "회원가입에 성공하였습니다!<br> 인증 이메일을 확인하시면 <br> 로그인이 가능합니다.";
		break;
	case '2':
		buttonA += "회원 가입";
		buttonB += "메인";
		locationA += "/member/join.do";
		locationB += "/main.do";
		title += "회원가입 실패";
		content += "서버의 이상으로 회원가입에 실패하였습니다.<br> 잠시 후 다시 시도해주세요.";
		break;
	case '3':
		title += "이메일 인증 완료";
		content += "이메일 인증에 성공하였습니다!<br> 이제 사이트 이용이 가능합니다.";
		hideBtn();
		break;
	case '4':
		buttonA += "재발송";
		buttonB += "메인";
		locationA += "/member/resend?id="+id;
		locationB += "/main.do";
		title += "이메일 미인증";
		content += "미인증 회원입니다.<br>인증 이메일을 확인해주세요.<br>";
		content += "메일이 확인되지 않는 경우 <br>재발송 또는 스팸메일함을 확인해주세요.<br>";
		content += "이메일이 재발송된 경우<br>기존의 인증 메일은 만료됩니다.<br>";
		break;
	case '5':
		title += "이메일 인증 실패";
		content += "이미 인증이 완료된 상태입니다.";
		hideBtn();
		buttonA += "로그인";
		buttonB += "메인";
		locationA += "/member/login.do";
		locationB += "/main.do";
		break;
	case '6':
		buttonA += "재발송";
		buttonB += "메인";
		locationA += "/member/resend?id="+id;
		locationB += "/main.do";
		title += "이메일 재발송";
		content += "이메일을 재발송 하였습니다.<br>";
		content += "메일이 확인되지 않는 경우 <br>재발송 또는 스팸메일함을 확인해주세요.<br>";
		break;
	case '7':
		title += "회원 탈퇴";
		content += "회원탈퇴가 왼료되었습니다.";
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

