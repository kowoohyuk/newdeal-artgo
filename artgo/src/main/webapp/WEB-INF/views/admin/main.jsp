<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<section id="main-content" class="column column-offset-20">
		<div class="row grid-responsive">
			<div class="column page-heading">
				<h3>관리자 메인 페이지</h3>
			</div>
		</div>
		
		<!--member-charts-->
		<div class="row grid-responsive">
			<div class="column column-50">
			<a class="anchor" name="member-charts"></a>
				<div class="card">
					<div class="card-title">
						<h5>매출</h5>
						<button class="admin-btn pay-chart btn-active" id="payLineBtn">곡선</button>
						<button class="admin-btn pay-chart" id="payBarBtn">바</button>
					</div>
					<div class="card-block">
						<div class="canvas-wrapper">
							<canvas class="chart" id="pay-line-chart" height="auto" width="auto"></canvas>
							<canvas class="chart" id="pay-bar-chart" height="auto" width="auto"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="column column-50">
			<a class="anchor" name="revenue-charts"></a>
				<div class="card">
					<div class="card-title">
						<h5>가입자 추이</h5>
						<button class="admin-btn member-chart" id="memberLineBtn">곡선</button>
						<button class="admin-btn member-chart btn-active" id="memberBarBtn">바</button>
					</div>
					<div class="card-block">
						<div class="canvas-wrapper">
							<canvas class="chart" id="member-line-chart" height="auto" width="auto"></canvas>
							<canvas class="chart" id="member-bar-chart" height="auto" width="auto"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- Chart js -->
<script src="/resources/admin/js/chart.min.js"></script>
<!-- 어드민 js -->
<script src="/resources/admin/js/main.js"></script>
