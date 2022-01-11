<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THE MICE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${root}/img/common/favicon.svg">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${root}/css/view/website2/notice.css">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<script>
		var goBackBtn = document.getElementById('goBack')
		goBackBtn.addEventListener("click", function(){
			location.href = '${root}/website2'
		})
	</script>
	<div class="notice_banner">
		<img src="${root }/img/website2/notice_banner.png">
	</div>
	<div class="notice_wrap" id="web">
		<div class="notice_content_wrap">
			<form>
				<div class="search">
					<div class="search_left">
						<input class="sl_input" type="search" placeholder="제목으로 입력해주세요.">
						<img class="sl_img" src="${root }/img/website2/search.png">
					</div>
					<div class="search_right">
						<input class="sr_input" type="submit" value="검색">
					</div>
				</div>
			</form>
			<div class="content_table">
				<table class="cnt04_table">
					<tbody>
						<tr>
							<td class="f_td"><span class="table_cate">Notice</span></td>
							<td class="s_td"><span class="table_number">05</span><br>
							<span class="table_date">2021.11.10</span></td>
							<td class="t_td">
								<span class="table_title"><a href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></span>
								<br>
								<span class="table_ctnt">
									<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
								</span>
							</td>
						</tr>
						<tr>
							<td class="f_td"><span class="table_cate">Notice</span></td>
							<td class="s_td"><span class="table_number">04</span><br>
							<span class="table_date">2021.11.10</span></td>
							<td class="t_td">
								<span class="table_title"><a href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></span>
								<br>
								<span class="table_ctnt">
									<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
								</span>
							</td>
						</tr>
						<tr>
							<td class="f_td"><span class="table_cate">Notice</span></td>
							<td class="s_td"><span class="table_number">03</span><br>
							<span class="table_date">2021.11.10</span></td>
							<td class="t_td">
								<span class="table_title"><a href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></span>
								<br>
								<span class="table_ctnt">
									<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
								</span>
							</td>
						</tr>
						<tr>
							<td class="f_td"><span class="table_cate">Notice</span></td>
							<td class="s_td"><span class="table_number">02</span><br>
							<span class="table_date">2021.11.10</span></td>
							<td class="t_td">
								<span class="table_title"><a href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></span>
								<br>
								<span class="table_ctnt">
									<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
								</span>
							</td>
						</tr>
						<tr>
							<td class="f_td"><span class="table_cate">Notice</span></td>
							<td class="s_td"><span class="table_number">01</span><br>
							<span class="table_date">2021.11.10</span></td>
							<td class="t_td">
								<span class="table_title"><a href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></span>
								<br>
								<span class="table_ctnt">
									<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 페이징 -->
			<div class="paging">
				<c:if test="${paging.nowPage != 1 }">
					<a href="notice?nowPage=1&cntPerPage=${paging.cntPerPage }">&lt;&lt;</a>
					<a href="notice?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage }">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<div class="num">${p }</div>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a href="notice?nowPage=${p }&cntPerPage=${paging.cntPerPage }">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.lastPage != 0 && paging.nowPage != paging.lastPage }">
					<a href="notice?nowPage=${paging.nowPage + 1 }&cntPerPage=${paging.cntPerPage }">&gt;</a>
					<a href="notice?nowPage=${paging.endPage }&cntPerPage=${paging.cntPerPage }">&gt;&gt;</a>
				</c:if>
			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp" />
	
	<div id="mobile">
		<div class="mn_content_wrap">
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">08</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">07</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">06</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">05</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">04</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">03</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">02</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<div class="mnc_inner_wrap">
				<div class="mnc_fst">Notice</div>
				<div class="mnc_sec">
					<div class="mnc_num">01</div>
					<div class="mnc_date">2021.11.10</div>
				</div>
				<div class="mnc_trd">
					<div class="mnc_title"><a class="mnct_a" href="${root }/website2/notice_detail">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</a></div>
					<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이
						심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
				</div>
			</div>
			<script>
				var mncTitle = document.querySelectorAll('.mnct_a')
				var mncSubtitle = document.querySelectorAll('.mnc_subtitle')
				for (let i = 0; i < mncTitle.length; i++) {
					var titleText = mncTitle[i].innerText
					if (titleText.length > 19) {
						mncTitle[i].innerText = titleText.substr(0, 19) + '…'
					}
					var subTitleText = mncSubtitle[i].innerText
					if (subTitleText.length > 52) {
						mncSubtitle[i].innerText = subTitleText.substr(0, 52)
								+ '…'
					}
				}
			</script>
		</div>
	</div>
</body>
</html>