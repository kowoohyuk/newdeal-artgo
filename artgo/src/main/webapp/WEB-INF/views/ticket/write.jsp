<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/base/css/ionicons.min.css">

<style>
.dragAndDropDiv {
	border: 2px dashed #92AAB0;
	width: 300px;
	height: 300px;
	color: #92AAB0;
	text-align: center;
	vertical-align: middle;
	padding: 10px 0px 10px 10px;
	font-size: 130%;
	display: table-cell;
}

.progressBar {
	width: 200px;
	height: 22px;
	border: 1px solid #ddd;
	border-radius: 5px;
	overflow: hidden;
	display: inline-block;
	margin: 0px 10px 5px 5px;
	vertical-align: top;
}

.progressBar div {
	height: 100%;
	color: #fff;
	text-align: right;
	line-height: 22px;
	/* same as #progressBar height if we want text middle aligned */
	width: 0;
	background-color: #0ba1b5;
	border-radius: 3px;
}

.statusbar {
	border-top: 1px solid #A9CCD1;
	min-height: 25px;
	width: 99%;
	padding: 10px 10px 0px 10px;
	vertical-align: top;
}

.statusbar:nth-child(odd) {
	background: #EBEFF0;
}

.filename {
	display: inline-block;
	vertical-align: top;
	width: 250px;
}

.filesize {
	display: inline-block;
	vertical-align: top;
	color: #30693D;
	width: 100px;
	margin-left: 10px;
	margin-right: 5px;
}

.abort {
	background-color: #A8352F;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	display: inline-block;
	color: #fff;
	font-family: arial;
	font-size: 13px;
	font-weight: normal;
	padding: 4px 15px;
	cursor: pointer;
	vertical-align: top
}
</style>
<script>
	$(document).ready(function() {

		$('#summernote').summernote({
			minHeight : 400, // set minimum height of editor
			maxHeight : 400
		// set maximum height of editor
		});
	})
