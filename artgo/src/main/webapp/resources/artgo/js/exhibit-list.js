$(function(){
	$("#searchBtn").click(function() {
		searchEx();
	});
	
	$("#sword").keyup(function(e){
		if(e.keyCode == 13) {
			searchEx();
		}
	});
	
	$("#firstpage").click(function() {
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonForm").attr("method", "get").attr(
				"action", "/exhibit/list.do").submit();
	});

	$(".mvpage").click(function() {
		$("#pg").val($(this).attr("move-page-no"));
		$("#commonForm").attr("method", "get").attr(
				"action", "/exhibit/list.do").submit();
	});
});
function searchEx(){
	$("#pg").val("1");
	$("#key").val($("#skey").val());
	$("#word").val($("#sword").val());
	$("#commonForm").attr("method", "get").attr("action", "/exhibit/list.do").submit();
}
