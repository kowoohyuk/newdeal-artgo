$(function(){
	getMainFavorList();
	getImExhibList();
	
	$('.a-ex-flag').on('mouseenter',function (){
		$('.newlist-title').css('color', 'black');
		$('.newlist-text').css('color', 'black');
	});
	$('.a-ex-flag').on('mouseout',function (){
		$('.newlist-title').css('color', '#444');
		$('.newlist-text').css('color', '#444');
	});
	
    $('.bxslider').bxSlider({
        auto: true, // 자동으로 애니메이션 시작
        speed: 500,  // 애니메이션 속도
        pause: 2200,  // 애니메이션 유지 시간 (1000은 1초)
        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
        autoControls: false, // 시작 및 중지버튼 보여짐
        pager: true, // 페이지 표시 보여짐
        captions: false, // 이미지 위에 텍스트를 넣을 수 있음
    });
    $('.bx-viewport').css('height', '330px');
});

function getMainFavorList(){
	$.ajax({
		url: '/member/favor.do',
		type: 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success: function(data){
			makeMainFavorList(data);
		}
	});
}

function makeMainFavorList(favors){
	let output = '';
	let flist = favors.favorlist;
	let len = flist.length;
	for(let i = 0; i< len; i++){
		output += '<a href="/exhibit/view.do?bno='+flist[i].bno+'" class="post-tag" style="color: black;">';
		output += flist[i].title+'&nbsp;'+ flist[i].place+'&nbsp;'+flist[i].startDate+'~'+flist[i].endDate+'</a>';
	}
	$('#mainFavorDiv').append(output);
}

function getImExhibList(){
	$.ajax({
		url: '/exhibit/Imlist.do',
		type: 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success: function(data){
			makeImExhibList(data);
		}
	});
}

function makeImExhibList(exhib){
	let output = '';
	let exlist = exhib.exhibitionlist;
	let len = exlist.length;
	for(let i = 0; i< len; i++){
		output += '<a href="/exhibit/view.do?bno='+exlist[i].bno+'" class="post-tag" style="color: black;">';
		output += exlist[i].title+'&nbsp;'+ exlist[i].place+'&nbsp;'+exlist[i].endDate+'까지</a>';
	}
	$('#mainExhibDiv').append(output);
}
