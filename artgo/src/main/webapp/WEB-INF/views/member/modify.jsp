<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/artgo/css/member-main-common.css"
	rel="stylesheet">
<link href="/resources/artgo/css/member-main.css" rel="stylesheet">
<link href="/resources/artgo/css/member-modify.css" rel="stylesheet">

<div class="container">
	<form name="modify" class="member-join-form" action="/member/modify"
		id="modify-form" method="post" onsubmit="return check();">
		<div align="center" class="member-modify-div member-modify-div-center">
			<ul class="list-group member-join-ul">
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="text" class="form-control member-join-input-text"
							placeholder="아이디(이메일)" id="id" name="id"
							value="${userInfo.id}" readonly> <label
							class="hidden-label member-modify-label"></label>
					</div>
				</li>
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="password" class="form-control member-join-input-pwd"
							placeholder="변경할 비밀번호" id="pwd" name="pwd">
						<label class="hidden-label member-modify-label"></label>
					</div>
				</li>
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="password" class="form-control member-join-input-pwd"
							placeholder="변경할 비밀번호 확인" placeholder="비밀번호 확인" id="pwd2"> 
							<label class="hidden-label member-modify-label"></label>
					</div>
				</li>
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="text" class="form-control member-join-input-text"
							placeholder="이름" id="name" name="name" value="${userInfo.name}"> 
							<label class="hidden-label member-modify-label"></label>
					</div>
				</li>
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="text" class="form-control member-join-input-text"
							placeholder="생년월일" id="birth" name="birth" value="${userInfo.birth}"> 
						<label class="hidden-label member-modify-label"></label>
					</div>
				</li>
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center member-join-li">
					<div class="form-group member-modify-div">
						<input type="text" class="form-control member-join-input-text"
							placeholder="휴대폰" id="phone" name="phone"> 
							<label class="hidden-label member-modify-label"></label>
					</div>
				</li>
			</ul>
			<div class="member-modify-div" align="center">
				<button id="member-modify-ok" type="submit"
					class="btn btn-primary btn-sm member-join-btn-sub btn-red">수정</button>
			</div>
		</div>
	</form>
</div>

<script src="/resources/artgo/js/member-modify.js"></script>
