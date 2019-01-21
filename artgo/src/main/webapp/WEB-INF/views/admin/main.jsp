<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<section id="main-content" class="column column-offset-20">
		<div class="row grid-responsive">
			<div class="column page-heading">
				<h3>관리자 페이지</h3>
			</div>
		</div>
		
		<!--member-charts-->
		<a class="anchor" name="member-charts"></a>
		<div class="row grid-responsive">
			<div class="column column-50">
				<div class="card">
					<div class="card-title">
						<h3>가입자 추이</h3>
						<button class="admin-btn member-date">주간</button>
						<button class="admin-btn member-date btn-active">월간</button>
						|
						<button class="admin-btn member-chart">곡선</button>
						<button class="admin-btn member-chart btn-active">바</button>
					</div>
					<div class="card-block">
						<div class="canvas-wrapper">
							<canvas class="chart" id="line-chart" height="auto" width="auto"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="column column-50">
				<div class="card">
					<div class="card-title">
						<h3>매출</h3>
						<button class="admin-btn member-date">주간</button>
						<button class="admin-btn member-date btn-active">월간</button>
						|
						<button class="admin-btn member-chart btn-active">곡선</button>
						<button class="admin-btn member-chart">바</button>
					</div>
					<div class="card-block">
						<div class="canvas-wrapper">
							<canvas class="chart" id="bar-chart" height="auto" width="auto"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<div class="row grid-responsive">
		<a class="anchor" name="member-list"></a>
			<div class="column  column-50">
				<div class="card">
					<div class="card-title">
						<h3>회원 목록</h3>
					</div>
					<div class="card-block">
						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>플랫폼</th>
									<th>이름</th>
									<th>등급</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>2</td>
									<td>카카오</td>
									<td>정도윤</td>
									<td>VIP</td>
								</tr>
								<tr>
									<td>3</td>
									<td>일반</td>
									<td>한범석</td>
									<td>골드</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
								<tr>
									<td>1</td>
									<td>카카오</td>
									<td>고우혁</td>
									<td>일반</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		<a class="anchor" name="review-list"></a>
			<div class="column column-50">
				<div class="card">
					<div class="card-title">
						<h3>후기 목록</h3>
					</div>
					<div class="card-block">
						<table>
							<thead>
								<tr>
									<th>전시회명</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a>존 레전드 사진 전</a></td>
									<td><a>가수아니에요?</a></td>
									<td><a>고우혁</a></td>
									<td>19-01-03 17:42:05</td>
								</tr>
								<tr>
									<td>이매진 드래곤스 내한</td>
									<td>오호라</td>
									<td>엄진영</td>
									<td>19-01-03 17:42:05</td>
								</tr>
								<tr>
									<td>샤갈 전</td>
									<td>좋은 전시회였읍미다...</td>
									<td>아저씨</td>
									<td>19-01-13 17:43:55</td>
								</tr>
								<tr>
									<td>백남준 비디오 아트</td>
									<td>ㅎㅎㅎㅎㅎ</td>
									<td>일요일</td>
									<td>19-01-13 17:45:50</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	<script>
	window.onload = function () {
		var chart1 = document.getElementById("line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(lineChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
		});
		var chart2 = document.getElementById("bar-chart").getContext("2d");
		window.myBar = new Chart(chart2).Bar(barChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
		});
		var chart4 = document.getElementById("pie-chart").getContext("2d");
		window.myPie = new Chart(chart4).Pie(pieData, {
		responsive: true,
		segmentShowStroke: false
		});
		var chart5 = document.getElementById("radar-chart").getContext("2d");
		window.myRadarChart = new Chart(chart5).Radar(radarData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.05)",
		angleLineColor: "rgba(0,0,0,.2)"
		});
		var chart6 = document.getElementById("polar-area-chart").getContext("2d");
		window.myPolarAreaChart = new Chart(chart6).PolarArea(polarData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		segmentShowStroke: false
		});
	};
	</script>
