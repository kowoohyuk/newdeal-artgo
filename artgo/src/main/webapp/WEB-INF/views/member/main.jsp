<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<link href="/resources/artgo/css/member-main-common.css" rel="stylesheet">
<link href="/resources/artgo/css/member-main.css" rel="stylesheet">

<c:if test="${userInfo.grade==1}">
	<c:set var = "grade" value = "관리자"/>
</c:if>
<c:if test="${userInfo.grade==1}">
	<c:set var = "grade" value = "일반"/>
</c:if>
<c:if test="${userInfo.grade==2}">
	<c:set var = "grade" value = "골드"/>
</c:if>
<c:if test="${userInfo.grade==3}">
	<c:set var = "grade" value = "VIP"/>
</c:if>

<div class="container">
	<!-- contents -->
	<div id="conts" class="clear_g">
		<!-- 최근 예매/취소 -->
		<div class="row">
			<div class="col-lg-10">
				<h2 class="tit_sub_float">최근 예매/취소</h2>
				<div class="ctr">
					<a href="/myticket/rsrvList.htm" id="more" class="ico_more">더보기</a>
				</div>
	
				<div class="box_ticket_list" id="divFound">
					<table summary="최근 예매/취소 리스트" class="tbl tbl_style02">
						<caption class="hide"></caption>
						<colgroup>
							<!-- 카카오페이 추가 -->
							<col width="149" />
							<col width="470" />
							<col width="233" />
							<col width="154" />
							<!-- 카카오페이 추가 -->
						</colgroup>
						<thead>
							<tr>
								<th>예매일</th>
								<th>공연정보</th>
								<th>예매정보</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody id="rsrvTbody">
							<tr style="text-align: center;">
								<td>2019-01-12</td>
								<td>빈 센트 반 고흐 전</td>
								<td>7,000원</td>
								<td>예매 완료</td>
							</tr>
							<tr>
								<td colspan="2">
								 	<img alt="" src="/resources/artgo/img/testImg.jpg">
								</td>
								<td colspan="2">
									<p>티켓 구매 수량</p>
									<p>청소년 : 5매</p>
									<p>성인 : 0매</p>
									<p>전시회 주소 : 서울시 강남구 봉은사로 ~~~~~~~ </p>
								</td>
							</tr>
							<tr style="text-align: center;">
								<td>2019-01-12</td>
								<td>빈 센트 반 고흐 전</td>
								<td>7,000원</td>
								<td>예매 완료</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="col-lg-12 class-nav" id="divFound">
					<ul>
						<li class="col-lg-3 ">예매일</li>
						<li class="col-lg-3">공연정보</li>
						<li class="col-lg-3">예매정보</li>
						<li class="col-lg-3">상태</li>
					</ul>
					<ul>
						<li class="col-lg-3">2019-01-12</li>
						<li class="col-lg-3">빈 센트 반 고흐 전</li>
						<li class="col-lg-3">예매정보</li>
						<li class="col-lg-3">예매 완료</li>
					</ul>
					<ul>
						<li class="col-lg-2"><img alt="" src="/resources/artgo/img/testImg.jpg"></li>
						<li class="col-lg-2">티켓 구매 수량</li>
						<li class="col-lg-2">청소년 : 5매</li>
						<li class="col-lg-2">성인 : 0매</li>
						<li class="col-lg-2">전시회 주소 : 서울시 강남구 봉은사로 ~~~~~~~</li>
					</ul>
				</div>
				
				
				
				<div class="box_no_list" id="divNotFound" style="display: none">
					<p>예매확인/ 취소내역이 없습니다.</p>
				</div>
			</div>
			<!-- //최근 예매/취소 -->
		</div>
		
		<div class="row">
			<div class="warp_ticket col-lg-10">
				<!-- 최근 참여 이벤트 -->
				<div class="tit_sub_float">
					<h2 class="tit_sub_float">즐겨찾기</h2>
					<div class="ctr">
						<a href="/myticket/rsrvList.htm" id="more" class="ico_more">더보기</a>
					</div>
	
					<div class="wrap_taken">
	
						<div class="list-group">
							<a href="#"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<div class="d-flex w-100 justify-content-between">
									<h5 class="mb-1">
										<img class="member-main-img" src="/resources/base/img/core-img/img.png">
									</h5>
								</div>
								<p class="mb-1">내용</p>
							</a> <a href="#"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<div class="d-flex w-100 justify-content-between">
									<h5 class="mb-1">
										<img class="member-main-img" src="/resources/base/img/core-img/img.png">
									</h5>
								</div>
								<p class="mb-1">내용</p>
							</a> <a href="#"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<div class="d-flex w-100 justify-content-between">
									<h5 class="mb-1">
										<img class="member-main-img" src="/resources/base/img/core-img/img.png">
									</h5>
								</div>
								<p class="mb-1">내용</p>
							</a>
						</div>
					
					</div>
				</div>
				<!--// 컨텐츠 영역 끝 -->
			</div>
		<!-- //contents -->
		</div>
	</div>
</div>
<script src="/resources/artgo/js/member-main.js"></script>
