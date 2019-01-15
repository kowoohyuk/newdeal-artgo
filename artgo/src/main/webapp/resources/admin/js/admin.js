$(function(){
	$("#firstpage").click(function(){
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonForm").attr("method","get").attr("action","/admin/member/list.do").submit();
	});
	
	$(".mvpage").click(function(){
		$("#pg").val($(this).attr("move-page-no"));
		$("#commonForm").attr("method","get").attr("action","/admin/member/list.do").submit();
	});
	
	$("#btn-search").click(function(){
		$("#pg").val("1");
		$("#key").val($("#skey").val());
		$("#word").val($("#sword").val());
		$("#commonForm").attr("method","get").attr("action","/admin/member/list.do").submit();
	});
});