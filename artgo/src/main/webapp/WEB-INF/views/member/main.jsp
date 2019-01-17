<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/resources/artgo/css/member-main.css" rel="stylesheet">
<link href="/resources/artgo/css/member-main-common.css" rel="stylesheet">
<link href="/resources/base/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/artgo/css/ticket-list.css"
	type="text/css">

<div class="container member-main-div-container">
	<!-- contents -->
	<div id="conts" class="clear_g">
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal1">내 정보 수정</button>
		<button type="button" class="btn btn-info btn-lg" id="delBtn"  data-toggle="modal"
			data-target="#myModal2">탈퇴</button>
		<!-- 최근 예매/취소 -->
		<!-- 최근 예매/취소 -->
		<h2 class="tit_sub_float member-main-title">최근 예매/취소</h2>
		<div class="wrap_person">
			<div class="ctr">
				<a href="/myticket/rsrvList.htm" id="more" class="ico_more">더보기</a>
			</div>

			<div class="row">
				<div class="col-sm-2 ticket-list-header">결제일자</div>
				<div class="col-sm-5 ticket-list-header">상품명</div>
				<div class="col-sm-3 ticket-list-header">금액</div>
				<div class="col-sm-2 ticket-list-header">상태</div>
			</div>
			<div class="row">
				<button class="ticket-list-accordion">
					<div class="col-sm-2">2019-01-13</div>
					<div class="col-sm-5">에이피사진전 빛이 남긴 감정</div>
					<div class="col-sm-3">13,000원</div>
					<div class="col-sm-2">취소</div>
				</button>


				<div class="ticket-list-panel">

					<div class="col-sm-6" id="member-main-panel-padding">
						<img id="member-main-panel-img" alt=""
							src="/resources/artgo/img/testImg.jpg">
					</div>
					<div class="col-sm-6" id="ticket-list-info">
						<div class="card mb-3">
							<h3 class="card-header member-main-info">티켓 상세 내역</h3>

							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">성인 : 0매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">0원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">청소년 :
										5매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">16,200원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">주소</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">서울특별시
										종로구 세종대로 175세종 문화회관</h6>
								</li>
								<button id="ticket-list-btn" type="button"
									class="btn btn-primary disabled">자세히 보기</button>
							</ul>

						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<button class="ticket-list-accordion">
					<div class="col-sm-2">2019-01-13</div>
					<div class="col-sm-5">에이피사진전 빛이 남긴 감정</div>
					<div class="col-sm-3">13,000원</div>
					<div class="col-sm-2">취소</div>
				</button>


				<div class="ticket-list-panel">

					<div class="col-sm-6" id="member-main-panel-padding">
						<img id="member-main-panel-img" alt=""
							src="/resources/artgo/img/testImg.jpg">
					</div>
					<div class="col-sm-6" id="ticket-list-info">
						<div class="card mb-3">
							<h3 class="card-header member-main-info">티켓 상세 내역</h3>

							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">성인 : 0매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">0원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">청소년 :
										5매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">16,200원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">주소</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">서울특별시
										종로구 세종대로 175세종 문화회관</h6>
								</li>
								<button id="ticket-list-btn" type="button"
									class="btn btn-primary disabled">자세히 보기</button>
							</ul>

						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<button class="ticket-list-accordion">
					<div class="col-sm-2">2019-01-13</div>
					<div class="col-sm-5">에이피사진전 빛이 남긴 감정</div>
					<div class="col-sm-3">13,000원</div>
					<div class="col-sm-2">취소</div>
				</button>


				<div class="ticket-list-panel">

					<div class="col-sm-6" id="member-main-panel-padding">
						<img id="member-main-panel-img" alt=""
							src="/resources/artgo/img/testImg.jpg">
					</div>
					<div class="col-sm-6" id="ticket-list-info">
						<div class="card mb-3">
							<h3 class="card-header member-main-info">티켓 상세 내역</h3>

							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">성인 : 0매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">0원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">청소년 :
										5매</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">16,200원</h6>
								</li>
								<li class="list-group-item">
									<h5 class="card-title" id="member-main-card-title">주소</h5>
									<h6 class="card-subtitle text-muted" id="member-main-card-cont">서울특별시
										종로구 세종대로 175세종 문화회관</h6>
								</li>
								<button id="ticket-list-btn" type="button"
									class="btn btn-primary disabled">자세히 보기</button>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title member-main-text">내 정보 수정</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<%@ include file="/WEB-INF/views/member/modify.jsp" %>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-mypage-btn" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>


<div id="myModal2" class="modal fade" role="dialog" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">


		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title member-main-text">ArtGo 회원 탈퇴</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<%@ include file="/WEB-INF/views/member/delete.jsp" %>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-delete-mini" data-dismiss="modal" id="member-delete-btn">탈퇴하기</button>
				<button type="button" class="btn btn-delete-mini" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!--

<div id="myModal2" role="dialog" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">

		<!-- Modal content
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title member-main-text">수정 완료</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<p>수정되었습니다.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
-->
<script src="/resources/artgo/js/member-main.js"></script>
<script src="/resources/artgo/js/member-delete.js"></script>
<script src="/resources/artgo/js/member-modify.js"></script>
<script src="/resources/base/js/ticket-list.js"></script>
