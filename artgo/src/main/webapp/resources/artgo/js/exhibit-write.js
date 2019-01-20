$(function(){
	
	$('#address').click(function() {
		daumAddressAPI();
	});
	
	$('.img-pocket').on("dragover", dragOver).on("dragleave", dragOver).on(
			"drop", uploadFiles);
	
	$('#summernote').summernote({
		height : 300, // set editor height
		minHeight : null, // set minimum height of editor
		maxHeight : null, // set maximum height of editor
		disableDragAndDrop : true
		//focus : true
	// set focus to editable area after initializing summernote
	});
	
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

function daumAddressAPI() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("address").value = roadAddr;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("detail-address").value = extraRoadAddr;
            } else {
                document.getElementById("detail-address").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open({
        left: (window.screen.width / 2)-300,
        top: (window.screen.height / 2)-300,
    });
}