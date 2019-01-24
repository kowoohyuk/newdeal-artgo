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
		output += '<li><a data-toggle="modal" href="#myModal" >' + plist[i].finalPay+ '원</a></li>';
		output += '<li>' + plist[i].date+ '</li>';
		output += '</ul>';
	}
	$('.payment-zone').append(output);

}

$("#myModal").click(function(){
	$("#myModal").modal();
});


$(document).ready(function(){
	
    $.ajax({
        type : "GET", //전송방식을 지정한다 (POST,GET)
        url : "main.do/" + bno,//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("실패");
        },
        success : function(Parse_data){
            $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
            alert("통신 데이터 값 : " + Parse_data);
        }
         
    });
});

		



			
	
