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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/resources/base/css/footer.css" type="text/css">
    <link rel="stylesheet" href="/resources/artgo/css/header-sub.css" type="text/css">
    <link rel="icon" href="/resources/base/img/core-img/favicon.ico">
    <link href="/resources/base/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div style="width:100%; height:100%;" >
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="main"><tiles:insertAttribute name="body" /></div>
    <!-- <div id="footer"><tiles:insertAttribute name="footer" /></div> -->
    </div>
</body>
</html>