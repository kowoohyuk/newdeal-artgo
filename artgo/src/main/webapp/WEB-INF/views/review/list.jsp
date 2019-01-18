<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="reviewview">
	
</div>

</body>
<script type="text/javascript">
function makeList(reviews) {
	var output = '';
	var rlist = reviews.reviewlist;
	var len = rlist.length;
	$.ajax({
		url : '/review/write.do',
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			for(var i=0; i<len; i++){
				output += '<div>';
				output += '	<div>' + rlist[i].comment + '</div>';
				output += '	<div>' + rlist[i].score + '</div>';
				output += '</div>';
			}
		}
	});
}
</script>
</html>