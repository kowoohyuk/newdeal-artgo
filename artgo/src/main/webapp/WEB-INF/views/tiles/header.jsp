<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header-area">
	<!-- Top Header Area -->
	<div class="top-header">
		<div class="container h-100">
			<div class="row h-100 align-items-center header-div-top">
				<!-- Breaking News Area -->
				<div class="col-12 col-sm-8">
					<div class="breaking-news-area"></div>
				</div>
				<!-- Top Social Area -->
				<div class="col-12 col-sm-4">
					<div class="top-social-area header-div-top-flag">
						<a href="/member/login.do" data-toggle="tooltip" data-placement="bottom"
							title="login"><span>로그인</span>
						</a>
					 	<a href="/member/join.do"
							data-toggle="tooltip" data-placement="bottom" title="join"><span>회원가입</span>
						</a>
					 	<a href="/member/main.do"
							data-toggle="tooltip" data-placement="bottom" title="mypage"><span>마이 페이지</span>
						</a>
						<a href="/admin/main.do"
							data-toggle="tooltip" data-placement="bottom" title="mypage"><span>관리 페이지</span>
						</a>
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
					<a href="/main.do" class="original-logo"><img
						src="/resources/artgo/img/logo.png" alt=""></a>
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
						<a href="#" class="btn btn-my-modal">내 정보</a>
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
		                <li><a href="/main.do">홈</a></li>
		                <li><a href="/ticket/ticketList.do">전시</a>
		                  <ul class="dropdown">
		                    <li><a href="/ticket/ticketList.do">전시 상황</a></li>
		                    <li><a href="/ticket/ticketWrite.do">글 작성 테스트 링크</a></li>
		                    <li><a href="/ticket/ticketUpdate.do">글 수성 테스트 링크</a></li>
							</ul></li>
						<li><a href="#">지역</a>
						</li>
						<li><a href="" data-toggle="modal" data-target="#myModal">즐겨찾기</a></li>
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
	<!-- The Modal -->



	<div class="subscribe-newsletter-area">
        <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <div class="modal-body">
                        <h5 class="title">Subscribe to my newsletter</h5>
                        <form action="#" class="newsletterForm" method="post">
                            <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
                            <button type="submit" class="btn original-btn">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
	<div class="bbbbbbbbbbbb">
		<a href="#">버트은</a>
	</div>
    
    
    <div class="modal-cutton" id="cutton">
    
    </div>
   
    
    <script type="text/javascript">
    	$(function(){
    		
    		$("#abce").click(function(){
	    		$("#cutton").fadeIn();
	    		$(".modal-my-content").fadeIn();
    		});
    		$("#modal-close").click(function(){
	    		$("#cutton").fadeOut();
	    		$(".modal-my-content").fadeOut();
    		});
    		$(".modal-cutton").click(function(){
	    		$("#cutton").fadeOut();
	    		$(".modal-my-content").fadeOut();
    		});
    	});
    
    </script>

</header>