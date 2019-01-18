$(function() {
	$('#summernote').summernote({
		height : 300, // set editor height
		minHeight : null, // set minimum height of editor
		maxHeight : null, // set maximum height of editor
		disableDragAndDrop : true
		//focus : true
	// set focus to editable area after initializing summernote
	});
	

	$('.img-pocket').on("dragover", dragOver).on("dragleave", dragOver).on("drop", uploadFiles);
	
	function dragOver(e) {
		e.stopPropagation();
		e.preventDefault();
		if (e.type == "dragover") {
			$(e.target).css({
				"background-color" : "gray",
				"color" : "white",
				"opacity" : "0.5",
				"outline-offset" : "-20px"
			});
		} else {
			$(e.target).css({
				"background-color" : "white",
				"color" : "black",
				"outline-offset" : "-10px"
			});
		}
	}


	function uploadFiles(e) {
		e.stopPropagation();
		e.preventDefault();
		dragOver(e); // 1

		e.dataTransfer = e.originalEvent.dataTransfer; // 2
		var files = e.target.files || e.dataTransfer.files;

		if (files.length > 1) {
			alert('이미지는 한 장만 업로드 가능합니다.');
			$(e.target).css({
				"opacity" : "1.0",
			});
			return;
		}

		if (files[0].type.match(/image.*/)) {
		    $("input[type='file']").prop("files", e.originalEvent.dataTransfer.files).closest("form");
			$(e.target).css(
					{
						"background-image" : "url("
								+ window.URL.createObjectURL(files[0]) + ")",
						"outline" : "none",
						"opacity" : "1.0",
						"background-size" : "100% 100%"
					});
		} else {
			alert('이미지가 아닙니다.');
			return;
		}
	}
	
	
});

$(".btn-category").click(function(){
	var anchor = $(this).attr('anchor');
	$(".btn-category").removeClass('exhib-view-active');
	$(this).addClass('exhib-view-active');
	if(anchor=="1"){
		$("#review-zone").css("display", "none");
		$("#map-zone").css("display", "none");
		$("#detail-zone").fadeOut(function() {
			$("#detail-zone").css("display", "block");
		});		
	}else if(anchor=="2"){
		$("#detail-zone").css("display", "none");
		$("#map-zone").css("display", "none");
		$("#review-zone").fadeOut(function() {
			$("#review-zone").css("display", "block");
		});
	}else if(anchor=="3"){
		$("#review-zone").css("display", "none");
		$("#detail-zone").css("display", "none");
		$("#map-zone").fadeOut(function() {
			$("#map-zone").css("display", "block");
		});		
	}
});

$(document).on("dragover drop", function(e) {
    e.preventDefault();  // allow dropping and don't navigate to file on drop
}).on("drop", function(e) {

});

function check(){
	if($("#title").val() == ""){
		alert("제목을 입력하세요.");
		return false;
	}
	if($("#place").val() == ""){
		alert("장소를 입력하세요.");
		return false;
	}
	if($("#startDate").val() == ""){
		alert("시작일을 입력하세요.");
		return false;
	}
	if($("#endDate").val() == ""){
		alert("종료일을 입력하세요.");
		return false;
	}
	if($("#normalPrice").val() == ""){
		alert("일반 가격을 입력하세요.");
		return false;
	}
	if($("#teenPrice").val() == ""){
		alert("청소년 가격을 입력하세요.");
		return false;
	}
	if($("#address").val() == ""){
		alert("주소를 입력하세요.");
		return false;
	}else {
		$("#address").val($("#address").val()+" "+$("#detail-address").val());
	}
	if($("#summernote").val() == ""){
		alert("내용을 입력하세요.");
		return false;
	}
	
}