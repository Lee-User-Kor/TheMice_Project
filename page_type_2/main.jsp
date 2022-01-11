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
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="${root}/css/view/website2/main.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<div class="main_remote" onclick="goTop()"></div>
<script>
	function goTop(){
		$("body,html").animate({scrollTop:0},500);
		moveIndex = 0
		const li_cnt = document.querySelectorAll('li')
    	for(let i = 0; i < li_cnt.length; i++) {
    		li_cnt[i].classList.remove('on')
    	}
	}
</script>

<div class="content" id="web">
    <div class="cnt01">
    	<div class="header">
			<div class="header_inner_wrap">
				<div class="header_logo"><img class="logo_img" src="${root }/img/website2/header_logo.png" onclick="location.href = '${root}/website2'"></div>
			    <ul>
			        <li style="background-color: #1D1D1D !improtant;"><a href="#"></a></li>
			        <li><a href="#">갤러리</a></li>
			        <li><a href="#">전시소개</a></li>
			        <li><a href="#">공지사항</a></li>
			        <li><a href="#">위치안내</a></li>
			        <li><a href="#">환불규정</a></li>
			        <li><a href="#">영상</a></li>
			        <li><a href="${root }/login">로그인</a></li>
			        <li><a href="#">환경설정</a></li>
			    </ul>
			    <div class="mobile_menu" id="mobile_menu">
			    	<div><img src="${root }/img/website2/m_search.png"></div>
			    	<div><img src="${root }/img/website2/m_hamburger.png"></div>
			    	<div><img src="${root }/img/website2/m_login.png"></div>
			    </div>
			</div>
		</div>
		<div class="cnt01_ctnt">
			<span style="font-size: 61px;font-weight: bold;color: white;">부산 드론 행사</span>
			<br>
			<br>
			<span style="margin-right: 5px;"><img src="${root }/img/website2/callendar.png"></span><span style="font-size: 23px;font-weight: bold;color: white;">2021.12.10 ~ 2021.12.15</span>
		</div>
    </div>
    <div class="cnt02" id="cnt02">
		<div class="cnt02_inner_wrap">
			<div class="cnt02_left">
				<div>
					<p class="f_p">Gallery</p>
					<p class="s_p">더 마이스의 다양한 갤러리를 만나보세요.</p>
				</div>
				<div class="btn_function">
					<button class="pre_btn"></button>
					<button class="nxt_btn"></button>
				</div>
			</div>
			<div class="cnt02_right">
				<div class="swiper-container swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample01.png"></div>
						<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample02.png"></div>
						<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample03.png"></div>
					</div>
				</div>
			</div>
			<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
			<script>
			var mobileMenu = document.querySelector('.mobile_menu')
			let su = 0
			if(mobileMenu.style.display == 'none'){
				su = 50
			}else {
				su = 10	
			}
			const swiper = new Swiper('.swiper', {
				spaceBetween: su,
				slidesPerView: 'auto',
				loop: true, 
				pagination: { 
					el: '.swiper-pagination' 
				},
				navigation: { 
					nextEl: '.nxt_btn',
					prevEl: '.pre_btn'
				}
			})
			</script>
		</div>
	</div>
    <div class="cnt03" id="cnt03">
		<div class="cnt03_inner_wrap">
			<div class="cnt03_left">
				<div class="img_back">
					<div class="cnt03_img_wrap" onmouseover="cnt03ScrollOver()" onmouseout="cnt03ScrollOut()">
						<img class="cnt03_img" src="${root }/img/website2/cnt03_modal.png">
					</div>
				</div>
				<div class="cnt03_left_text">
					<span>마우스를 아래로 스크롤해주세요.</span>
				</div>
			</div>
			<div class="cnt03_right">
				<div class="cnt03_title">
					<span>Introduction</span>
				</div>
				<div class="cnt03_subtitle">
					<span>더 마이스가 보여주는 전시소개를 만나보세요.</span>
				</div>
				<div class="cnt03_btn_function">
					<button class="reserve_btn">예매하기</button>
					<button class="show_btn" onclick="openModal()">전체보기</button>
				</div>
			</div>
		</div>
		<div class="cnt03_modal hidden">
			<img src="${root }/img/website2/cnt03_modal.png">
		</div>
		<div class="cnt03_overlay hidden" onclick="closeModal()"></div>
		<script>
			function openModal() {
				document.querySelector('.cnt03_modal').classList.remove('hidden')
				document.querySelector('.cnt03_overlay').classList.remove('hidden')
				time = true;
			}
			function closeModal() {
				document.querySelector('.cnt03_modal').classList.add('hidden')
				document.querySelector('.cnt03_overlay').classList.add('hidden')
				time = false;				
			}
			function cnt03ScrollOver() {
				time = true;
			}
			function cnt03ScrollOut() {
				time = false;
			}
		</script>
	</div>
    <div class="cnt04" id="cnt04">
    	<div class="cnt04_inner_wrap">
    		<div class="cnt04_left">
    			<div class="cnt04_title"><span>Notice</span></div>
    			<div class="cnt04_subtitle"><span>더 마이스에서 알려주는 공지사항을 만나보세요.</span></div>
    			<div class="cnt04_btn_function"><button class="cnt04_btn" onclick="location.href = '${root}/website2/notice'">전체보기</button></div>
    		</div>
    		<div class="cnt04_right">
    			<table class="cnt04_table">
    				<tbody>
    					<tr>
    						<td class="f_td"><span class="table_cate">Notice</span></td>
    						<td class="s_td"><span class="table_number">05</span><br><span class="table_date">2021.11.10</span></td>
    						<td class="t_td">
    							<span class="table_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</span>
    							<br>
    							<span class="table_ctnt">
    								<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
    							</span>
    						</td>
    					</tr>
    					<tr>
    						<td class="f_td"><span class="table_cate">Notice</span></td>
    						<td class="s_td"><span class="table_number">04</span><br><span class="table_date">2021.11.10</span></td>
    						<td class="t_td">
    							<span class="table_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</span>
    							<br>
    							<span class="table_ctnt">
    								<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
    							</span>
    						</td>
    					</tr>
    					<tr>
    						<td class="f_td"><span class="table_cate">Notice</span></td>
    						<td class="s_td"><span class="table_number">03</span><br><span class="table_date">2021.11.10</span></td>
    						<td class="t_td">
    							<span class="table_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</span>
    							<br>
    							<span class="table_ctnt">
    								<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
    							</span>
    						</td>
    					</tr>
    					<tr>
    						<td class="f_td"><span class="table_cate">Notice</span></td>
    						<td class="s_td"><span class="table_number">02</span><br><span class="table_date">2021.11.10</span></td>
    						<td class="t_td">
    							<span class="table_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</span>
    							<br>
    							<span class="table_ctnt">
    								<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
    							</span>
    						</td>
    					</tr>
    					<tr>
    						<td class="f_td"><span class="table_cate">Notice</span></td>
    						<td class="s_td"><span class="table_number">01</span><br><span class="table_date">2021.11.10</span></td>
    						<td class="t_td">
    							<span class="table_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</span>
    							<br>
    							<span class="table_ctnt">
    								<textarea class="table_textarea" readonly>안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</textarea>
    							</span>
    						</td>
    					</tr>
    				</tbody>
    			</table>
    		</div>
    	</div>
    </div>
    <div class="cnt05" id="cnt05">
    	<div class="cnt05_inner_wrap">
    		<div class="cnt05_left">
    			<div class="cnt05_mark"><marquee scrollamount="20" direction="up" style="height: 100%;">THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE</marquee></div>
    			<div id="map" style="width:100%;height:100%;" onmouseover="cnt03ScrollOver()" onmouseout="cnt03ScrollOut()"></div>
    			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=328dac099a55125f1d0b29b37bdd009b&libraries=services"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center: new kakao.maps.LatLng(33.450701, 126.570667),
						level: 3
					};
					
					var map = new kakao.maps.Map(container, options);
					var centerNum = '';
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();

					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('부산광역시 해운대구 수영강변대로 140', function(result, status) {
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							centerNum = coords
							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});
							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow({
								content : '<div style="width:150px;text-align:center;padding:6px 0;">${detailVO.tour_name}</div>'
							});
							infowindow.open(map, marker);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.relayout();
							map.setCenter(coords);
						}
						document.getElementById('map').querySelectorAll('div')[0].querySelectorAll('div')[0].querySelectorAll('div')[5].querySelectorAll('div')[1].style.display = 'none';
					});
				</script>
				
    			<div class="cnt05_mark"><marquee scrollamount="20" direction="down" style="height: 100%;">THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE THE MICE</marquee></div>
    		</div>
    		<div class="cnt05_right">
    			<div class="cnt05_title"><span>Location</span></div>
    			<div class="cnt05_subtitle"><span>더 마이스를 볼 수 있는 위치를 안내합니다.</span></div>
    			<div class="cnt05_btn_function"><button class="cnt05_btn">자세히보기</button></div>
    		</div>
    	</div>
    </div>
    <div class="cnt06" id="cnt06">
    	<div class="cnt06_inner_wrap">
    		<div class="cnt06_left">
    			<div class="cnt06_left_title"><span>Refund Policy</span></div>
    			<div class="cnt06_left_subtitle"><span>더 마이스에서 예매한 티켓의 환불규정을 알려드립니다.</span></div>
    			<div class="cnt06_mark"><marquee class="cnt06_mark_obj" style="width: 110%;" scrollamount="10" direction="right">THE MICE</marquee></div>
    			<script>
					if(screen.width <= 425) {
						document.querySelector('.cnt06_mark_obj').style.width= '100%'
					}
    			</script>
    		</div>
    		<div class="cnt06_right">
    			<!-- top space -->
    			<div class="cnt06_right_top">
    				<!-- title -->
    				<div class="cnt06_right_top_title"><span>[환불규정]</span></div>
    				<!-- subtitle -->
    				<div class="cnt06_right_top_subtitle">
    					<p>※ 구매시점과 무관하게 관람 당일은 환불/변경 불가</p>
    					<p>※ 관람 당일 지각/연령 미숙지로 인한 환불/변경 불가</p>
    				</div>
    				<!-- content -->
    				<div class="cnt06_right_top_content">
    					<p>1) 구매 당일 요청 시 전액 환불 (단, 당일 티켓은 환불 불가)</p>
    					<p>2) 전시회 8일 전 ~ : 전액 환불</p>
    					<p>3) 전시회 7일 전 ~ 4일 전 : 10% 공제 후 환불</p>
    					<p>4) 전시회 3일 전 ~ 2일 전 : 20% 공제 후 환불</p>
    					<p>5) 전시회 1일 전 ~ : 30% 공제 후 환불</p>
    					<p>6) 전시회 당일(자정) 이후 : 환불/취소/변경 불가</p>
    				</div>
    			</div>
    			<!-- bottom space -->
    			<div class="cnt06_right_bot">
    				<!-- title -->
    				<div class="cnt06_right_bot_title_1"><span>[환불안내]</span></div>
    				<!-- subtitle -->
    				<div class="cnt06_right_bot_subtitle_1">
    					<p>※ 마이페이지 > 결제내역현황에서 취소버튼 클릭 후 진행</p>
    					<p>※ 구매시점과 무관하게 관람 당일 및 이후는 환불/변경 불가</p>
    					<p>※ 무일 기준 1일 내로 환불 규정에 따른 절차 진행</p>
    				</div>
    				<!-- content -->
    				<div class="cnt06_right_bot_content_1">
    					<p>1) 카드결제: 공제금 제외 금액의 카드결제 부분취소</p>
    					<p>2) 휴대폰결제: 공제금 제외 금액을 회원 계좌로 이체</p>
    					<p>3) 무통장/실시간계좌: 공제금 제외 금액을 회원 계좌로 이체</p>
    					<p>4) 네이버페이 및 기타: 결제수단별 부분취소 진행</p>
    					<p>* 휴대폰결제 취소는 결제월에만 가능(이외의 경우 계좌 이체)</p>
    					<p>* 휴대폰결제는 결제월 이후 환불할 경우 수수료가 청구될 수 있습니다.</p>
    				</div>
    				<!-- title -->
    				<div class="cnt06_right_bot_title_2"><span>[주의사항]</span></div>
    				<!-- subtitle -->
    				<div class="cnt06_right_bot_subtitle_2">
    					<p>- 환불 기준 날짜는 밤12시(자정) 기준으로 산정됩니다.</p>
    					<p>- 부분환불, 날짜/시간 변경은 지원하지 않으며, 원하시는 경우 전체 환불 후 재구매하셔야 합니다.</p>
    					<p>- 관람 당일 티켓은 환불/취소/변경 불가하여, 연령미숙지로 관람을 하지 못하더라도 환불이 불가합니다.</p>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    <div class="cnt07" id="cnt07">
    	<div class="cnt07_inner_wrap">
    		<div class="cnt07_left">
    			<div class="cnt07_left_left">
    				<div class="cnt07_left_left_top">
    					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    				</div>
    				<div class="cnt07_left_left_bot">
    					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    				</div>
    			</div>
    			<div class="cnt07_left_right">
    				<iframe class="last_video" width="100%" height="50%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    			</div>
    			<script>
					if(screen.width <= 425) {
						document.querySelector('.last_video').style.height = '100%'
					}
    			</script>
    		</div>
    		<div class="cnt07_right">
    			<div class="cnt07_title"><span>Video</span></div>
    			<div class="cnt07_subtitle"><span>더 마이스를 소개하는 다양한 영상을 만나보세요.</span></div>
    		</div>
    	</div>
    	<div class="footer">
    		<div class="footer_top">
    			<div class="footer_top_inner_wrap">
    				<div class="ftiw_left">
    					<span>더웰소개</span>
    					<span>|</span>
    					<span>찾아오시는길</span>
    					<span>|</span>
    					<span style="color: #EA933C; font-weight: bold;">개인정보취급방침</span>
    				</div>
    				<div  class="ftiw_right">
    					<span>유관사이트 바로가기</span>
    					<span><img src="${root }/img/website2/up_arrow.png"></span>
    				</div>
    			</div>
    		</div>
    		<div class="footer_bot">
    			<div class="footer_bot_inner_wrap">
    				<p>부산광역시 해운대구 수영강변대로 140(문화컨텐츠 컴플렉스 612호 ) |  직업정보제공사업 신고번호 : 부산동부 제 2019-6호  |  사업자 신고번호 : B18-148346</p>
    				<p>통신판매업 신고번호 : 2018-부산해운대-0551호 |  출판사 신고번호 : 2018-000017호</p>
    			</div>
    		</div>
    	</div>
    </div>
