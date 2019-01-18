<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="pg" value="${param.pg}" />
<c:set var="key" value="${param.key}" />
<c:set var="word" value="${param.word}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">
    
<div class="container">
	<div class="col-lg-10">
		<div class="div-ex-title">
			<p>${exhibit.title}</p>
			<div class="div-ex-line"></div>
		</div>
		<div class="col-lg-6 pad-20 hei-fix">
			<img alt="${exhibit.title}" src='<spring:url value="/img/${exhibit.folder}/${exhibit.saveName}"/>'>
		</div>
		<div class="col-lg-6 pad-20 hei-fix">
			<div class="div-text-wrap">
				<span class="span-title">장소</span> <span class="span-text">${exhibit.place}</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">기간</span> <span class="span-text">${exhibit.startDate}~${exhibit.endDate}</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">관람등급</span> <span class="span-text">전체관람가</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">가격</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-text tab-tab">성인 &nbsp;&nbsp;: ${exhibit.normalPrice}</span>원
			</div>
			<div class="div-text-wrap">
				<span class="span-text tab-tab">청소년 : ${exhibit.teenPrice}</span>원
			</div>
		</div>
		<div class="exhib-bg-color">
			<ul class="exhib-view-ul">
				<li>
					<a class="btn-category exhib-view-active" anchor="1">상세 정보</a>
				</li>
				<li>
					<a class="btn-category" anchor="2">공연 후기</a>
				</li>
				<li>
					<a class="btn-category" anchor="3">지도</a>
				</li>
			</ul>
			
			<div id="review-zone">
				<div class="exhibit-btn-zone center-zone">
					<textarea rows="3" cols="55" class="area-exhibit" placeholder="후기를 입력하세요."></textarea>
					<button class="btn-red-mini btn-fat">등록</button>
				</div>
				<div>
					<ul class="exhib-mini-ul">
						<li class="head-li">작성자</li>
						<li class="head-li">내용</li>
						<li class="head-li">작성일</li>
					</ul>
					<ul class="exhib-mini-ul">
						<li class="text-li">우혁</li>
						<li class="text-li">재미없어요 ㅡㅡ</li>
						<li class="text-li">2019-01-18 16:22:05</li>
					</ul>
				</div>
			</div>


			<div id="map-zone">
				<div class="exhibit-btn-zone center-zone">
					<textarea rows="3" cols="55" class="area-exhibit" placeholder="후기를 입력하세요."></textarea>
					<button class="btn-red-mini btn-fat">안녕</button>
				</div>
				<div>
					<ul class="exhib-mini-ul">
						<li class="head-li">맵맵</li>
						<li class="head-li">내용</li>
						<li class="head-li">작성일</li>
					</ul>
					<ul class="exhib-mini-ul">
						<li class="text-li">우혁</li>
						<li class="text-li">재미없어요 ㅡㅡ</li>
						<li class="text-li">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</li>
					</ul>
				</div>
			</div>			
			
		</div>
	</div>
</div>
<div class="row">
</div>

<script src="/resources/artgo/js/exhibit.js"></script>