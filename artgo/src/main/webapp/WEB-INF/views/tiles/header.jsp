<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/public.jsp" %>
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
						<a href="${root}/member/loginPage.do" data-toggle="tooltip" data-placement="bottom"
							title="login"><span>로그인</span></a> <a href="${root}/member/joinPage.do"
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
					<a href="main.jsp" class="original-logo"><img
						src="${root}/img/core-img/logo.png" alt=""></a>
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
							data-target="#subsModal">Subscribe</a>
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
								<li><a href="index.html">Home</a></li>
								<li><a href="#">Pages</a>
									<ul class="dropdown">
										<li><a href="index.html">Home</a></li>
										<li><a href="about-us.html">About Us</a></li>
										<li><a href="single-post.html">Single Post</a></li>
										<li><a href="contact.html">Contact</a></li>
										<li><a href="coming-soon.html">Coming Soon</a></li>
									</ul></li>
								<li><a href="#">Catagory</a>
									<ul class="dropdown">
										<li><a href="#">Catagory 1</a></li>
										<li><a href="#">Catagory 1</a></li>
										<li><a href="#">Catagory 1</a>
											<ul class="dropdown">
												<li><a href="#">Catagory 2</a></li>
												<li><a href="#">Catagory 2</a></li>
												<li><a href="#">Catagory 2</a>
													<ul class="dropdown">
														<li><a href="#">Catagory 3</a></li>
														<li><a href="#">Catagory 3</a></li>
														<li><a href="#">Catagory 3</a></li>
														<li><a href="#">Catagory 3</a></li>
														<li><a href="#">Catagory 3</a></li>
													</ul></li>
												<li><a href="#">Catagory 2</a></li>
												<li><a href="#">Catagory 2</a></li>
											</ul></li>
										<li><a href="#">Catagory 1</a></li>
										<li><a href="#">Catagory 1</a></li>
									</ul></li>
								<li><a href="about-us.html">About Us</a></li>
								<li><a href="#">Megamenu</a>
									<div class="megamenu">
										<ul class="single-mega cn-col-4">
											<li class="title">Headline 1</li>
											<li><a href="#">Mega Menu Item 1</a></li>
											<li><a href="#">Mega Menu Item 2</a></li>
											<li><a href="#">Mega Menu Item 3</a></li>
											<li><a href="#">Mega Menu Item 4</a></li>
											<li><a href="#">Mega Menu Item 5</a></li>
										</ul>
										<ul class="single-mega cn-col-4">
											<li class="title">Headline 2</li>
											<li><a href="#">Mega Menu Item 1</a></li>
											<li><a href="#">Mega Menu Item 2</a></li>
											<li><a href="#">Mega Menu Item 3</a></li>
											<li><a href="#">Mega Menu Item 4</a></li>
											<li><a href="#">Mega Menu Item 5</a></li>
										</ul>
										<ul class="single-mega cn-col-4">
											<li class="title">Headline 3</li>
											<li><a href="#">Mega Menu Item 1</a></li>
											<li><a href="#">Mega Menu Item 2</a></li>
											<li><a href="#">Mega Menu Item 3</a></li>
											<li><a href="#">Mega Menu Item 4</a></li>
											<li><a href="#">Mega Menu Item 5</a></li>
										</ul>
										<ul class="single-mega cn-col-4">
											<li class="title">Headline 4</li>
											<li><a href="#">Mega Menu Item 1</a></li>
											<li><a href="#">Mega Menu Item 2</a></li>
											<li><a href="#">Mega Menu Item 3</a></li>
											<li><a href="#">Mega Menu Item 4</a></li>
											<li><a href="#">Mega Menu Item 5</a></li>
										</ul>
									</div></li>
								<li><a href="contact.html">Contact</a></li>
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