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
<title>관리자 페이지</title>

<!-- Favicon -->
<link rel="icon" href="/resources/base/img/core-img/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Style CSS -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/resources/admin/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/resources/admin/css/milligram.min.css">
<link rel="stylesheet" type="text/css" href="/resources/admin/css/normalize.css">
<link rel="stylesheet" type="text/css" href="/resources/admin/css/styles.css">
<link rel="stylesheet" type="text/css" href="/resources/admin/sass/config.codekit">
<link rel="stylesheet" type="text/css" href="/resources/admin/sass/styles.scss">
<link rel="stylesheet" type="text/css" href="/resources/admin/css/admin.css">
</head>
<body>
    <div style="width:100%; height:100%;">
    <div id="main"><tiles:insertAttribute name="body" /></div>    
    </div>
		
		<!-- Chart js -->
		<script src="/resources/admin/js/chart.min.js"></script>
		<script src="/resources/admin/js/chart-data.js"></script>
		
		<!-- 어드민 js -->
    	<script src="/resources/admin/js/admin.js"></script>
    	
		
</body>
</html>