</script>
<script type="text/javascript">

	$(document).ready(
	  function() {
		var objDragAndDrop = $(".dragAndDropDiv"); // dragAndDropDiv 클래스의 값을 호출
		  $(document).on("dragenter", ".dragAndDropDiv", // document에서 on으로 호출 // 프로퍼티,키 // 유효한 값이 들어오면,
				  function(e) {
			  e.stopPropagation(); // 상위 객체로 이벤특사 버블링 되는 것을 중단
			  e.preventDefault(); // 기본 동작 취소
			  $(this).css('border', '2px solid #0B85A1'); // css의 border를 변경
			});
		  $(document).on("dragover", ".dragAndDropDiv",
			function(e) {
			  e.stopPropagation();
			  e.preventDefault();
			});
		  $(document).on("drop", ".dragAndDropDiv",
			function(e) {
			$(this).css('border', '2px dotted #0B85A1');
			  e.preventDefault();
			
			  var files = e.originalEvent.dataTransfer.files;

			  if (file.type === 'image/png' || file.type === 'image/jpeg' ||
						file.type === 'image/gif'  ||
						file.type === 'image/bmp'  ){
				var reader = new FileReder(),
				image = new Image();
				reader.readAsDataURL( file );
				reader.onload = function( _file ){
					$('imgPrime').el.src = _file.target.result;
					$('imgPrime').el.style.display = 'inline';
				} // END reader.onload()
			} // END test if file.type === image
		  
		  window.onload = function(){
				if( window.FileReader ){
					// Connect the DIV surrounding the file upload to HTML5 drag and drop calls
					dragdrop.init( $('userActions').el );
					//	Bind the input[type="file"] to the function runUpload()
					$('fileUpload').onChange(function(){ runUpload( this.files[0] ); });
				}else{
					// Report error message if FileReader is unavilable
					var p   = document.createElement( 'p' ),
							msg = document.createTextNode( 'Sorry, your browser does not support FileReader.' );
					p.className = 'error';
					p.appendChild( msg );
					$('userActions').el.innerHTML = '';
					$('userActions').el.appendChild( p );
				}
			};
	
   			  handleFileUpload(files, objDragAndDrop);
			});

			$(document).on('dragenter', function(e) {
				e.stopPropagation();
				e.preventDefault();
			});
			$(document).on('dragover', function(e) {
			    e.stopPropagation();
				e.preventDefault();
				objDragAndDrop.css('border', '2px dotted #0B85A1');
			});
			$(document).on('drop', function(e) {
				e.stopPropagation();
				e.preventDefault();
			});

         	function handleFileUpload(files, obj) {
		      for (var i = 0; i < files.length; i++) {
			  
		      var fd = new FormData();
			  fd.append('file', files[i]);

				var status = new createStatusbar(obj); //Using this we can set progress.
				status.setFileNameSize(
						files[i].name, files[i].size);
				sendFileToServer(fd, status);
			}
		}

		var rowCount = 0;
		function createStatusbar(obj) {

			rowCount++;
			var row = "odd";
			if (rowCount % 2 == 0)
				row = "even";
			this.statusbar = $("<div class='statusbar " + row + "'></div>");
			this.filename = $("<div class='filename'></div>")
					.appendTo(this.statusbar);
			this.size = $("<div class='filesize'></div>")
					.appendTo(this.statusbar);
			this.progressBar = $(
					"<div class='progressBar'><div></div></div>")
					.appendTo(this.statusbar);
			this.abort = $("<div class='abort'>중지</div>")
					.appendTo(this.statusbar);

			obj.after(this.statusbar);

			this.setFileNameSize = function(name, size) {
				var sizeStr = "";
				var sizeKB = size / 1024;
				if (parseInt(sizeKB) > 1024) {
					var sizeMB = sizeKB / 1024;
					sizeStr = sizeMB.toFixed(2) + " MB";
				} else {
					sizeStr = sizeKB.toFixed(2) + " KB";
				}

				this.filename.html(name);
				this.size.html(sizeStr);
			}

			this.setProgress = function(progress) {
				var progressBarWidth = progress
						* this.progressBar.width() / 100;
				this.progressBar.find('div').animate({
					width : progressBarWidth
				}, 10).html(progress + "% ");
				if (parseInt(progress) >= 100) {
					this.abort.hide();
				}
			}

			this.setAbort = function(jqxhr) {
				var sb = this.statusbar;
				this.abort.click(function() {
					jqxhr.abort();
					sb.hide();
				});
			}
		}

		function sendFileToServer(formData, status) {
			var uploadURL = "/fileUpload/post"; //Upload URL
			var extraData = {}; //Extra Data.
			var jqXHR =
				$.ajax({
				xhr : function() {
					var xhrobj = $.ajaxSettings.xhr();
					if (xhrobj.upload) {
						xhrobj.upload.addEventListener(
						'progress',
						function(event) {
							var percent = 0;
							var position = event.loaded || event.position;
							var total = event.total;
							if (event.lengthComputable) {
								percent = Math.ceil(position / total * 100);
							}
							//Set progress
							status
									.setProgress(percent);
						}, false);
					}
					return xhrobj;
				},
				url : uploadURL,
				type : "POST",
				contentType : false,
				processData : false,
				cache : false,
				data : formData,
				success : function(data) {
					status.setProgress(100);
					//$("#status1").append("File upload Done<br>");           
				}
			});
			status.setAbort(jqXHR);
		}
	});
</script>


</head>
<body>
	<div id="container">
		<div class="inner">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="margin-top-0 wow fadeIn"
						style="visibility: visible; animation-name: fadeIn;">전시 목록 등록</h2>
					<hr class="primary">
					<p>관리자님 글을 등록 해 주세요.</p>
				</div>
				<div class="col-lg-24 text-center">
					<form class="contact-form row">
						<div id="fileUpload" class="dragAndDropDiv col-md-24">여기에 파일을 올려 주세요.
						</div>
						<img id="imgPrime" src="" alt="upload image placeholder" />
						
						<div class="col-md-12">
						
						<div class="col-md-12">

							<label></label> <input type="text" class="form-control"
								placeholder="제목">
						</div>	
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="기간">
						</div>

						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="청소년, 성인 가격">
						</div>
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="장소">
						</div>

						</div>
						<div class="col-md-12">
							<label></label>
							<div id="summernote"></div>
							<script>
								$(document).ready(function() {

									$('#summernote').summernote({

										minHeight : 400, // set minimum height of editor
										maxHeight : 400
									// set maximum height of editor
									});
								})
							</script>
							<!--  <textarea class="form-control" rows="9" placeholder="Your message here.."></textarea> -->
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="button" data-toggle="modal"
								data-target="#alertModal"
								class="btn btn-primary btn-block btn-lg">
								등록하기 <i class="ion-android-arrow-forward"></i>
							</button>
							<button type="reset" data-toggle="modal"
								data-target="#alertModal"
								class="btn btn-primary btn-block btn-lg">
								취소하기 <i class="ion-android-arrow-forward"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>