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
    <div style="width:100%; height:100%;">
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="main"><tiles:insertAttribute name="body" /></div>    
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
    </div>
</body>
</html>