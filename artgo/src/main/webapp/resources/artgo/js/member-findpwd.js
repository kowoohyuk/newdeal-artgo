

$("#btnBack").click(function(){
	location.href = "/member/login.do";
});

$(function(){
	$("#btnFindPwd").click(function() {
		var id = $("#id");
		var tell = $("#tell");
		if (id.val() == "") {
			alert("아이디를 입력하세요");
			id.focus();
			return false;
		}
		if (tell.val() == "") {
			alert("휴대폰 번호를 입력하세요");
			tell.focus();
			return false;
		}
		$.ajax({
			url : '/member/findPwd.do',
			type : 'POST',
			dataType : 'json',
			data : {'id' : id.val(), 'tell' : tell.val()},
			success : function(data) {
				if(data.result == "fail"){
					alert("해당 정보의 회원이 존재하지 않습니다.");
				}else {
					alert("가입하신 이메일로 임시비밀번호를 보냈습니다.");
				}
			}
		});
	});
});