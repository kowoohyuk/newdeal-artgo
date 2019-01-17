

$("#btnBack").click(function(){
	location.href = "/member/login.do";
});

$(function(){
	$("#btnFindId").click(function() {
		
		var name = $("#name");
		var tell = $("#tell");
		if (name.val() == "") {
			alert("이름을 입력하세요");
			name.focus();
			return false;
		}
		if (tell.val() == "") {
			alert("휴대폰번호를 입력하세요");
			tell.focus();
			return false;
		}
		$.ajax({
			url : '/member/findId.do',
			type : 'POST',
			dataType : 'json',
			data : {'name' : name.val(), 'tell' : tell.val()},
			success : function(data) {
				if(data.result == "fail"){
					alert("해당 정보의 회원이 존재하지 않습니다.");
				}else {
					alert("가입하신 아이디는 "+data.id+"입니다.");
				}
			}
		});
	});
});