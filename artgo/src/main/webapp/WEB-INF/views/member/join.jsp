<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-join.css" rel="stylesheet">
   <form name="join" class="member-join-form" method="post" action="/member/join.do" id="join-form" onsubmit="return check();">
    <div align="center" class="member-join-div">
    <ul class="list-group member-join-ul" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="아이디(이메일)" id="id" name="id" maxlength="50" >
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="password" class="form-control member-join-input-pwd" placeholder="비밀번호"  id="pwd" name="pwd" maxlength="15">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="password" class="form-control member-join-input-pwd" placeholder="비밀번호 확인"  placeholder="비밀번호 확인" id="pwd2" maxlength="15">
       	  <label class="hidden-label member-join-label"></label>
        </div>
      </li>
    </ul>
    <ul class="list-group member-join-ul" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="이름" id="name" name="name" maxlength="6">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="생년월일"  id="birth" name="birth" maxlength="60">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="휴대폰" id="phone" name="phone">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
    </ul>
    </div>
  	<div class="member-join-div" align="center">
  		<button type="submit" class="btn btn-primary btn-sm member-join-btn-sub btn-red">회원가입하기</button>
  	</div>
</form>


<script src="/resources/artgo/js/member-join.js"></script>
