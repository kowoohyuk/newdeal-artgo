$(function(){
	$('#member-delete-btn').on('click', function() {
		if(confirm("정말 탈퇴하시겠습니까?")){
			location.href = "/member/delete.do?pwd="+$("#pwd-delete").val();
		}
	});
});

