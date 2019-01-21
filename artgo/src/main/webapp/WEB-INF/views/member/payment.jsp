<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="pg" value="${param.pg}" />
<c:set var="key" value="${param.key}" />
<c:set var="word" value="${param.word}" />

<div class="row">
	<section id="main-content" class="column column-offset-20">
		<div class="column  column-100">
			<div class="card">
				<div class="card-block paging-nav">
					<table class="table-member-list">
						<thead>
							<tr>
								<th class="member-min-td">이미지</th>
								<th class="member-min-td">전시회 명</th>
								<th class="member-max-td">결제금액</th>
								<th class="member-min-td">결제일</th>
								<th class="member-min-td">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="article" items="${articlelist}">
							<tr article-no="${article.pno}">
								<td>사진영역</td>
								<td>${article.title}</td>
								<td>${article.finalPay}</td>
								<td>${article.date}</td>
								<td>${article.status}</td>
								<td><button class="">상세보기</button></td>
							</tr>
<!-- 							<tr class="member-detail"> -->
<%-- 								<td>${article.mno}</td> --%>
<%-- 								<td>${article.type}</td> --%>
<%-- 								<td>${article.id}</td> --%>
<%-- 								<td>${article.name}</td> --%>
<%-- 								<td>${article.grade}</td> --%>
<!-- 							</tr> -->
							</c:forEach>
						</tbody>
					</table>
					<div class="serah-div-wrap">
						<div class="search-div">
							<select name="key" id="skey" class="search-bar select-bar">
								<option value="id">아이디
								<option value="name">이름
							</select>
							<input type="text" id="sword" class="search-bar keyword-bar">
							<button id="btn-search" class="admin-btn">검색</button>
						</div>
					</div>
					<div class="paging-div">
						${navigator.navigator}
					</div>

				</div>
			</div>
		</div>
	</section>
	<form action="" id="commonForm" method="get">
	<input type="hidden" id="pg" name="pg" value="${pg}">
	<input type="hidden" id="key" name="key" value="${key}">
	<input type="hidden" id="word" name="word" value="${word}">
	
</form>
</div>