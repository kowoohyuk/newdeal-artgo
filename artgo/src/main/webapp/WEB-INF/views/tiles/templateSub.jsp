<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>제목</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/bootstrap.css" rel="stylesheet">
	<link href="/resources/css/_bootswatch.scss" rel="stylesheet">
	
	<link href="/resources/css/_variables.scss" rel="stylesheet">
	<link href="/resources/css/login.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/resources/css/footer.css" type="text/css">
</head>
<body>
    <div style="width:100%; height:100%;" >
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="main"><tiles:insertAttribute name="body" /></div>    
    <!-- <div id="footer"><tiles:insertAttribute name="footer" /></div> -->
    </div>
</body>
</html>