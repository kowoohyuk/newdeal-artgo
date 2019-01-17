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
		<div class="col-lg-12 div-exhibit-text">
			<form class="">
				<div class="col-lg-4 div-exhibit-text">
					<img alt="" src="/resources/artgo/img/test/test2.jpg" id="imgPocket">
				</div>
				<div class="col-lg-6">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="제목">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="장소">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="시작일">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="종료일">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="일반 가격">
					</div>	
					<div class="col-lg-6 div-exhibit-text">
						<input type="text" class="form-control" placeholder="청소년 가격">
					</div>
				</div>
				<div class="col-lg-6 div-exhibit-text address-div">
					<input type="text" class="form-control" placeholder="주소">
				</div>
				<div class="col-lg-6 div-exhibit-text address-div">
					<input type="text" class="form-control" placeholder="상세주소">
				</div>
				<div class="col-lg-10 div-exhibit-text">
					<h5><strong>내용</strong></h5>
					<textarea rows="20" cols="140">썸머노트의 공간</textarea>
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
