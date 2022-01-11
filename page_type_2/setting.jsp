<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>THE MICE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="icon" href="${root}/img/common/favicon.svg">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<style>
</style>
</head>
<body>

<div class="setting_wrap">
	<div class="setting_header">
		<div class="sh_menu1">메인관리</div>
		<div class="sh_menu2">공지사항관리</div>
		<div class="sh_menu3">갤러리관리</div>
		<div class="sh_menu4">댓글관리</div>
		<div class="sh_menu5">영상관리</div>
	</div>
	<div class="under_line_wrap">
		<div class="line_1"></div>
		<div class="line_2"></div>
		<div class="line_3"></div>
		<div class="line_4"></div>
		<div class="line_5"></div>
	</div>
</div>

</body>
</html>