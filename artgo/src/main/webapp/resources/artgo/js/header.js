$(function(){
	//top = $("#header-top");
	var headId = $("#userId").val();
	var headName = $("#userName").val();
	var headRole = $("#userRole").val();
	var headType = $("#userType").val();
	
	var headerTop = $("#header-top").val();
	var topCon = "";
	if(headId != "") {
		if(headRole == "ROLE_ADMIN"){
			topCon += '<label class="header-member-label"> 관리자 접속 중</label>';
			topCon += '<a href="/admin/main.do" data-toggle="tooltip" data-placement="bottom" title="mypage"><span>관리 페이지</span></a>';
			topCon += '<a href="/member/logout.do" data-toggle="tooltip" data-placement="bottom" title="logout"><span>로그 아웃</span></a>';
			$("#header-top").append(topCon);
			return false;
		}else if(headType="kakao"){
			topCon += '<img src="/resources/artgo/img/kakao-login-icon.png" data-toggle="tooltip" title="카카오"></img>';
		}
			topCon += '<label class="header-member-label">'+headName+'</label>';
			topCon += '<label class="header-member-text">님 반갑습니다.</label>';
			topCon += '<a href="/member/main.do" data-toggle="tooltip" data-placement="bottom" title="mypage"><span>마이 페이지</span></a>';
			topCon += '<a href="/member/logout.do" data-toggle="tooltip" data-placement="bottom" title="logout"><span>로그 아웃</span></a>';
			$("#header-top").append(topCon);
	}else {
		topCon += '<a href="/member/login.do" data-toggle="tooltip" data-placement="bottom"	title="login"><span>로그인</span></a>';
		topCon += '<a href="/member/join.do" data-toggle="tooltip" data-placement="bottom" title="join"><span>회원가입</span></a>';
		$("#header-top").append(topCon);		
	}

	
});