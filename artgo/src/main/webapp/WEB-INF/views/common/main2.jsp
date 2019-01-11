<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Original - Lifestyle Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="/resources/img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/classy-nav.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css"
	href="/resources/css/header.css">

<link rel="stylesheet" type="text/css"
	href="/resources/scss/_fonts.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/scss/_mixin.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/scss/_responsive.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/scss/_theme_color.scss">
<link rel="stylesheet" type="text/css" href="/resources/scss/style.css">

<link rel="stylesheet" type="text/css" href="/resources/style.css">
<link rel="stylesheet" type="text/css" href="/resources/style.css.map">

<link rel="stylesheet" type="text/css"
	href="/resources/fonts/stylesheet.css">

<link rel="stylesheet" type="text/css"
	href="/resources/css/searchbar.scss">

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main_ui.css">
<link rel="stylesheet" type="text/css" href="/resources/css/header.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<body>
	<!-- Preloader -->
	<div id="preloader">
		<div class="preload-content">
			<div id="original-load"></div>
		</div>
	</div>

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
							<a href="${root}/member/login" class="login" data-toggle="tooltip" data-placement="bottom"
								title="login"><span>로그인</span></a> 
							<a href="${root}/member/join" data-toggle="tooltip" data-placement="bottom" title="join"><span>회원가입</span></a>

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
							src="/resources/img/core-img/logo.png" alt=""></a>
					</div>
				</div>
			</div>
		</div>

		<!-- Nav Area -->
		<div class="original-nav-area" id="stickyNav">
			<div class="classy-nav-container breakpoint-off" >
				<div class="container" >
					<!-- Classy Menu -->
					<nav class="classy-navbar justify-content-between">

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
							<div class="classynav" >
								<ul style="width: 400px;">
									<li><a href="main.jsp" style="padding-right: 30px;">홈</a></li>
									<li><a href="#" style="padding-right: 30px;">전시</a></li>
									<li><a href="#" style="padding-right: 30px;">지역</a></li>
									<li><a href="about-us.jsp" style="padding-right: 30px;">즐겨찾기</a></li>
									<li><a href="contact.jsp" style="padding-right: 30px;">내 티켓</a></li>
								</ul>

								<!-- Search Form  -->
								<div class="container" id="search-wrapper">
									<div class="row" style="width: 400px;">
										<div class="col-sm-6 col-sm-offset-3"
											style="margin-left: 500px;">
											<div id="imaginary_container">
												<div class="input-group stylish-input-group">
													<input type="text" class="form-control"
														placeholder="Search"> <span
														class="input-group-addon">
														<button type="submit">
															<span class="glyphicon glyphicon-search"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- ##### Header Area End ##### -->

	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area">
		<!-- Hero Slides Area -->
		<div class="hero-slides owl-carousel">
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/img/bg-img/b2.jpg); height: 350px;">

				<div class="row h-100 align-items-center">

					<div class="slide-content text-center">
						<div class="post-tag">
							<a href="#" data-animation="fadeInUp">lifestyle</a>
						</div>
						<h2 data-animation="fadeInUp" data-delay="250ms">
							<a href="single-post.html">Take a look at last night’s party!</a>
						</h2>
					</div>

				</div>
			</div>
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/img/bg-img/b1.jpg); height: 350px;">

				<div class="row h-100 align-items-center">

					<div class="slide-content text-center">
						<div class="post-tag">
							<a href="#" data-animation="fadeInUp">lifestyle</a>
						</div>
						<h2 data-animation="fadeInUp" data-delay="250ms">
							<a href="single-post.html">Take a look at last night’s party!</a>
						</h2>
					</div>

				</div>
			</div>
			<!-- Single Slide -->
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/img/bg-img/b1.jpg); height: 350px;">

				<div class="row h-100 align-items-center">

					<div class="slide-content text-center">
						<div class="post-tag">
							<a href="#" data-animation="fadeInUp">lifestyle</a>
						</div>
						<h2 data-animation="fadeInUp" data-delay="250ms">
							<a href="single-post.html">Take a look at last night’s party!</a>
						</h2>
					</div>

				</div>
			</div>
			<!-- Single Slide -->

		</div>
	</div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper section-padding-100 clearfix">
		<div class="container" style="margin-left: 40px; margin-right: 40px;">
			<div class="row align-items-end">
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">Lifestyle</a>
							<h4>
								<a href="#" class="post-headline">Welcome to this Lifestyle
									blog</a>
							</h4>
							<p>Curabitur venenatis efficitur lorem sed tempor. Integer
								aliquet tempor cursus. Nullam vestibulum convallis risus vel
								condimentum. Nullam auctor lorem in libero luctus, vel volutpat
								quam tincidunt. Morbi sodales, dolor id ultricies dictum</p>
							<a href="#" class="btn original-btn">Read More</a>
						</div>
					</div>
				</div>
				<!-- Single Blog Area -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-catagory-area clearfix mb-100">
						<img src="/resources/img/blog-img/1.jpg" alt="">
						<!-- Catagory Title -->
						<div class="catagory-title">
							<a href="#">Lifestyle posts</a>
						</div>
					</div>
				</div>
				<!-- Single Blog Area -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-catagory-area clearfix mb-100">
						<img src="/resources/img/blog-img/2.jpg" alt="">
						<!-- Catagory Title -->
						<div class="catagory-title">
							<a href="#">latest posts</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-9">

					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.2s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<img src="/resources/img/blog-img/3.jpg" alt="">
									<div class="post-date">
										<a href="#">12 <span>march</span></a>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">Party people in the
											house</a>
									</h4>
									<p>Curabitur venenatis efficitur lorem sed tempor. Integer
										aliquet tempor cursus. Nullam vestibulum convallis risus vel
										condimentum. Nullam auctor lorem in libero luctus, vel
										volutpat quam tincidunt.</p>
									<div class="post-meta">
										<p>
											By <a href="#">james smith</a>
										</p>
										<p>3 comments</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.3s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<img src="/resources/img/blog-img/4.jpg" alt="">
									<div class="post-date">
										<a href="#">12 <span>march</span></a>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">We love colors in 2018</a>
									</h4>
									<p>Curabitur venenatis efficitur lorem sed tempor. Integer
										aliquet tempor cursus. Nullam vestibulum convallis risus vel
										condimentum. Nullam auctor lorem in libero luctus, vel
										volutpat quam tincidunt.</p>
									<div class="post-meta">
										<p>
											By <a href="#">james smith</a>
										</p>
										<p>3 comments</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.4s" data-wow-duration="1000ms">
						<div class="row">
							<div class="col-12">
								<div class="single-blog-thumbnail">
									<img src="/resources/img/blog-img/7.jpg" alt="">
									<div class="post-date">
										<a href="#">10 <span>march</span></a>
									</div>
								</div>
							</div>
							<div class="col-12">
								<!-- Blog Content -->
								<div class="single-blog-content mt-50">
									<div class="line"></div>
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">10 Tips to organize the
											perfect party</a>
									</h4>
									<p>Curabitur venenatis efficitur lorem sed tempor. Integer
										aliquet tempor cursus. Nullam vestibulum convallis risus vel
										condimentum. Nullam auctor lorem in libero luctus, vel
										volutpat quam tincidunt.</p>
									<div class="post-meta">
										<p>
											By <a href="#">james smith</a>
										</p>
										<p>3 comments</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.5s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<img src="/resources/img/blog-img/5.jpg" alt="">
									<div class="post-date">
										<a href="#">12 <span>march</span></a>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">Party people in the
											house</a>
									</h4>
									<p>Curabitur venenatis efficitur lorem sed tempor. Integer
										aliquet tempor cursus. Nullam vestibulum convallis risus vel
										condimentum. Nullam auctor lorem in libero luctus, vel
										volutpat quam tincidunt.</p>
									<div class="post-meta">
										<p>
											By <a href="#">james smith</a>
										</p>
										<p>3 comments</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.6s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<img src="/resources/img/blog-img/6.jpg" alt="">
									<div class="post-date">
										<a href="#">12 <span>march</span></a>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">We love colors in 2018</a>
									</h4>
									<p>Curabitur venenatis efficitur lorem sed tempor. Integer
										aliquet tempor cursus. Nullam vestibulum convallis risus vel
										condimentum. Nullam auctor lorem in libero luctus, vel
										volutpat quam tincidunt.</p>
									<div class="post-meta">
										<p>
											By <a href="#">james smith</a>
										</p>
										<p>3 comments</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Load More -->
					<div class="load-more-btn mt-100 wow fadeInUp"
						data-wow-delay="0.7s" data-wow-duration="1000ms">
						<a href="#" class="btn original-btn">Read More</a>
					</div>
				</div>

				<!-- ##### Sidebar Area ##### -->
				<div class="col-12 col-md-4 col-lg-3">
					<div class="post-sidebar-area">

						<!-- Widget Area -->
						<div class="sidebar-widget-area">
							<form action="#" class="search-form">
								<input type="search" name="search" id="searchForm"
									placeholder="Search"> <input type="submit"
									value="submit">
							</form>
						</div>

						<!-- Widget Area -->
						<div class="sidebar-widget-area">
							<h5 class="title subscribe-title">Subscribe to my newsletter</h5>
							<div class="widget-content">
								<form action="#" class="newsletterForm">
									<input type="email" name="email" id="subscribesForm"
										placeholder="Your e-mail here">
									<button type="submit" class="btn original-btn">Subscribe</button>
								</form>
							</div>
						</div>

						<!-- Widget Area -->
						<div class="sidebar-widget-area">
							<h5 class="title">Advertisement</h5>
							<a href="#"><img src="/resources/img/bg-img/add.gif" alt=""></a>
						</div>

						<!-- Widget Area -->
						<div class="sidebar-widget-area">
							<h5 class="title">Latest Posts</h5>

							<div class="widget-content">

								<!-- Single Blog Post -->
								<div
									class="single-blog-post d-flex align-items-center widget-post">
									<!-- Post Thumbnail -->
									<div class="post-thumbnail">
										<img src="/resources/img/blog-img/lp1.jpg" alt="">
									</div>
									<!-- Post Content -->
									<div class="post-content">
										<a href="#" class="post-tag">Lifestyle</a>
										<h4>
											<a href="#" class="post-headline">Party people in the
												house</a>
										</h4>
										<div class="post-meta">
											<p>
												<a href="#">12 March</a>
											</p>
										</div>
									</div>
								</div>

								<!-- Single Blog Post -->
								<div
									class="single-blog-post d-flex align-items-center widget-post">
									<!-- Post Thumbnail -->
									<div class="post-thumbnail">
										<img src="/resources/img/blog-img/lp2.jpg" alt="">
									</div>
									<!-- Post Content -->
									<div class="post-content">
										<a href="#" class="post-tag">Lifestyle</a>
										<h4>
											<a href="#" class="post-headline">A sunday in the park</a>
										</h4>
										<div class="post-meta">
											<p>
												<a href="#">12 March</a>
											</p>
										</div>
									</div>
								</div>

								<!-- Single Blog Post -->
								<div
									class="single-blog-post d-flex align-items-center widget-post">
									<!-- Post Thumbnail -->
									<div class="post-thumbnail">
										<img src="/resources/img/blog-img/lp3.jpg" alt="">
									</div>
									<!-- Post Content -->
									<div class="post-content">
										<a href="#" class="post-tag">Lifestyle</a>
										<h4>
											<a href="#" class="post-headline">Party people in the
												house</a>
										</h4>
										<div class="post-meta">
											<p>
												<a href="#">12 March</a>
											</p>
										</div>
									</div>
								</div>

								<!-- Single Blog Post -->
								<div
									class="single-blog-post d-flex align-items-center widget-post">
									<!-- Post Thumbnail -->
									<div class="post-thumbnail">
										<img src="/resources/img/blog-img/lp4.jpg" alt="">
									</div>
									<!-- Post Content -->
									<div class="post-content">
										<a href="#" class="post-tag">Lifestyle</a>
										<h4>
											<a href="#" class="post-headline">A sunday in the park</a>
										</h4>
										<div class="post-meta">
											<p>
												<a href="#">12 March</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Widget Area -->
						<div class="sidebar-widget-area">
							<h5 class="title">Tags</h5>
							<div class="widget-content">
								<ul class="tags">
									<li><a href="#">design</a></li>
									<li><a href="#">fashion</a></li>
									<li><a href="#">travel</a></li>
									<li><a href="#">music</a></li>
									<li><a href="#">party</a></li>
									<li><a href="#">video</a></li>
									<li><a href="#">photography</a></li>
									<li><a href="#">adventure</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Blog Wrapper End ##### -->

	<!-- ##### Instagram Feed Area Start ##### -->
	<div class="instagram-feed-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="insta-title">
						<h5>Follow us @ Instagram</h5>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Slides -->
		<div class="instagram-slides owl-carousel">
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/2.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/3.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/4.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/5.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/6.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="/resources/img/instagram-img/7.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Instagram Feed Area End ##### -->

	<!-- ##### Footer Area Start ##### -->

	<footer class="footer-area text-center" id="border">
	

					<!-- Footer Social Area -->
		
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>

		<!-- ##### Footer Area End ##### -->

		<!-- jQuery (Necessary for All JavaScript Plugins) -->
		<script src="/resources/js/jquery/jquery-2.2.4.min.js"></script>
		<!-- Popper js -->
		<script src="/resources/js/popper.min.js"></script>
		<!-- Bootstrap js -->
		<script src="/resources/js/bootstrap.min.js"></script>
		<!-- Plugins js -->
		<script src="/resources/js/plugins.js"></script>
		<!-- Active js -->
		<script src="/resources/js/active.js"></script>

		<script>
    $('.btn-search').click(function(){
    	  $('.searchbar').toggleClass('clicked');
    	  $('.stage').toggleClass('faded');

    	  
    	  if($('.searchbar').hasClass('clicked')){
    	    $('.btn-extended').focus();
    	  }
    	  
    	});
    </script>
</body>

</html>