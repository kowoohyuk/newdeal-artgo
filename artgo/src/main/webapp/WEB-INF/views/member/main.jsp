<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/resources/artgo/css/member-main.css" rel="stylesheet">
<link href="/resources/base/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/artgo/css/ticket-list.css"
	type="text/css">

<div class="container member-main-div-container">
	<div class="row">
		<div class="col-lg-5 div-mypage">
				<p>접속 아이디 ${userInfo.id}</p> <br>
				<p>생일 </p>
				<c:choose>
					<c:when test="${userInfo.birth == ''">
						<p>생일을 등록하세요</p>  <br>
					</c:when>
					<c:otherwise>
					
					 	<p>${userInfo.birth} </p>  <br>
					</c:otherwise>
				
				</c:choose>
				<p>전화번호 ${userInfo.tell}</p> <br>
			<button type="button" class="btn btn-red-mini btn-mypage" data-toggle="modal"
				data-target="#myModal1">내 정보 수정</button>
			<button type="button" class="btn btn-red-mini btn-mypage" id="delBtn"  data-toggle="modal"
				data-target="#myModal2">탈퇴 하기</button>
		</div>
		<div class="col-lg-5 div-mypage">
		
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-5 div-mypage">
		
		</div>
		<div class="col-lg-5 div-mypage">
		
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

<script src="/resources/base/js/jquery/jquery-2.2.4.min.js"></script>
<script src="/resources/artgo/js/member-main.js"></script>
<script src="/resources/artgo/js/member-delete.js"></script>
<script src="/resources/artgo/js/member-modify.js"></script>
<script src="/resources/base/js/ticket-list.js"></script>
