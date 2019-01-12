<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-login.css" rel="stylesheet">
    <form action="/member/login" method="post">
    <div align="center">
      <ul class="list-group" >
        <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="아이디" id="inputDefault" size="300px">
          </div>
        </li>
        <li id="padding" class="list-group-item d-flex justify-content-between align-items-center">
          <div class="form-group">
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호" size="300px">
          </div>
        </li>
      </ul>

      <div>
        <div class="form-check">
          <label class="form-check-label">
          <input class="form-check-input" type="checkbox" value="">아이디 저장</label>
          <a href="/member/findId.do">아이디 찾기</a> | <a href="/member/findPwd.do">비밀번호 찾기</a> | <a href="/member/join.do">회원가입</a>
        </div>
      </div>
    
      <div><button type="button" class="btn btn-outline-primary">로그인</button></div>
      <div> <button type="button" class="btn btn-outline-primary">네이버 아이디로 로그인</button></div>

    </div>
    </form>
