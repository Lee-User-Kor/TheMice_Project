<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THE MICE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="icon" href="${root}/img/common/favicon.svg">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${root}/css/view/website2/footer.css">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
	<div class="footer">
		<div class="footer_top">
			<div class="footer_top_inner_wrap">
				<div class="ftiw_left">
					<span>더웰소개</span> <span>|</span> <span>찾아오시는길</span> <span>|</span>
					<span style="color: #EA933C; font-weight: bold;">개인정보취급방침</span>
				</div>
				<div class="ftiw_right">
					<span>유관사이트 바로가기</span> <span><img
						src="${root }/img/website2/up_arrow.png"></span>
				</div>
			</div>
		</div>
		<div class="footer_bot">
			<div class="footer_bot_inner_wrap">
				<p>부산광역시 해운대구 수영강변대로 140(문화컨텐츠 컴플렉스 612호 ) | 직업정보제공사업 신고번호 :
					부산동부 제 2019-6호 | 사업자 신고번호 : B18-148346</p>
				<p>통신판매업 신고번호 : 2018-부산해운대-0551호 | 출판사 신고번호 : 2018-000017호</p>
			</div>
		</div>
	</div>
</body>
</html>