</div>
<script>
var $nav = null,
        $cnt = null,
        moveCnt = null,
        moveIndex = 0,
        moveCntTop = 0,
        winH = 0,
        time = false; // 새로 만든 변수
var scroll = function(){
	
	    $(document).ready(function(){
	        init();
	        initEvent();
	    });
	    
	    var init = function(){
	        $cnt = $(".content");
	        $nav = $(".header a");
	    };
	    
	    var initEvent = function(){
	        $("html ,body").scrollTop(0);
	        winResize();
	        $(window).resize(function(){
	            winResize();
	        });
	        $nav.on("click", function(){
	            moveIndex = $(this).parent("li").index();
	            moving(moveIndex);
	            return false;
	        });
	        $cnt.on("mousewheel", function(e){
	            if(time === false){ // time 변수가 펄스일때만 휠 이벤트 실행
	              wheel(e);
	            }
	        });
	    };
	        
	    var winResize = function(){
	        winH = $(window).height();
	        $cnt.children("div").height(winH);
	        $("html ,body").scrollTop(moveIndex.scrollTop);
	    };
	    
	    var wheel = function(e){
	        if(e.originalEvent.wheelDelta < 0){
	            if(moveIndex < 6){
	                moveIndex += 1;
	                moving(moveIndex);
	            };
	        }else{
	            if(moveIndex > 0){
	                moveIndex -= 1;
	                moving(moveIndex);
	            };
	        };
	    };
	    
	    var moving = function(index){
	        time = true // 휠 이벤트가 실행 동시에 true로 변경
	        moveCnt = $cnt.children("div").eq(index);
	        moveCntTop = moveCnt.offset().top;
	        $("html ,body").stop().animate({
	            scrollTop: moveCntTop
	        }, 1000, function(){
	          time = false; // 휠 이벤트가 끝나면 false로 변경
	        });
	        if(index != 0) {
		        $nav.parent("li").eq(index).addClass("on").siblings().removeClass("on");
	        }else {
	        	const li_cnt = document.querySelectorAll('li')
	        	for(let i = 0; i < li_cnt.length; i++) {
	        		li_cnt[i].classList.remove('on')
	        	}
	        }
	    };
};
scroll();
</script>
<script>
if(screen.height == 812) {
	document.querySelector('.img_back').style.height = '40%'
	document.querySelector('.cnt03_btn_function').style.marginTop = '145%'
	document.querySelector('.cnt04_btn_function').style.marginTop = '170%'
	document.querySelector('.cnt05_btn_function').style.marginTop = '180%'
}
</script>
	<!-- 모바일 레이아웃 -->
	<div id="mobile">
	
		<div class="header">
			<div class="header_inner_wrap">
				<div class="header_logo">
					<img class="logo_img" src="${root }/img/website2/header_logo.png"
						onclick="location.href = '${root}/website2'">
				</div>
				<div class="mobile_menu" id="mobile_menu">
					<div>
						<img src="${root }/img/website2/m_search.png">
					</div>
					<div>
						<img src="${root }/img/website2/m_hamburger.png" onclick="mobileHeaderOpenModal()">
					</div>
					<div>
						<img src="${root }/img/website2/m_login.png">
					</div>
				</div>
			</div>
			<div class="mh_modal">
				<div class="mhm_top">
					<div>
						<img src="${root }/img/website2/modal_search.png">
					</div>
					<div>
						<img src="${root }/img/website2/modal_close.png" onclick="mobileHeaderCloseModal()">
					</div>
					<div>
						<img src="${root }/img/website2/modal_login.png" onclick="location.href = '${root}/Home/login'">
					</div>
				</div>
				<div class="mhm_mid">
					<div class="mhm_mid_text"><span>더 마이스 계정 로그인이 필요합니다.</span></div>
					<div><span><img src="${root }/img/website2/modal_arrow.png" onclick="location.href = '${root}/Home/login'"></span></div>
				</div>
				<div class="mhm_bot">
					<div class="mhmb_menu1"><span>전시배너</span></div>
					<div class="mhmb_menu2"><span>갤러리</span></div>
					<div class="mhmb_menu3"><span>전시소개</span></div>
					<div class="mhmb_menu4"><span>공지사항</span></div>
					<div class="mhmb_menu5"><span>위치안내</span></div>
					<div class="mhmb_menu6"><span>환불규정</span></div>
					<div class="mhmb_menu7"><span>비디오</span></div>
				</div>
			</div>
			<div class="mh_overlay" onclick="mobileHeaderCloseModal()"></div>
			<script>
				function mobileHeaderOpenModal() {
					document.querySelector('.mh_overlay').style.display = 'block';
					document.querySelector('.mh_modal').style.display = 'block';
					document.querySelector('html').style.overflow = 'hidden';
				}
				function mobileHeaderCloseModal() {
					document.querySelector('.mh_overlay').style.display = 'none';
					document.querySelector('.mh_modal').style.display = 'none';
					document.querySelector('html').style.overflow = 'unset';
				}
				/* 모달메뉴 클릭 이벤트 핸들러 */
				var menuLength = document.querySelector('.mhm_bot').querySelectorAll('div').length
				for(let i = 0; i < menuLength; i++) {
					document.querySelector('.mhm_bot').querySelectorAll('div')[i].addEventListener("click", function() {
						mobileHeaderCloseModal();
	 					document.getElementById('mhmb_menu' + (i + 1)).scrollIntoView();
					})
				}
			</script>
		</div>
		
		<div class="m_main_banner_wrap" id="mhmb_menu1">
			<img class="m_banner" src="${root }/img/website2/m_main_banner.png">
			<div class="m_banner_text">
				<div>
					<span class="m_banner_title">부산 드론 행사</span>
				</div>
				<div>
					<span class="m_banner_subtitle">2021.12.10 ~ 2021.12.15</span>
				</div>
			</div>
			<div class="m_banner_down_arrow">
				<a href="#mhmb_menu2"><img class="down_arrow_img" src="${root }/img/website2/down_arrow.png"></a>
			</div>
		</div>
		
		<div class="m_gallery" id="mhmb_menu2">
			<div class="mg_title">
				<span>Gallery</span>
			</div>
			<div class="mg_subtitle">
				<span>더 마이스의 다양한 갤러리를 만나보세요.</span>
			</div>
		</div>
		<div class="mg_swiper">
			<div class="swiper-container m_swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample01.png"></div>
					<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample02.png"></div>
					<div class="swiper-slide"><img src="${root }/img/website2/gallery_sample03.png"></div>
				</div>
			</div>
			<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
			<script>
				const m_swiper = new Swiper('.m_swiper', {
					spaceBetween: 10,
					slidesPerView: 'auto',
					loop: true, 
					pagination: { 
						el: '.swiper-pagination' 
					},
					navigation: { 
						nextEl: '.nxt_btn',
						prevEl: '.pre_btn'
					}
				})
			</script>
		</div>
		
		<div class="m_intro" id="mhmb_menu3">
			<div class="mi_title">
				<span>Introduction</span>
			</div>
			<div class="mi_subtitle">
				<span>더 마이스가 보여주는 전시소개를 만나보세요.</span>
			</div>
			<div class="mi_back_img_wrap">
				<div class="mi_intro_img_wrap">
					<img class="mi_intro_img" src="${root }/img/website2/cnt03_modal.png">
				</div>
			</div>
			<div class="mi_text">
				<span>마우스를 아래로 스크롤해주세요.</span>
			</div>
			<div class="mi_btn_function">
				<button class="mi_btn1" onclick="mobileOpenModal()">전체보기</button>
				<button class="mi_btn2">예매하기</button>
			</div>
			<div class="m_modal">
				<img class="m_modal_img" src="${root }/img/website2/cnt03_modal.png">
			</div>
			<div class="m_overlay" onclick="mobileCloseModal()"></div>
			<div class="m_close"><img src="${root }/img/website2/close_button.svg" onclick="mobileCloseModal()"></div>
			<script>
				function mobileOpenModal() {
					document.querySelector('.m_close').style.display = 'block';
					document.querySelector('.m_overlay').style.display = 'block';
					document.querySelector('.m_modal').style.display = 'block';
					document.querySelector('html').style.overflow = 'hidden';
				}
				function mobileCloseModal() {
					document.querySelector('.m_close').style.display = 'none';
					document.querySelector('.m_overlay').style.display = 'none';
					document.querySelector('.m_modal').style.display = 'none';
					document.querySelector('html').style.overflow = 'unset';
				}
			</script>
		</div>
		
		<div class="m_notice" id="mhmb_menu4">
			<div class="mn_title">
				<span>Notice</span>
			</div>
			<div class="mn_subtitle">
				<span>더마이스에서 알려주는 공지사항을 만나보세요.</span>
			</div>
			<div class="mn_content_wrap">
				<!-- 리스트 -->
				<div class="mnc_inner_wrap">
					<div class="mnc_fst">Notice</div>
					<div class="mnc_sec">
						<div class="mnc_num">05</div>
						<div class="mnc_date">2021.11.10</div>
					</div>
					<div class="mnc_trd">
						<div class="mnc_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</div>
						<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
					</div>
				</div>
				<!-- 리스트끝 -->
				<div class="mnc_inner_wrap">
					<div class="mnc_fst">Notice</div>
					<div class="mnc_sec">
						<div class="mnc_num">04</div>
						<div class="mnc_date">2021.11.10</div>
					</div>
					<div class="mnc_trd">
						<div class="mnc_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</div>
						<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
					</div>
				</div>
				<div class="mnc_inner_wrap">
					<div class="mnc_fst">Notice</div>
					<div class="mnc_sec">
						<div class="mnc_num">03</div>
						<div class="mnc_date">2021.11.10</div>
					</div>
					<div class="mnc_trd">
						<div class="mnc_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</div>
						<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
					</div>
				</div>
				<div class="mnc_inner_wrap">
					<div class="mnc_fst">Notice</div>
					<div class="mnc_sec">
						<div class="mnc_num">02</div>
						<div class="mnc_date">2021.11.10</div>
					</div>
					<div class="mnc_trd">
						<div class="mnc_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</div>
						<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
					</div>
				</div>
				<div class="mnc_inner_wrap">
					<div class="mnc_fst">Notice</div>
					<div class="mnc_sec">
						<div class="mnc_num">01</div>
						<div class="mnc_date">2021.11.10</div>
					</div>
					<div class="mnc_trd">
						<div class="mnc_title">변종 코로나인 오미크론으로 전시일정이 변경되었음을 알려드립니다.</div>
						<div class="mnc_subtitle">안녕하세요. 더 마이스입니다. 부산에 변종 코로나 오미크론이 심화되어 전시일정이 변경되었습니다. 변경된 전시일정은 첨부파일로 첨부하오니 확인하시고…</div>
					</div>
				</div>
				<script>
					var mncTitle = document.querySelectorAll('.mnc_title')
					var mncSubtitle = document.querySelectorAll('.mnc_subtitle')
					for(let i = 0; i < mncTitle.length; i++) {
						var titleText = mncTitle[i].innerText
						if(titleText.length > 19) {
							mncTitle[i].innerText = titleText.substr(0, 19) + '…'
						}
						var subTitleText = mncSubtitle[i].innerText
						if(subTitleText.length > 52) {
							mncSubtitle[i].innerText = subTitleText.substr(0, 52) + '…'
						}
					}
				</script>
			</div>
			<div class="mn_btn_function">
				<button class="mn_btn" onclick="location.href = '${root}/website2/notice'">전체보기</button>
			</div>
		</div>
		
		<div class="m_location" id="mhmb_menu5">
			<div class="ml_title">
				<span>Location</span>
			</div>
			<div class="ml_subtitle">
				<span>더 마이스를 볼 수 있는 위치를 안내합니다.</span>
			</div>
			<div class="ml_content_wrap">
				<div class="ml_mark"><marquee scrollamount="10" direction="up">THE MICE THE MICE THE MICE THE MICE</marquee></div>
				<div id="m_map" style="width: 100%;height: 100%;"></div>
				<div class="ml_mark"><marquee scrollamount="10" direction="down">THE MICE THE MICE THE MICE THE MICE</marquee></div>
			</div>
			<script>
					var container1 = document.getElementById('m_map');
					var options1 = {
						center: new kakao.maps.LatLng(33.450701, 126.570667),
						level: 3
					};
					
					var map1 = new kakao.maps.Map(container1, options1);
					var centerNum1 = ''
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder1 = new kakao.maps.services.Geocoder();

					// 주소로 좌표를 검색합니다
					geocoder1.addressSearch('부산광역시 해운대구 수영강변대로 140', function(result, status) {
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							var coords1 = new kakao.maps.LatLng(result[0].y, result[0].x);
							centerNum1 = coords1
							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker1 = new kakao.maps.Marker({
								map : map1,
								position : coords1
							});
							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow1 = new kakao.maps.InfoWindow({
								content : '<div style="width:150px;text-align:center;padding:6px 0;">${detailVO.tour_name}</div>'
							});
							infowindow1.open(map1, marker1);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map1.relayout();
							map1.setCenter(coords1);
						}
						document.getElementById('m_map').querySelectorAll('div')[0].querySelectorAll('div')[0].querySelectorAll('div')[5].querySelectorAll('div')[1].style.display = 'none';
					});
			</script>
			<div class="ml_btn_function">
				<button class="ml_btn">전체보기</button>
			</div>
		</div>
		
		<div class="m_refund" id="mhmb_menu6">
			<div class="mr_title">
				<span>Refund Policy</span>
			</div>
			<div class="mr_subtitle">
				<span>더 마이스에서 예매한 티켓의 환불규정을 알려드립니다.</span>
			</div>
			<div class="mr_content_wrap">
				<div class="mrc_top">
					<div class="mrct_title">[환불규정]</div>
					<div class="mrct_alert">
						※ 구매시점과 무관하게 관람 당일은 환불/변경 불가
						<br>
						※ 관람 당일 지각/연령 미숙지로 인한 환불/변경 불가
					</div>
					<div class="mrct_content">
						1) 구매 당일 요청 시 전액 환불 (단, 당일 티켓은 환불 불가)
						<br>
						2) 전시회 8일 전 ~ : 전액 환불
						<br>
						3) 전시회 7일 전 ~ 4일 전 : 10% 공제 후 환불
						<br>
						4) 전시회 3일 전 ~ 2일 전 : 20% 공제 후 환불
						<br>
						5) 전시회 1일 전 ~ : 30% 공제 후 환불
						<br>
						6) 전시회 당일(자정) 이후 : 환불/취소/변경 불가
					</div>
				</div>
				<div class="mrc_bot">
					<div class="mrcb_title1">[환불안내]</div>
					<div class="mrcb_alert1">
						※ 마이페이지 > 결제내역현황에서 취소버튼 클릭 후 진행
						<br>
						※ 구매시점과 무관하게 관람 당일 및 이후는 환불/변경 불가
						<br>
						※ 무일 기준 1일 내로 환불 규정에 따른 절차 진행
					</div>
					<div class="mrcb_content1">
						1) 카드결제: 공제금 제외 금액의 카드결제 부분취소
						<br>
						2) 휴대폰결제: 공제금 제외 금액을 회원 계좌로 이체
						<br>
						3) 무통장/실시간계좌: 공제금 제외 금액을 회원 계좌로 이체
						<br>
						4) 네이버페이 및 기타: 결제수단별 부분취소 진행
						<br>
						* 휴대폰결제 취소는 결제월에만 가능(이외의 경우 계좌 이체)
						<br>
						* 휴대폰결제는 결제월 이후 환불할 경우 수수료가 청구될 수 있습니다.
					</div>
					<div class="mrcb_title2">[주의사항]</div>
					<div class="mrcb_alert2">
						- 환불 기준 날짜는 밤12시(자정) 기준으로 산정됩니다.
						<br>
						- 부분환불, 날짜/시간 변경은 지원하지 않으며, 원하시는 경우 전체 환불 후 재구매하셔야 합니다.
						<br>
						- 관람 당일 티켓은 환불/취소/변경 불가하여, 연령미숙지로 관람을 하지 못하더라도 환불이 불가합니다.
					</div>
				</div>
				<div class="mrc_mark"><marquee scrollamount="10" direction="right">THE MICE</marquee></div>
			</div>
		</div>
		
		<div class="m_video" id="mhmb_menu7">
			<div class="mv_title">
				<span>Video</span>
			</div>
			<div class="mv_subtitle">
				<span>더 마이스를 소개하는 다양한 영상을 만나보세요.</span>
			</div>
			<div class="mv_content_wrap">
				<div class="mvc_video_wrap">
					<div class="mvc_video_object"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
					<div class="mvc_video_object"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
					<div class="mvc_video_object"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
					<div class="mvc_video_object"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/0p7fQ9fqQ6M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				</div>
			</div>
		</div>
		
		<div class="footer">
    		<div class="footer_top">
    			<div class="footer_top_inner_wrap">
    				<div class="ftiw_left">
    					<span>더웰소개</span>
    					<span>|</span>
    					<span>찾아오시는길</span>
    					<span>|</span>
    					<span style="color: #EA933C; font-weight: bold;">개인정보취급방침</span>
    				</div>
    			</div>
    		</div>
    		<div class="footer_bot">
    			<div class="footer_bot_inner_wrap">
    				<p>부산광역시 해운대구 수영강변대로 140(문화컨텐츠 컴플렉스 612호 )</p>
    				<p>직업정보제공사업 신고번호 : 부산동부 제 2019-6호</p>
    				<p>사업자 신고번호 : B18-148346</p>
    				<p>통신판매업 신고번호 : 2018-부산해운대-0551호</p>
    				<p>출판사 신고번호 : 2018-000017호</p>
    			</div>
				<div class="ftiw_right">
					<div class="ftiwr_wrap">
						<span class="ftiw_span_text">유관사이트 바로가기</span> <span class="ftiw_span_img"><img src="${root }/img/website2/up_arrow.png"></span>
					</div>
				</div>
			</div>
    	</div>
	</div>
	<script>
		window.setTimeout(function() {
			map.relayout();
			map.setCenter(centerNum);
			map1.relayout();
			map1.setCenter(centerNum1);
		}, 0);
	</script>

</body>
</html>