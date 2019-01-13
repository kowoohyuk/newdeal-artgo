<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-login.css" rel="stylesheet">	
<form name="findId" action="/member/fineIdPart.do"
	onsubmit="return check()">
	<div align="center">
		<ul class="list-group" style="padding:50px;">
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center ">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름" 
						name="name" size="300px">
				</div>
			</li>
			<li id="padding"
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="form-group">
					<input type="password" class="form-control" placeholder="휴대폰"
						name="phone" size="300px">
				</div>
			</li>
		</ul>
		<div>
			<button type="submit" value="아이디찾기" class="btn btn-outline-primary">아이디 찾기</button>
		</div>
		<div>
			<button type="button" value="비밀번호찾기" class="btn btn-outline-primary" id="btnBack">뒤로 가기</button>
		</div>
	</div>
</form>

<script src="/resources/artgo/js/member-findid.js"></script>