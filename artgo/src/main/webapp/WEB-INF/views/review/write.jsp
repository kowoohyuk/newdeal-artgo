<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.artgo-review-textarea{
	resize: none;
	rows: 3;
	cols: 200;
}
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

</style>
<title></title>
</head>
<body>

	<textarea id="comment" class="artgo-review-textarea" placeholder="댓글 입력.."></textarea>
	<!-- <input type="text" id="score"> -->
	
	<div class="starRev" id="starRev">
	  <span class="starR1 on" star-value="0.5">별1_왼쪽</span>
	  <span class="starR2" star-value="1">별1_오른쪽</span>
	  <span class="starR1" star-value="1.5">별2_왼쪽</span>
	  <span class="starR2" star-value="2">별2_오른쪽</span>
	  <span class="starR1" star-value="2.5">별3_왼쪽</span>
	  <span class="starR2" star-value="3">별3_오른쪽</span>
	  <span class="starR1" star-value="3.5">별4_왼쪽</span>
	  <span class="starR2" star-value="4">별4_오른쪽</span>
	  <span class="starR1" star-value="4.5">별5_왼쪽</span>
	  <span class="starR2" star-value="5">별5_오른쪽</span>
	</div>
	<input type="hidden" value="" id="comment">
	<input type="hidden" value="" id="starRev">

<input type="button" value="작성" id="reviewBtn">


<div id="commentList"></div>
	

<script type="text/javascript">
//댓글
$("#reviewBtn").click(function() {
	var comment = $("#comment").val("");
	var parameter = JSON.stringify({'comment' : comment, 'score' : score});
	if(comment.trim().length != 0) {
		$.ajax({
			url : 'review/list.do',
			type : 'POST',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : parameter,
			success : function(data) {
				getReviewList();
			
			}
		});
	}
});

function getReviewList() {
	$.ajax({
		url : 'review/list.do',
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			
			var output = '';
			var len = data.length;
			
			for(i=0; i<len; i++){
				output += '<div>';
				output += ' <div>' + data[i].comment + '</div>';
				output += ' <div>' + data[i].score + '</div>';
				output += '</div>';
			}	
			$("#commentList").append(output);
			
		}
	});
}

function removeStar(){
	$("#starRev").children('span').removeClass('on');
}


$('.starRev span').click(function(){
	  $(this).parent().removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  $("#starRev").val($(this).attr('star-value'));
	  
	  return false;
	});
	
</script>
</body>
</html>