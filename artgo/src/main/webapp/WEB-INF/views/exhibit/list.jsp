<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="pg" value="${param.pg}" />
<c:set var="key" value="${param.key}" />
<c:set var="word" value="${param.word}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">
<div class="container">

	<p class="p-ex-header">전시회 목록<p>
	<ul class="list-group exhib-ul">
	  <li class="list-group-item ex-list-li">
	  	<a class="a-ex-flag">
		  	<div class="row list-div-row">
			  <div class="list-div">
			  	<img alt="" src="/resources/artgo/img/test/test1.jpg">
			  </div>
			  <div class="list-div div-text">
			  	<p class="p-title">제목 : 러빙빈센트 전</p>
			  	<p class="p-blur">
			  		2019-01-24 ~ 2019-02-20<br>주소 : 서울시 강남구 삼성동
			  	</p>
			  </div>	  
		  	</div>
	  	</a>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test2.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test3.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test4.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  
	  
	  
	  	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test1.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test2.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test3.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	  <li class="list-group-item ex-list-li">
	  	<div class="row list-div-row">
		  <div class="list-div">
		  	<img alt="" src="/resources/artgo/img/test/test4.jpg">
		  </div>
		  <div class="list-div div-text">
		  	<p>여기에 제목이 들어가요.</p>
		  	<p>여기에 주소가 들어가요.</p>
		  	<p>여기에 기간이 들어가요.</p>
		  </div>	  
	  	</div>
	  </li>
	</ul>
	
</div>
<form action="" id="commonForm" method="get">
<input type="hidden" id="pg" name="pg" value="${pg}">
<input type="hidden" id="key" name="key" value="${key}">
<input type="hidden" id="word" name="word" value="${word}">
</form>