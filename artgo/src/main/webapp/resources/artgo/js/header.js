$(function(){
	//top = $("#header-top");
	let headId = $('#userId').val();
	let headName = $('#userName').val();
	let headRole = $('#userRole').val();
	let headType = $('#userType').val();
	
	let headerTop = $('#header-top').val();
	let topCon = "";
	if(headId != "") {
		if(headRole == "ROLE_ADMIN"){
			topCon += '<label class="header-member-label"> 관리자 접속 중</label>';
			topCon += '<a href="/admin/main.do" data-toggle="tooltip" data-placement="bottom" title="mypage"><span>관리 페이지</span></a>';
			topCon += '<a href="/member/logout.do" data-toggle="tooltip" data-placement="bottom" title="logout"><span>로그 아웃</span></a>';
			$('#header-top').append(topCon);
			return false;
		}
		if(headType=="kakao"){
			topCon += '<img src="/resources/artgo/img/kakao-login-icon.png" data-toggle="tooltip" title="카카오"></img>';
		}
			topCon += '<label class="header-member-label">'+headName+'</label>';
			topCon += '<label class="header-member-text">님 반갑습니다.</label>';
			topCon += '<a href="/member/main.do" data-toggle="tooltip" data-placement="bottom" title="mypage"><span>마이 페이지</span></a>';
			topCon += '<a href="/member/logout.do" data-toggle="tooltip" data-placement="bottom" title="logout"><span>로그 아웃</span></a>';
			$('#header-top').append(topCon);
	}else {
		topCon += '<a href="/member/login.do" data-toggle="tooltip" data-placement="bottom"	title="login"><span>로그인</span></a>';
		topCon += '<a href="/member/join.do" data-toggle="tooltip" data-placement="bottom" title="join"><span>회원가입</span></a>';
		$('#header-top').append(topCon);		
	}

	$('#favorBtn').on('click', function(){
		$('.favorite-modal').css('top', $(this).offset().top+30);
		$('.favorite-modal').css('left', $(this).offset().left);
		
		getFavorList();
	});
	
	$(document).on('click', '.favorDeleteBtn', function() {
		let exno = $(this).val();
		$.ajax({
			url: '/member/favor.do/'+exno,
			type: 'DELETE',
			dataType: 'json',
			success: function(data){
				getFavorList();
			}
		});			
	});
	
	$(document).on('click', function(){
		$('.favorite-modal').css("display", "none");
	});
});

function getFavorList(){
	$.ajax({
		url: '/member/favor.do',
		type: 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success: function(data){
			makeFavorList(data);
		}
	});
}

function makeFavorList(favors){
	$('.favorite-modal').empty();
	let output = '';
	let flist = favors.favorlist;
	let len = flist.length;
	output += '<ul class="favor-mini-ul-head">';
	output += '<li>전시회명</li>';
	output += '<li>장소</li>';
	output += '<li>시작일</li>';
	output += '<li>종료일</li>';
	output += '</ul>';
	for(let i = 0; i< len; i++){
		output += '<ul class="favor-mini-ul">';
		output += '<li><a class="a-favor" href="/exhibit/view.do?bno='+flist[i].bno+'">'+flist[i].title+'</a></li>';
		output += '<li>'+flist[i].place+'</li>';
		output += '<li>'+flist[i].startDate+'</li>';
		output += '<li>'+flist[i].endDate+'</li>';
		output += '<li><button class="favorDeleteBtn" value="'+flist[i].exno+'">X</button></li>';
		output += '</ul>';
	}
	$('.favorite-modal').append(output);
	$('.favorite-modal').slideDown();
}