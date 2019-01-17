<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-login.css" rel="stylesheet">	
<div align="center">
	<ul class="list-group">
		<li id="padding"
			class="list-group-item d-flex justify-content-between align-items-center ">
			<div class="form-group member-login-div">
				<input type="text" class="form-control" placeholder="이름 "
					name="name" id="name">
				<label class="hidden-label member-login-label"></label>
			</div>
		</li>
		<li id="padding"
			class="list-group-item d-flex justify-content-between align-items-center">
			<div class="form-group member-login-div">
				<input type="text" class="form-control" placeholder="휴대전화 번호 (010-1234-5678)"
					name="tell" id="tell">
				<label class="hidden-label member-login-label"></label>
			</div>
		</li>
	</ul>
	<div>
		<button type="button" value="아이디찾기" class="btn btn-outline-primary btn-red btn-red-mini" id="btnFindId">아이디 찾기</button>
		<button type="button" value="비밀번호찾기" class="btn btn-outline-primary btn-red btn-red-mini" id="btnBack">뒤로 가기</button>
	</div>
</div>

<script src="/resources/artgo/js/member-findid.js"></script>