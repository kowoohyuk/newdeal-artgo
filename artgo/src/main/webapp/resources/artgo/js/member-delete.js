$(function(){
	$('#member-delete-btn').on('click', function() {
		if($("#pwd-delete").val() == ""){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(confirm("정말 탈퇴하시겠습니까?")){
			location.href = "/member/delete.do?pwd="+$("#pwd-delete").val();
		}
	});
});

