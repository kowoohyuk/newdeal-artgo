<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/public2.jsp" %>
<c:set var="root" value="${pageContext.request.contextPath}" />

    <style>
      * {
        box-sizing: border-box;
      }

      h1{
        font-family: 'Shrikhand', cursive;
        padding-top: 20px;
        margin-bottom: 30px;
        font-size: 60px;
      }
      body{
        font-size: 15px;

      }
      input[type=text],input[type=password], select, textarea, password {
        width: 100%;
        resize: vertical;
        border: none;
        font-size: 15px;
      }

      label {
        display: inline-block;
      }

      input[type=submit] {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
      }

      input[type=submit]:hover {
        background-color: #45a049;
      }

      .container {
        border-radius: 5px;
        background-color: #f2f2f2;

      }

      .col-25 {
        float: left;
        width: 25%;
        margin-top: 6px;
      }

      .col-75 {
        float: left;
        width: 75%;
        margin-top: 6px;
      }

      /* Clear floats after the columns */
      .row:after {
        content: "";
        display: table;
        clear: both;
      }
      .form-control{
        font-size: 10px;
      }

      .list-group {
        width: 50%;
      }

      .info{
        font-size: 8px;
        align: center;
        margin-bottom: 10px;
      }


      #padding{
        padding: 10px;
        width: 450px;

      }

      ul{
        padding-bottom: 20px;
      }

      button{
        width:450px;
        height: 60px;
      }

      div{
        margin-bottom: 50px;

      }
      label{
        margin-right: 50px;
      }
      #footer{
        margin-top: 100px;
        font-size:8px;
      }


      /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
      @media screen and (max-width: 600px) {
        .col-25, .col-75, input[type=submit] {
          width: 100%;
          margin-top: 0;
        }
      }
    </style>
 <script type="text/javascript">
	$(document).ready(function() {
		$("input:text").on("focusout", function(){
			var id = $(this).val();
			if($(this).attr('id') == 'id'){
				var idReg = /^[A-za-z0-9]{4,12}$/g;
				if(!idReg.test(id)){
					$(this).next().text("아이디는 영문 또는 숫자로 네 글자 이상이어야 합니다.");
				}else {
					checkId("0");
				}
			}
			if($(this).attr('id') == 'name'){
				var idReg = /^[가-힣]{2,6}$/g;
				if(!idReg.test(id)){
					$(this).next().text("이름은 한글만 입력 가능합니다.");
				}else {
					$(this).next().text("");
				}
			}
			if($(this).attr('id') == 'birth'){
				var idReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
				if(!idReg.test(id)){
					$(this).next().text("생년월일 양식을 지켜주세요 \n ( 예시 : 1991-12-02 )");
				}else {
					$(this).next().text("");
				}
			}
			if($(this).attr('id') == 'email'){
				var idReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
				
				if(!idReg.test(id)){
					$(this).next().text("이메일 양식을 지켜주세요 \n ( 예시 : kowoohyuk91@gmail.com )");
				}else {
					checkEmail("0");
				}
			}

		});
		
		$("#pwd2").on("focusout", function(){
			if($(this).val() != $("#pwd").val()){
				$(this).next().text("비밀번호가 일치하지 않습니다.");
			}else {
				$(this).next().text("");
				pass = "1";
			}
		});
	    
	});
	
	var checkDuplicateTestEmail = "1";
	var checkDuplicateTestId = "1";
	//최종 테스트!
	function check() {
		var id = $("#id").val();
		var pwd = $("#pwd").val();
		var pwd2 = $("#pwd2").val();
		var name = $("#name").val();
		var email = $("#email").val();
		var birth = $("#birth").val();
	
		var idReg = /^[A-za-z0-9]{4,12}$/g;
		var nameReg = /^[가-힣]{2,6}$/g;
		var birthReg = /^[1-2]{1}[0-9]{3}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$/g;
		var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(!idReg.test(id)){
			alert("아이디를 다시 입력해주세요.");
			return false;
		}else {
			checkId("1");
			if(checkDuplicateTestId=="1"){
				alert("사용 중인 아이디 입니다.");
				return false;
			}
		}
		if(!nameReg.test(name)){
 			alert("이름을 확인주세요");
 			return false;
		}
		if(!birthReg.test(birth)){
 			alert("생년월일을 확인해주세요.");
 			return false;
		}
		if(!emailReg.test(email)){
 			alert("이메일을 확인해주세요.");
 			return false;
		}else {
			checkEmail("1");
			if(checkDuplicateTestEmail=="1"){
				alert("사용 중인 이메일 입니다.");
				return false;
			}
		}
		if(pwd =='' || pwd2 =='' || pwd != pwd2){
			alert("비밀번호를 확인해주세요.");
			return false;
		}
	}
		
	
</script>

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <%@ include file="/WEB-INF/views/common/headerSub.jsp"%>
   <form name="join" method="post" action="${root}/member/join" id="join-form" method="post" onsubmit="return check()">
    <div align="center">
    <ul class="list-group" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="아이디" id="id" name="id" maxlength="12" size="300px">
          <label class="hidden-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호" size="300px" id="pwd" name="pwd" maxlength="15">
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호 확인" size="300px" placeholder="비밀번호 확인" id="pwd2" maxlength="15">
       	  <label class="hidden-label"></label>
        </div>
      </li>
    </ul>



    <ul class="list-group" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="이름" id="name" name="name" maxlength="6" size="300px">
          <label class="hidden-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="이메일" size="300px" id="email" name="email" maxlength="60">
          <label class="hidden-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="휴대폰" id="phone" name="phone" size="300px" >
        </div>
      </li>
    </ul>
    </div>
</form>
  	<div class="info" align="center">* 만 14세 이상 회원만 가입할 수 있습니다.</div>

  	<div align="center">
  		<button type="submit" class="btn btn-primary btn-sm">회원가입하기</button>
  	</div>
  </body>
</html>
