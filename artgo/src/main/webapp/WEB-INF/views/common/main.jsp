<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area">
		<!-- Hero Slides Area -->
		<div class="hero-slides owl-carousel col-lg-12">
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/base/img/bg-img/b2.jpg);">
			</div>
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/base/img/bg-img/b1.jpg);">
			</div>
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/base/img/bg-img/b3.jpg);">
			</div>
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/base/img/bg-img/b4.jpg);">
			</div>
			<!-- Single Slide -->
			<div id="myDiv" class="single-hero-slide bg-img"
				style="background-image: url(/resources/base/img/bg-img/b5.jpg);">
			</div>

		</div>
	</div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-50 clearfix">
        <div class="container">
       		<div class="col-12 col-lg-4">
	            <div class="single-blog-area clearfix mb-100">
	                <!-- Blog Content -->
	                <div class="single-blog-content">
	                    <div class="line"></div>
		                <h4><a href="#" class="post-headline">이번 주 추천 전시회</a></h4>
		                <p>
		                	최근 일주일 기준 가장 많이 예매된 1, 2위 노출. 여기 p태그에는 해당 행사의 이름, 장르, 장소 입력 예정
		                </p>
	                </div>
	            </div>
            </div>
            <!-- Single Blog Area -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="single-catagory-area clearfix mb-100">
                    <img src="/resources/base/img/blog-img/1.jpg" alt="">
                </div>
            </div>
            <!-- Single Blog Area -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="single-catagory-area clearfix mb-100">
                    <img src="/resources/base/img/blog-img/1.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
       		<div class="col-12 col-lg-4">
	            <div class="single-blog-area clearfix mb-100">
	                <!-- Blog Content -->
	                <div class="single-blog-content">
		                <h4>
		                	<a href="#" class="post-headline">종료 예정 전시회</a> 
		                </h4>
		                <div class="line"></div>
		                <a href="#" class="post-tag" style="color: black;">제목 / 며칠 남았는지</a>
		                <a href="#" class="post-tag" style="color: black;">ex)</a>
		                <a href="#" class="post-tag" style="color: black;">반 고흐 빌리지 전 / 3일 뒤 마감</a>
		                <a href="#" class="post-tag" style="color: black;">총 5개가 보여지면 됨.</a>
		                <a href="#" class="post-tag" style="color: black;">클릭 시 이동</a>
	                </div>
	            </div>
            </div>
       		<div class="col-12 col-lg-4">
	            <div class="single-blog-area clearfix mb-100">
	                <!-- Blog Content -->
	                <div class="single-blog-content">
		                <h4>
		                	<a href="#" class="post-headline">공지사항</a> 
		                </h4>
		                <div class="line"></div>
		                <a href="#" class="post-tag" style="color: black;">최근 등록된 공지사항 1을 넣어요!</a>
		                <a href="#" class="post-tag" style="color: black;">제목만 보여주면 됨.</a>
		                <a href="#" class="post-tag" style="color: black;">클릭 시 이동</a>
		                <a href="#" class="post-tag" style="color: black;">더보기를 누르면 공지사항 게시판</a>
		                <a href="#" class="post-tag" style="color: black;">으로 이동</a>
	                </div>
	            </div>
            </div>
            <div class="col-12 col-lg-4">
	            <div class="single-blog-area clearfix mb-100">
	                <!-- Blog Content -->
	                <div class="single-blog-content">
		                <h4><a href="#" class="post-headline">즐겨찾기</a></h4>
	                    <div class="line"></div>
		                <a href="#" class="post-tag" style="color: black;">즐겨찾기 1 | 비 로그인이면</a>
		                <a href="#" class="post-tag" style="color: black;">즐겨찾기 2 | 330*125</a>
		                <a href="#" class="post-tag" style="color: black;">즐겨찾기 3 | 크기의 로그인이 </a>
		                <a href="#" class="post-tag" style="color: black;">즐겨찾기 4 | 필요합니다.</a>
		                <a href="#" class="post-tag" style="color: black;">즐겨찾기 5 | 이미지 배치</a>
	                </div>
	            </div>
            </div>
        </div>

	<!-- ##### Instagram Feed Area End ##### -->
		<!-- jQuery (Necessary for All JavaScript Plugins) -->


		<script>
    $('.btn-search').click(function(){
    	  $('.searchbar').toggleClass('clicked');
    	  $('.stage').toggleClass('faded');

    	  
    	  if($('.searchbar').hasClass('clicked')){
    	    $('.btn-extended').focus();
    	  }
    	  
    	});
    </script>
