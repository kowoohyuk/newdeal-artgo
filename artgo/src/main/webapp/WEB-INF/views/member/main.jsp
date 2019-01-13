<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/artgo/css/member-main-common.css" rel="stylesheet">
<link href="/resources/artgo/css/member-main.css" rel="stylesheet">
<div class="container">
	<!-- contents -->
	<div id="conts" class="clear_g">
		<!-- 컨텐츠 영역 시작 -->
		<h2 class="screen_out">마이페이지</h2>
		<!-- 개인 정보 -->
		<div class="wrap_person">
			<div class="box_person_info">
				<div class="info_text">
					<span class="person_id member-main-span">id</span>
				</div>
				<div>
					<span class="person_btn member-main-span"> <a href="/member/modify.do"
						target="_blank" class="btn_line">정보 수정</a>
					</span>

				</div>
			</div>
			<div class="box_person_state">
				<ul>
					<li>
						<p class="state_num">
							<a href="/myticket/rsrvList.htm" id="rsrvCnt" /></a>
						</p>
						<p class="state_title">등급</p>
					</li>
					<li>
						<p class="state_num">
							<a href="/myticket/coupon.htm" id="couponCnt" /></a>
						</p>
						<p class="state_title">예매내역</p>
					</li>
				</ul>
			</div>
		</div>
		<!--// 개인 정보 -->
		<!-- 최근 예매/취소 -->
		<div class="warp_ticket">
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
			<div class="box_no_list" id="divNotFound" style="display: none">
				<p>예매확인/ 취소내역이 없습니다.</p>
			</div>
		</div>
		<!-- //최근 예매/취소 -->

		<div class="warp_ticket">
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
