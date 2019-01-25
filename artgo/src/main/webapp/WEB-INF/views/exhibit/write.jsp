<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">

<div class="container">

	<div class="row col-lg-12">
		<div class="col-lg-8">
			<h3>전시회 등록</h3>
		</div>
		<form action="/admin/exhibit/write.do" method="post" onsubmit="return check();" id="exWriteForm" enctype="multipart/form-data">
		
			<div class="col-lg-12 div-exhibit-text">
				<div class="col-lg-5 div-exhibit-text">
					<div class="img-pocket"></div>
					<p>상단에 이미지를 올려주세요.</p>
					<p class="p-normal">*권장크기 : 300*400</p>
					<input type="file" class="form-control" placeholder="파일" id="fileForm" name="picture">
				</div>
				
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="제목" name="title" id="title">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="장소" name="place" id="place">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control datepic" placeholder="시작일" name="startDate" id="startDate">
					</div>
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control datepic" placeholder="종료일" name="endDate" id="startDate">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="일반 가격" name="normalPrice" id="normalPrice">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="청소년 가격" name="teenPrice" id="teenPrice">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text address-div">
						<input type="text" class="form-control" placeholder="주소" name="address" id="address" readonly="readonly">
					</div>
					<div class="col-lg-6 div-exhibit-text address-div">
						<input type="text" class="form-control" placeholder="상세주소" id="detail-address">
					</div>
				</div>
			</div>
			
			<div class="col-lg-12 div-exhibit-text">
				<div class="col-lg-10 div-exhibit-text">
					<h5><strong>내용</strong></h5>
					<textarea name="content" id="summernote"></textarea>
				</div>
			</div>
			<div class="col-lg-10 exhibit-btn-zone">
				<button type="submit" class="btn btn-primary btn-red-mini">
					등록하기
				</button>
				<button type="reset" class="btn btn-primary btn-red-mini">
					취소하기
				</button>
			</div>
		</form>
	</div>
</div>

<span id="guide" style="color:#999;display:none"></span>
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script src="/resources/artgo/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/artgo/js/exhibit-write.js"></script>