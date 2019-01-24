$(function(){
		
  if(location.search != ''){
	alert('회원탈퇴가 실패했습니다. \n 사유 : 비밀번호 불일치');
  }
  getPaymentList();
});

function getPaymentList(){
	let mpg = $("#m-pg").val();
	$.ajax({
		url : 'minpayment.do?pg='+mpg,
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			makePaymentList(data);
		}
	});
}

function makePaymentList(data){
	$('.payment-zone').empty();
	let navigator = data.navigator;
	let plist = data.paymentList;
	let len = plist.length;
	let output = '';
	output += '<ul class="member-mini-ul">';
	output += '<li class="li-title">전시회 명</li>';
	output += '<li class="li-title">결제 금액</li>';
	output += '<li class="li-title">결제일</li>';
	output += '</ul>';	
	
	for (let i = 0; i < len; i++) {
		output += '<ul class="member-mini-ul">';
		output += '<li><a href="/exhibit/view.do?bno='+plist[i].exno+'">' + plist[i].title + '</a></li>';
		output += '<li><a data-toggle="modal" href="#myModal" class="a-pay-detail" target-pno="'+plist[i].pno+'">' + plist[i].finalPay+ '원</a></li>';
		output += '<li>' + plist[i].date+ '</li>';
		output += '</ul>';
	}
	$('.payment-zone').append(output);
	
	$('.a-pay-detail').click(function(){
		let targetP = $(this).attr('target-pno');
		$.ajax({
			url : '/payment/detail.do/'+targetP,
			type : 'GET',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			success : function(data) {
				createDetailPay(data);
			}
		});		
	});

}

function createDetailPay(pay){
	
	$('#modal-body-zone').empty();
	let output = '';
	output+= '<div class="col-lg-6">';
	//output+= '<img class="img-ex" src=\'<spring:url value="/img/'+pay.folder+'/'+pay.saveName+'"/>\'>';
	output+= '</div>';
	output+= '<div class="col-lg-6">';
	output+= '<span id="Parse_Area">';
	output+= pay.title;
	output+= '</span>';
	output+= '<p>';
	output+= '가격 : '+ pay.finalPay + ', 성인 :' + pay.normalCount + '매 , 청소년 : '+pay.teenCount+'매, 결제일 : '+pay.date+', 장소 :'+pay.place;
	output+= '</p>';
	output+= '<a href="/exhibit/view.do?bno='+pay.bno+'">전시회 페이지 이동';
	output+= '</a>';
	output+= '</div>';
	$('#modal-body-zone').add(output);
	
}

$("#myModal").click(function(){
	$("#myModal").modal();
});

