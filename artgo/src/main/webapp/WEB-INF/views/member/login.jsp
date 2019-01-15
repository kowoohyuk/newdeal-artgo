<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-login.css" rel="stylesheet">
<form action="/member/login.do" method="post">
	<div align="center">
		<ul class="list-group">
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="form-group member-login-div">
					<input type="text" class="form-control" placeholder="아이디"
						id="id" name="id" >
					<label class="hidden-label member-login-label"></label>
				</div>
			</li>
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="form-group member-login-div">
					<input type="password" class="form-control"
						id="pwd" name="pwd" placeholder="비밀번호" >
					<label class="hidden-label member-login-label"></label>
				</div>
			</li>
		</ul>

		<div>
			<div class="form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox" value="">아이디 저장
				</label> <a href="/member/findId.do">아이디 찾기</a> | <a
					href="/member/findPwd.do">비밀번호 찾기</a> | <a href="/member/join.do">회원가입</a>
			</div>
		</div>

		<div>
			<button type="submit" class="btn btn-outline-primary btn-red-mini">로그인</button>
			<button type="button" class="btn btn-outline-primary btn-kakao bnt-red-mini">
				<a id="custom-login-btn" href="javascript:loginWithKakao()">
					<img src="/resources/artgo/img/kakao_account_login_btn_large_narrow.png" id="kakao-login"/>
				</a>
			</button>
		</div>
		<!-- 로그아웃 <a href="http://developers.kakao.com/logout"></a> --> 
	</div>
</form>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/resources/artgo/js/member-login.js"></script>


