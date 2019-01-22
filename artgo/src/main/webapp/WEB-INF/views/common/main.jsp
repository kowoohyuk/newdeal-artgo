<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<div class="container">
		<div class="slider-area col-lg-12">
			<ul class="bxslider">
				<c:forEach var="banner" items="${bannerlist}">
			      <li>
			      	<a href="/exhibit/view.do?bno=${banner.bno}">
			      		<img src='<spring:url value="/img/${banner.folder}/${banner.saveName}"/>' class="banner-img">
			      	</a>
			      </li>
				</c:forEach>
		  	</ul>	
		</div>
		
	    <div class="blog-wrapper section-padding-50 clearfix">
	        <div class="container">
	       		<div class="col-lg-12">
		            <div class="single-blog-area clearfix mb-20">
		                <div class="single-blog-content">
			                <h4><a href="#" class="post-headline">New 전시회</a></h4>
		                    <div class="line"></div>
		                </div>
		            </div>
	            </div>
	            
				<c:forEach var="exhibit" items="${newlist}">
				  	 <div class="col-12 col-md-6 col-lg-4">
		                <div class="single-catagory-area clearfix mb-100 new-ex-zone">
						  	<a class="a-ex-flag" href="/exhibit/view.do?bno=${exhibit.bno}">
				                <img src='<spring:url value="/img/${exhibit.folder}/${exhibit.saveName}"/>' title="${exhibit.title}" class="img-main-newlist">
		                    	<p class="newlist-title">${exhibit.title}</p>
		                    	<p class="newlist-text">${exhibit.place}</p>
						  	</a>
		                </div>
		           	 </div>
				</c:forEach>            
	        </div>
	    </div>
	</div>
    
    <div class="container">
    	<div class="col-12 col-lg-6">
          <div class="single-blog-area clearfix mb-100">
              <div class="single-blog-content" id="mainExhibDiv">
               <h4>
               	<a href="#" class="post-headline">종료 예정 전시회</a> 
               </h4>
               <div class="line"></div>
              </div>
          </div>
        </div>
        <div class="col-12 col-lg-6">
          <div class="single-blog-area clearfix mb-100">
              <!-- Blog Content -->
              <div class="single-blog-content" id="mainFavorDiv">
               <h4><a href="#" class="post-headline">즐겨찾기</a></h4>
                  <div class="line"></div>
              </div>
          </div>
        </div>
     </div>
    
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="/resources/artgo/js/main.js"></script>
