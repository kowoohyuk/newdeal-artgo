<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
body {
	padding-bottom: 40px;
	background-color: #ecf0f1;
}

.login-header {
	max-width: 400px;
	padding: 15px 29px 25px;
	margin: 0 auto;
	background-color: #2c3e50;
	color: white;
	text-align: center;
	-webkit-border-radius: 15px 15px 0px 0px;
	-moz-border-radius: 15px 15px 0px 0px;
	border-radius: 15px 15px 0px 0px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.login-footer {
	max-width: 400px;
	margin: 0 auto 20px;
	padding-left: 10px;
}

.form-signin {
	max-width: 400px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	-webkit-border-radius: 0px 0px 15px 15px;
	-moz-border-radius: 0px 0px 15px 15px;
	border-radius: 0px 0px 15px 15px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 15px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.form-btn {
	text-align: center;
	padding-top: 20px;
}

.info {
	text-align: center;
	font-size: 15px;
}

#pwBtn {
	width: 130px;
	height: 30px;
}
</style>
</head>
<body>
	<form name="finePwd" action="${root}/member/finePwd"
		onsubmit="return check()">
		<div align="center">
			<ul class="list-group" style="padding:50px;">
				<li id="padding"
					class="list-group-item d-flex justify-content-between align-items-center">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							id="id" name="id" size="300px">
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

	<script>
		function check() {
			if (document.finePwd.id.value == "") {
				alert("아이디를 입력하세요");
				document.finePwd.id.focus();
				return false;
			}
			return true;
		}
		$("#btnBack").click(function(){
			location.href = "loginPart.do";
		});
	</script>
</body>
</html>