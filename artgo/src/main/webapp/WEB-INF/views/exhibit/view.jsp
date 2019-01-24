<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="pg" value="${param.pg}" />
<c:set var="key" value="${param.key}" />
<c:set var="word" value="${param.word}" />
<link href="/resources/artgo/css/exhibit.css" rel="stylesheet">
<input type="hidden" value="${exhibit.exno}" id="exno">    
<input type="hidden" value="${exhibit.address}" id="address">
<input type="hidden" value="${exhibit.place}" id="place">
<input type="hidden" value="${exhibit.title}" id="titleVal">
<input type="hidden" value="${exhibit.normalPrice}" id="normalPrice">
<input type="hidden" value="${exhibit.teenPrice}" id="teenPrice">
<input type="hidden" value="${exhibit.bno}" id="bnoExhibit">
<div class="container">
	<div class="col-lg-10">
		<div class="div-ex-title">
			<p class="p-ex-title">${exhibit.title}</p>
			<button class="btn-ex-favor">즐겨찾기 추가</button>
			<button class="btn-red-mini btn-ex-list">목록</button>
		</div>
		<div class="div-ex-line"></div>
		<div class="col-lg-6 pad-20 hei-fix">
			<img alt="${exhibit.title}" src='<spring:url value="/img/${exhibit.folder}/${exhibit.saveName}"/>'>
		</div>
		<div class="col-lg-6 pad-20 hei-fix">
			<div class="div-text-wrap">
				<span class="span-title">장소</span> <span class="span-text">${exhibit.place}</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">주소</span> <span class="span-text">${exhibit.address}</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">기간</span> <span class="span-text">${exhibit.startDate}~${exhibit.endDate}</span>
			</div>
			<div class="div-text-wrap">
				<span class="span-title">가격</span>
			</div>
			<div class="div-text-wrap">
				<div class="div-clean">
					<span class="span-text tab-tab"><strong>성인</strong> &nbsp;&nbsp;: ${exhibit.normalPrice}</span>
				</div>
				<div class="div-clean">
					원	<input type="number" name="quantity" id="normalCount"  min="0" max="999"> 장
				</div>
			</div>
			<div class="div-text-wrap">
				<div class="div-clean">
					<span class="span-text tab-tab"><strong>청소년</strong> : ${exhibit.teenPrice}</span>
				</div>
				<div class="div-clean">
					원	<input type="number" name="quantity" id="teenCount"  min="0" max="999"> 장
				</div>
			</div>
			<button class="btn-red btn-kakao">카카오페이 결제하기</button>
		</div>
		<div class="exhib-bg-color">
			<ul class="exhib-view-ul">
				<li>
					<a class="btn-category exhib-view-active" anchor="1">상세 정보</a>
				</li>
				<li>
					<a class="btn-category" anchor="2">한 줄 후기</a>
				</li>
				<li>
					<a class="btn-category" anchor="3">지도</a>
					
				</li>
			</ul>
			
			<div id="detail-zone">
				<div class="pad-20">
					<strong>[정보]</strong><br>
					${exhibit.content}
				</div>
				
				<div class="pad-20">
					<strong>[전시 기간]</strong><br>
					${exhibit.startDate}~${exhibit.endDate}
					<br><br>				
					<strong>[티켓 예매 안내]</strong><br>
					예매한 티켓은 마이 티켓 페이지에서 확인하실 수 있습니다.<br>
					전시회 시작일 이전 예매 시 시작일 이전까지 취소가 가능합니다.<br>
					전시회 시작일 이후 예매 시 결제 후 일주일까지 취소가 가능합니다.<br>
					<br><br>
					
				</div>
			</div>
			
			
			<div id="review-zone">
				<div class="starRev" id="starRev">
				  <span class="bold_text">별점 : </span>
			      <span class="starR" star-value="1">별1</span>
				  <span class="starR" star-value="2">별2</span>
				  <span class="starR" star-value="3">별3</span>
				  <span class="starR" star-value="4">별4</span>
				  <span class="starR" star-value="5">별5</span>
				  <input type="hidden" value="" id="starRev">
				</div>
				<div class="exhibit-btn-zone center-zone">
					<input type="text" placeholder="후기를 입력하세요." id="reviewComment" maxlength="40">
					<button class="btn-red-mini" id="reviewBtn">등록</button>
				</div>
				<div id="review-content-zone">
				</div>
			</div>


			<div id="map-zone">
				<div class="div-text-wrap">
					<span class="span-title">장소</span> <span class="span-text">${exhibit.place}</span>
				</div>
				<div class="div-text-wrap">
					<span class="span-title">주소</span> <span class="span-text">${exhibit.address}</span>
				</div>
				<div class="div-ex-line"></div>
				<div id="daum-map"></div>
			</div>
			
			
		</div>
	</div>
</div>
<div class="row">
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7733d2fd81a122a372226b726f89ef71&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/resources/artgo/js/exhibit-view.js"></script>
