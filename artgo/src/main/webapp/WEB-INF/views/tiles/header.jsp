<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ##### Header Area Start ##### -->
<header class="header-area">

	<!-- Top Header Area -->
	<div class="top-header">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<!-- Breaking News Area -->
				<div class="col-12 col-sm-8">
					<div class="breaking-news-area"></div>
				</div>
				<!-- Top Social Area -->
				<div class="col-12 col-sm-4">
					<div class="top-social-area">
						<a href="/member/loginPart.do" data-toggle="tooltip" data-placement="bottom"
							title="login"><span>로그인</span></a> <a href="/member/joinPart.do"
							data-toggle="tooltip" data-placement="bottom" title="join"><span>회원가입</span></a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- header -->
	<!-- Logo Area -->
	<div class="logo-area text-center">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<a href="/testPage.do" class="original-logo"><img
						src="/resources/img/core-img/logo.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>

	<!-- Nav Area -->
	<div class="original-nav-area" id="stickyNav">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between">

					<!-- Subscribe btn -->
					<div class="subscribe-btn">
						<a href="#" class="btn subscribe-btn" data-toggle="modal"
							data-target="#subsModal">사이트 정보 확인</a>
					</div>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu" id="originalNav">
						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul>
								<li><a href="index.html">홈</a></li>
								<li><a href="#">전시</a>
									<ul class="dropdown">
										<li><a href="index.html">전체</a></li>
										<li><a href="about-us.html">장르1</a></li>
										<li><a href="single-post.html">장르2</a></li>
										<li><a href="contact.html">장르3</a></li>
										<li><a href="coming-soon.html">장르4</a></li>
									</ul></li>
								<li><a href="#">지역</a>
								</li>
								<li><a href="about-us.html">즐겨찾기</a></li>
								<li><a href="#">마이 티켓</a>
								</li>
							</ul>

							<!-- Search Form  -->
							<div id="search-wrapper">
								<form action="#">
									<input type="text" id="search"
										placeholder="Search something...">
									<div id="close-icon"></div>
									<input class="d-none" type="submit" value="">
								</form>
							</div>
						</div>
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>