<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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
<link rel="icon" href="/resources/base/img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" type="text/css" href="/resources/base/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="/resources/base/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/base/css/classy-nav.css">
<link rel="stylesheet" type="text/css"
	href="/resources/base/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/base/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css"
	href="/resources/base/css/header.css">

<link rel="stylesheet" type="text/css"
	href="/resources/base/scss/_fonts.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/base/scss/_mixin.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/base/scss/_responsive.scss">
<link rel="stylesheet" type="text/css"
	href="/resources/base/scss/_theme_color.scss">
<link rel="stylesheet" type="text/css" href="/resources/base/style.css">
<link rel="stylesheet" type="text/css" href="/resources/base/style.css.map">

<link rel="stylesheet" type="text/css"
	href="/resources/base/fonts/stylesheet.css">

<link rel="stylesheet" type="text/css"
	href="/resources/base/css/searchbar.scss">

<link rel="stylesheet" type="text/css" href="/resources/base/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/base/css/main_ui.css">
<link rel="stylesheet" type="text/css" href="/resources/base/css/header.css">
<link rel="stylesheet" type="text/css" href="/resources/base/css/footer.css">

<link rel="stylesheet" type="text/css" href="/resources/artgo/css/artgo-main.css">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- summernote css -->
<!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
        <script src="/resources/base/js/jquery/jquery-2.0.0.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>

</head>
<body>
<input type="hidden" id="userId" value="${userInfo.id}">
<input type="hidden" id="userName" value="${userInfo.name}">
<input type="hidden" id="userRole" value="${userInfo.role}">
<input type="hidden" id="userType" value="${userInfo.type}">
    <div id="preloader">
       <div class="preload-content">
           <div id="original-load"></div>
       </div>
   	</div>
    <div style="width:100%; height:100%;">
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="main"><tiles:insertAttribute name="body" /></div>    
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
    </div>
    	<script src="/resources/artgo/js/header.js"></script>
		<!-- Popper js -->
		<script src="/resources/base/js/popper.min.js"></script>
		<!-- Bootstrap js -->
		<script src="/resources/base/js/bootstrap.min.js"></script>
		<!-- Plugins js -->
		<script src="/resources/base/js/plugins.js"></script>
		<!-- Active js -->
		<script src="/resources/base/js/active.js"></script>
</body>
</html>