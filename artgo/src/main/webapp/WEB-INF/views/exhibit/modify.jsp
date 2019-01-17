<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">
<div class="container">
	<div class="row col-lg-12">
		<div class="col-lg-8">
			<h3>전시회 수정</h3>
		</div>
		<div class="col-lg-12 div-exhibit-text">
			<form class="">
				<div class="col-lg-5 div-exhibit-text">
					<img alt="" src="/resources/artgo/img/test/test2.jpg" id="imgPocket">
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="제목">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="장소">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="시작일">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="종료일">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="일반 가격">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="청소년 가격">
					</div>
				</div>
				<div class="col-lg-10">
					<div class="col-lg-6 div-exhibit-text address-div">
						<input type="text" class="form-control" placeholder="주소">
					</div>
					<div class="col-lg-6 div-exhibit-text address-div">
						<input type="text" class="form-control" placeholder="상세주소">
					</div>
				</div>
				<div class="col-lg-10 div-exhibit-text">
					<h5><strong>내용</strong></h5>
					<textarea name="content" id="summernote" value=""></textarea>
				</div>
			</form>
			<div class="col-lg-10 exhibit-btn-zone">
				<button type="button" data-toggle="modal"
					data-target="#alertModal"
					class="btn btn-primary btn-red-mini">
					등록하기
				</button>
				<button type="reset" data-toggle="modal"
					data-target="#alertModal"
					class="btn btn-primary btn-red-mini">
					취소하기
				</button>
			</div>
		</div>
	</div>
</div>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script src="/resources/artgo/js/exhibit.js"></script>
