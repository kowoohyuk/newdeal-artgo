<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-join.css" rel="stylesheet">

   <form method="post" action="/member/join" id="join-form" method="post" onsubmit="return check()">
    <div align="center" class="member-join-div">
    <ul class="list-group member-join-ul" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="아이디" id="id" name="id" maxlength="12" value="" size="300px">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="password" class="form-control member-join-input-pwd" id="exampleInputPassword1" placeholder="비밀번호"  id="pwd" name="pwd" value="" maxlength="15" size="300px">
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="password" class="form-control member-join-input-pwd" id="exampleInputPassword1" placeholder="비밀번호 확인"  placeholder="비밀번호 확인" value="" id="pwd2" size="300px" maxlength="15">
       	  <label class="hidden-label member-join-label"></label>
        </div>
      </li>
    </ul>

    <ul class="list-group member-join-ul" >
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="이름" id="name" name="name" maxlength="6" value="" size="300px">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="이메일" id="email" name="email" value="" maxlength="60" size="300px">
          <label class="hidden-label member-join-label"></label>
        </div>
      </li>
      <li id="padding" class="list-group-item d-flex justify-content-between align-items-center member-join-li">
        <div class="form-group member-join-div">
          <input type="text" class="form-control member-join-input-text" placeholder="휴대폰" id="phone" name="phone" value="" size="300px">
        </div>
      </li>
    </ul>
    </div>
</form>
  	<div class="member-join-div" align="center">
  		<button type="submit" class="btn btn-primary btn-sm member-join-btn-sub">수정하기</button>
  	</div>


<script src="/resources/artgo/js/member-join.js"></script>