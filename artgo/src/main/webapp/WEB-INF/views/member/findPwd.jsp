<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-login.css" rel="stylesheet">
<form name="finePwd" action="/member/finePwd"
	onsubmit="return check()">
	<div align="center">
		<ul class="list-group">
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center ">
				<div class="form-group member-login-div">
					<input type="text" class="form-control" placeholder="아이디" 
						name="id" id="id" >
					<label class="hidden-label member-login-label"></label>
				</div>
			</li>
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="form-group member-login-div">
					<input type="text" class="form-control" placeholder="휴대폰"
						name="phone" id="phone">
					 <label class="hidden-label member-login-label"></label>
				</div>
			</li>
		</ul>
		<div>
			<button type="submit" value="비밀번호찾기" class="btn btn-outline-primary btn-red-mini">비밀번호 찾기</button>
			<button type="button" value="뒤로 가기" class="btn btn-outline-primary btn-red-mini" id="btnBack">뒤로 가기</button>
		</div>
	</div>
</form>

<script src="/resources/artgo/js/member-findpwd.js"></script>