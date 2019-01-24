<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="pg" value="${param.pg}" />
<c:set var="key" value="${param.key}" />
<c:set var="word" value="${param.word}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">
<div class="container">
	<p class="p-ex-header">전시회 목록<p>
		<ul class="list-group exhib-ul">
			<c:forEach var="exhibit" items="${articlelist}">
			  <li class="list-group-item ex-list-li">
			  	<a class="a-ex-flag" href="/exhibit/view.do?bno=${exhibit.bno}">
				  <div class="row list-div-row exhibit-target">
					  <div class="list-div">
					  	<img title="${exhibit.title}" class="img-ex" src='<spring:url value="/img/${exhibit.folder}/${exhibit.saveName}"/>'>
					  </div>
					  <div class="list-div div-text">
						<p class="p-title">${exhibit.title}</p>
						<p class="p-blur">
						  ${exhibit.startDate} ~ ${exhibit.endDate}
						  <br>장소 : ${exhibit.place}
						</p>
					 </div>
				  </div>
			  	</a>
			  </li>
			</c:forEach>
		</ul>
</div>
<div class="serah-div-wrap">
	<div class="search-div">
		<select name="key" id="skey" class="search-bar select-bar">
			<option value="title">제목</option>
			<option value="address">지역
		</option></select>
		<input type="text" id="sword" class="search-bar keyword-bar">
		<button id="searchBtn" class="search-btn">검색</button>
	</div>
</div>

<div class="paging-div">
	${navigator.navigator}
</div>
		
<form action="" id="commonForm" method="get">
<input type="hidden" id="pg" name="pg" value="${pg}">
<input type="hidden" id="key" name="key" value="${key}">
<input type="hidden" id="word" name="word" value="${word}">
</form>
<script src="/resources/artgo/js/exhibit-list.js"></script>
