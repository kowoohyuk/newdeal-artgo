$(function() {

	getList();
	removeStar();
	checkFavor();

	$(".btn-ex-list").click(function() {
		history.go(-1);
	});

	$("#detail-zone").css("display", "block");

	$('#reviewBtn').click(function() {
		let exno = $("#exno").val();
		let comment = $('#reviewComment').val();
		let score = $('#starRev').val();
		removeStar();
		$('#reviewComment').val('');
		let parameter = JSON.stringify({
			'exno' : exno,
			'comment' : comment,
			'score' : score
		});
		if (comment.trim().length != 0) {
			$.ajax({
				url : 'review.do',
				type : 'POST',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				data : parameter,
				success : function(data) {
					getList();
				}
			});
		}
	});

	function removeStar() {
		$("#starRev").children('span').removeClass('on');
	}

	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		$("#starRev").val($(this).attr('star-value'));

		return false;
	});

	$("#map-zone").css("display", "none");
});

function makeList(reviews) {
	$("#review-content-zone").empty();
	let output = '';
	let rlist = reviews.reviewlist;
	let len = rlist.length;

	let s1 = '★☆☆☆☆';
	let s2 = '★★☆☆☆';
	let s3 = '★★★☆☆';
	let s4 = '★★★★☆';
	let s5 = '★★★★★';

	output += '<ul class="exhib-mini-ul">';
	output += '<li class="head-li-1">작성자</li>';
	output += '<li class="head-li-2">평점</li>';
	output += '<li class="head-li-3">내용</li>';
	output += '<li class="head-li-4">작성일</li>';
	output += '</ul>';
	for (let i = 0; i < len; i++) {
		let score = rlist[i].score;
		let star = '';
		if (score == 1) {
			star += s1;
		} else if (score == 2) {
			star += s2;
		} else if (score == 3) {
			star += s3;
		} else if (score == 4) {
			star += s4;
		} else if (score == 5) {
			star += s5;
		}
		output += '<ul class="exhib-mini-ul">';
		output += '<li class="text-li-1">' + rlist[i].name + '</li>';
		output += '<li class="text-li-2 star-text">' + star + '</li>';
		output += '<li class="text-li-3">' + rlist[i].comment + '</li>';
		output += '<li class="text-li-4">' + rlist[i].date + '</li>';
		output += '</ul>';
	}

	$("#review-content-zone").append(output);

	
	$('.btn-ex-favor').click(function(){
		let exno = $('#exno').val();
		let parameter = JSON.stringify({'exno' : exno});
		
		if($(this).hasClass('active-favor')==false){
			$.ajax({
				url: '/member/favor.do',
				type: 'POST',
				dataType: 'json',
				contentType : 'application/json;charset=UTF-8',
				data : parameter,
				success: function(data){
					if(data.result == 'success'){
						$('.btn-ex-favor').text('즐겨찾기 삭제');
						$('.btn-ex-favor').addClass('active-favor');
					}
				}
			});
		}else {
			$.ajax({
				url: '/member/favor.do/'+exno,
				type: 'DELETE',
				dataType: 'json',
				success: function(data){
					if(data.result == 'success'){
						$('.btn-ex-favor').text('즐겨찾기 추가');
						$('.btn-ex-favor').removeClass('active-favor');
					}
				}
			});			
		}
	});
}

$(".btn-category").click(function() {
	let anchor = $(this).attr('anchor');
	$(".btn-category").removeClass('exhib-view-active');
	$(this).addClass('exhib-view-active');
	if (anchor == "1") {
		$("#review-zone").css("display", "none");
		$("#map-zone").css("display", "none");
		$("#detail-zone").fadeOut(function() {
			$("#detail-zone").css("display", "block");
		});
	} else if (anchor == "2") {
		$("#detail-zone").css("display", "none");
		$("#map-zone").css("display", "none");
		$("#review-zone").fadeOut(function() {
			$("#review-zone").css("display", "block");
		});
	} else if (anchor == "3") {
		$("#review-zone").css("display", "none");
		$("#detail-zone").css("display", "none");
		$("#map-zone").fadeOut(function() {
			$("#map-zone").css("display", "block");
		});
	}
});

function checkFavor(){
	let exno = $('#exno').val();
	$.ajax({
		url : '/member/review/check.do/'+exno,
		type : 'GET',
		dataType : 'json',
		contentType : 'application/json;charset=UTF-8',
		success : function(data) {
			if(data.result == 'success'){
				$('.btn-ex-favor').text('즐겨찾기 삭제');
				$('.btn-ex-favor').addClass('active-favor');
			}
		}
	});	
}

function getList() {
	let exno = $("#exno").val();
	$.ajax({
		url : 'review.do/' + exno,
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			makeList(data);
		}
	});
}

let mapContainer = document.getElementById('daum-map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
let map = new daum.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
let geocoder = new daum.maps.services.Geocoder();

let space = /\s/g;
let place = $("#place").val();
let address = $("#address").val();
let detailAddr = address + space + place
//주소로 좌표를 검색합니다
geocoder.addressSearch(detailAddr, function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === daum.maps.services.Status.OK) {

    let coords = new daum.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    let marker = new daum.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    let infowindow = new daum.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">'+place+'</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    

