$(function(){
  if(location.search != ''){
	alert('회원탈퇴가 실패했습니다. \n 사유 : 비밀번호 불일치');
  }
  getPaymentList();
});

function getPaymentList(){
	let mpg = $("#m-pg").val();
	$.ajax({
		url : 'payment.do?pg='+mpg,
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
		output += '<li>' + plist[i].title + '</li>';
		output += '<li>' + plist[i].finalPay+ '</li>';
		output += '<li>' + plist[i].date+ '</li>';
		output += '</ul>';
	}
	$('.payment-zone').append(output);
}
	
