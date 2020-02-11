<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head lang="ko" id="hobbyful">
<title>hability :-D 취미를만나일상이아름다워지다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- <link rel="stylesheet" type="text/css" media="screen" href="CSSreset.min.css" /> -->
<link rel="stylesheet" type="text/css" media="screen" href="${path}/recoSlide/als_demo.css" />
<script type="text/javascript" src="${path}/recoSlide/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${path}/recoSlide/jquery.als-1.7.min.js"></script>

<script src="${path}/jquery/js/responsiveslides.min.js"></script>

<style>
.rslides {
  position: relative;
  list-style: none;
  overflow: hidden;
  width: 100%;
  padding: 0;
  margin: 0;
  }

.rslides li {
  -webkit-backface-visibility: hidden;
  position: absolute;
  display: none;
  width: 100%;
  left: 0;
  top: 0;
  }

.rslides li:first-child {
  position: relative;
  display: block;
  float: left;
  }

.rslides img {
  display: block;
  height: auto;
  float: left;
  width: 100%;
  border: 0;
  }
</style>
<script>
  $(function() {
    $(".rslides").responsiveSlides({
    	auto : true,
    	speed : 500,
    	timeout :4000,
    	random : false,
    	pause : true,
    	/* pager: true, */
    	after : function(){}
    });
  });
  
	$(document).ready(function() {
		$("#lista1").als({
			visible_items : 4,
			scrolling_items : 1,
			orientation : "horizontal",
			circular : "yes",
			autoscroll : "no",
			interval : 3000,
			speed : 500,
			easing : "linear",
			direction : "right",
			start_from : 0
		});
	});
	
	$(document).ready(function() {
		$("#lista2").als({
			visible_items : 4,
			scrolling_items : 1,
			orientation : "horizontal",
			circular : "yes",
			autoscroll : "no",
			interval : 5000,
			speed : 500,
			easing : "linear",
			direction : "right",
			start_from : 0
		});
	});
</script>
</head>
<body class="">
<div class="container" id="top">

	<!-- 좌우 버튼 or 하단 페이징 버튼 클릭 시 img-slide-wrap01 ~ img-slide-wrap03 클레스 추가&변경 -->
	<div id="mainSlide" class="swiper-container hf-tracker-group swiper-container-initialized swiper-container-horizontal" data-tracker-type="promotion" data-tracker-id="Main Banner">

		<ul id="mainSlideContent" class="rslides">
			<!-- 1 -->
			<li class="swiper-slide swiper-slide-duplicate">
				<a href="https://hobbyful.co.kr/view-magazine.html?id=244" title="이번주 취미코드 마법의 산타 주머니">
					<picture>
						<source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/d81c8a00-25ec-11ea-be70-61e81fa988df-resize.jpg" alt="이번주 취미코드 마법의 산타 주머니">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/d81bc6b0-25ec-11ea-be70-61e81fa988df-resize.jpg" alt="이번주 취미코드 마법의 산타 주머니">
					</picture>
				</a>
			</li>
			<!-- 2 -->
			<li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev">
				<a href="https://hobbyful.co.kr/product/traveldigital" title="유수빈의 올인원 여행 디지털드로잉 클래스">
					<picture>
						<source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/8f49ca30-20a2-11ea-be70-61e81fa988df-resize.jpg" alt="유수빈의 올인원 여행 디지털드로잉 클래스">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/8f48b8c0-20a2-11ea-be70-61e81fa988df-resize.jpg" alt="유수빈의 올인원 여행 디지털드로잉 클래스">
					</picture>
				</a>
			</li>
			<!-- 3 -->
			<li class="swiper-slide hf-tracker-item swiper-slide-duplicate swiper-slide-duplicate-active" style="background:#FFFFFF" data-tracker-id="107" data-swiper-slide-index="2">
				<a href="https://hobbyful.co.kr/product/merryhobbyfulmas" title="크리스마스 홈클래스 한정판 에디션">
					<picture>
						<source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/873d3a10-1fe5-11ea-be70-61e81fa988df-resize.jpg" alt="크리스마스 홈클래스 한정판 에디션">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/873c76c0-1fe5-11ea-be70-61e81fa988df-resize.jpg" alt="크리스마스 홈클래스 한정판 에디션">
					</picture>
				</a>
			</li>
			<!-- 4 -->
			<li class="swiper-slide hf-tracker-item swiper-slide-duplicate swiper-slide-duplicate-next" style="background:#9a603e" data-tracker-id="105" data-swiper-slide-index="3">
				<a href="https://hobbyful.co.kr/product/Bo2uDp6tLZ" title="반곰이의 추억여행 스킬자수 카펫매트 클래스">
					<picture>
						<source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/2048c750-1be6-11ea-add4-09214dce28ac-resize.jpg" alt="반곰이의 추억여행 스킬자수 카펫매트 클래스">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/20478ed0-1be6-11ea-add4-09214dce28ac-resize.jpg" alt="반곰이의 추억여행 스킬자수 카펫매트 클래스">
					</picture>
				</a>
			</li>
			<!-- 5 -->
			<li class="swiper-slide hf-tracker-item swiper-slide-duplicate" style="background:#e8d19c" data-tracker-id="102" data-swiper-slide-index="4">
				<a href="https://hobbyful.co.kr/product/yjK3fHoLPQ" title="스티치랩의 재봉틀 입문 클래스">
					<picture>
						<source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/1e9b2ed0-1258-11ea-931a-2fe27e77a6ff-resize.jpg" alt="스티치랩의 재봉틀 입문 클래스">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/1e9ab9a0-1258-11ea-931a-2fe27e77a6ff-resize.jpg" alt="스티치랩의 재봉틀 입문 클래스">
					</picture>
				</a>
			</li>
		</ul>
	</div>
	
	<!-- small main -->
	<div class="float-wrap">
		<!-- 인사 박스 -->
		<div class="hf-info-wrap">
			<div class="hf-info-cont">
				<c:if test="${!empty sessionScope.loginUser}">
				<div class="hf-info-txt">				
					<a href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}">
						<div class="photo-thumb block">
						<!-- DB에 저장된 userimg 없는 경우 -->
						<c:if test="${empty sessionScope.loginUser.userimg}">						
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png?0.6152530793205171" onerror="this.src='../static/img/ico-profile.svg'">
						</c:if>
						
						<!-- DB에 저장된 userimg -->
						<c:if test="${!empty sessionScope.loginUser.userimg}">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png?0.6152530793205171" onerror="this.src='../static/img/ico-profile.svg'">
						</c:if>
						</div>
					</a>
					안녕하세요
					<a class="bold underline" style="color: #11447b" href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}">${sessionScope.loginUser.nickname}</a>님,
					<br>아직 구독중인 취미가 없으시군요!
					<br>하빌리티와 함께 원하는 취미를 찾아보세요.
				</div>
				<a href="${path}/list/hobbyClass.shop" class="btn-hf-info" title="취미 클래스 둘러보기">취미 클래스 둘러보기</a>
				</c:if>
				<c:if test="${empty sessionScope.loginUser}">
				<div class="hf-info-txt">	
					<div class="photo-thumb block">
						<img src="${path}/img/basic.png">
					</div>
					안녕하세요!
					<br>일상에서 취미를 만나는 가장 쉬운 방법 하빌리티!
					<br>지금 함께 알아볼까요?
				</div>
				<a href="${path}/list/service.shop" class="btn-hf-info" title="하비풀 소개">서비스 이용안내</a>
				</c:if>
			</div>
		</div>
	</div>
	
	<!-- 추천 리스트 시작 -->
	<div id="recommendSlideList" style="padding-left: 0px; padding-right: 0px;">
		<!-- BEST 지금 가장 인기있는 취미  -->
		<section id="content" class="hfb-categorySlideList hf-tracker-group swiper-container-initialized swiper-container-horizontal">
			<header>
				<h4>BEST 지금 가장 인기있는 취미</h4>
			</header>
	
			<div id="lista1" class="als-container">
			<!-- arrow -->
				<span class="als-prev"><img src="${path}/recoSlide/thin_left_arrow_333.png" alt="prev" title="previous"/></span>
			<div class="als-viewport">
			<ul class="als-wrapper swiper-wrapper panel">
				<!-- 1 -->
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/906965c18d">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="temp_img.jpg" alt=""> <!-- 이미지 경로 : WEB-INF 바깥 -->
						</p>
						<p class="i-desc">
							<span class="i-type">정규 클래스</span>
							<span class="i-seller">by 메리진</span>
						</p>
						<p class="i-name">메리진의 스마트폰 드로잉 클래스</p>
					</a>
				</li>
				<!-- 2 -->
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/traveldigital">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/42649440-218b-11ea-9cb3-c70fccd5674e-resize.jpg" alt="">
						</p>
						<p class="i-desc">
							<span class="i-type">정규 클래스</span>
							<span class="i-seller">by 유수빈</span>
						</p>
						<p class="i-name">유수빈의 올인원 여행 디지털 드로잉 클래스</p>
					</a>
				</li>
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/QMeAha5VgU">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/852ae460-09b6-11ea-952c-efccbb50f547-resize.jpg" alt="">
						</p>
						<p class="i-desc">
							<span class="i-type">정규 클래스</span>
							<span class="i-seller">by 메리데이</span>
						</p>
						<p class="i-name">메리데이의 채색 자수 클래스</p>
					</a>
				</li>
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/92LvaquM5a">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d914c600-1b12-11ea-add4-09214dce28ac-resize.jpg" alt="">
						</p>
						<p class="i-desc">
							<span class="i-type">DIY 키트</span>
							<span class="i-seller">by 부쉬아로마</span>
						</p>
						<p class="i-name">하트 곰돌이비누 DIY 키트</p>
					</a>
				</li>
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/Bo2uDp6tLZ">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/c0605900-1be2-11ea-add4-09214dce28ac-resize.jpg" alt="">
						</p>
						<p class="i-desc">
							<span class="i-type">원데이 클래스</span>
							<span class="i-seller">by 하비풀</span>
						</p>
						<p class="i-name">반곰이의 추억여행 스킬자수 카펫매트 클래스</p>
					</a>
				</li>
			</ul>
			</div>
			<!-- arrow -->
				<span class="als-next"><img src="${path}/recoSlide/thin_right_arrow_333.png" alt="next" title="next" /></span>
			</div>
		</section>
		
		<!-- 새로운 클래스 리스트 테스트  -->
		<section id="content" class="hfb-categorySlideList hf-tracker-group swiper-container-initialized swiper-container-horizontal">
			<header>
				<h4>새로운 클래스 리스트 테스트</h4>
			</header>
	
			<div id="lista2" class="als-container">
			<!-- arrow -->
				<span class="als-prev"><img src="${path}/recoSlide/thin_left_arrow_333.png" alt="prev" title="previous"/></span>
			<div class="als-viewport">
			<ul class="als-wrapper swiper-wrapper panel">
				<c:forEach items="${classList}" var="cls" begin="0" end="8">
				<li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
					<a href="/product/906965c18d">
						<p class="i-img">
							<img style="width:220.25px; height:132.15px;" src="temp_img.jpg" alt=""> <!-- 이미지 경로 : WEB-INF 바깥 -->
						</p>
						<p class="i-desc">
							<span class="i-type">
							<c:set var="type" value="${cls.cl_type}"/>
								<c:choose>
			  						<c:when test="${type eq 1}">
			  							[정규클래스]
			  						</c:when>
			  						<c:when test="${type eq 2}">
			  							[원데이클래스]
			  						</c:when>
			  						<c:when test="${type eq 3}">
			  							[DIY]
			  						</c:when>
			  						<c:when test="${type eq 4}">
			  							[도구]
			  						</c:when>
			  					</c:choose>
							</span>
							<span class="i-seller">by ${cls.teacher}</span>
						</p>
						<p class="i-name">${cls.cl_title}</p>
					</a>
				</li>
				</c:forEach>
			</ul>
			</div>
			<!-- arrow -->
				<span class="als-next"><img src="${path}/recoSlide/thin_right_arrow_333.png" alt="next" title="next" /></span>
			</div>
		</section>
	</div>
	
	<!-- 매거진 -->
	<div class="thumb-slide-wrap thumb-slide-type02">
		<div class="thumb-slide-tit">추천 매거진</div>
		<div class="thumb-slide-txt">MAGAZINE</div>
		<ul	class="thumb-slide-list recommend-magazine-class swiper-container swiper-container-initialized swiper-container-horizontal">
			<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
				<li class="swiper-slide thumb-slide swiper-slide-active" style="width: 334.75px; margin-right: 50px;">
					<a href="view-magazine.html?id=244" class="thumb-slide-link" title="이번주, 적립금을 사용해도 줄지 않아요!"> 
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/cc089080-2531-11ea-be70-61e81fa988df-resize.jpg" class="thumb-slide-img" alt="이번주, 적립금을 사용해도 줄지 않아요!"> 
						<span class="thumb-slide-play">재생</span>
					</a> 
					<span class="thumb-slide-link-type">취미코드 [마법의산타주머니]</span> 
					<span class="thumb-slide-link-tit">이번주, 적립금을 사용해도 줄지 않아요!</span>
				</li>
				
				<li class="swiper-slide thumb-slide" style="width: 334.75px; margin-right: 50px;">
					<a href="view-magazine.html?id=242" class="thumb-slide-link" title="회원 환급 이벤트 " 풀네임을 외쳐주세요 "">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/b86aa440-27b2-11ea-be70-61e81fa988df-resize.jpg" class="thumb-slide-img" alt="회원 환급 이벤트 "> 
						<span class="thumb-slide-play">재생</span>
					</a>
					<span class="thumb-slide-link-type">멤버십 등급에 따른 파격 환급 이벤트 (-50%)</span>
					<span class="thumb-slide-link-tit">회원 환급 이벤트 "풀네임을 외쳐주세요"</span>
				</li>
				
				<li class="swiper-slide thumb-slide" style="width: 334.75px; margin-right: 50px;">
					<a href="view-magazine.html?id=239" class="thumb-slide-link" title="그때그시절 동심찾기! 스킬자수 런칭 이벤트">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/9da2ee60-1a2e-11ea-add4-09214dce28ac-resize.jpg" class="thumb-slide-img" alt="그때그시절 동심찾기! 스킬자수 런칭 이벤트">
						<span class="thumb-slide-play">재생</span>
					</a>
					<span class="thumb-slide-link-type">취미코드 [빽투더초딩]</span>
					<span class="thumb-slide-link-tit">그때그시절 동심찾기! 스킬자수 런칭 이벤트</span>
				</li>
				
				<li class="swiper-slide thumb-slide" style="width: 334.75px; margin-right: 50px;">
					<a href="view-magazine.html?id=233" class="thumb-slide-link" title="재봉틀 클래스 런칭 행운 이벤트!">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/b72c0550-14d0-11ea-af2a-6372aa0ef6f4-resize.jpg" class="thumb-slide-img" alt="재봉틀 클래스 런칭 행운 이벤트!">
						<span class="thumb-slide-play">재생</span>
					</a>
					<span class="thumb-slide-link-type">취미코드 [행운의재봉틀]</span>
					<span class="thumb-slide-link-tit">재봉틀 클래스 런칭 행운 이벤트!</span>
				</li>
			</div>
			<span class="swiper-notification" aria-live="assertive"	aria-atomic="true"></span>
		</ul>
		<div class="thumb-slide-btn-wrap">
			<button type="button" class="thumb-slide-btn thumb-btn-prev magazine-btn-prev">이전</button>
			<button type="button" class="thumb-slide-btn thumb-btn-next magazine-btn-next">다음</button>
		</div>
	</div>
	
	<!--  인스타그램 -->
	<div class="hf-thumb-wrap">
		<div class="hf-thumb-tit-wrap">
			<div class="hf-thumb-tit">#hobbyful</div>
			<div class="hf-thumb-txt">INSTAGRAM</div>
		</div>
		<!-- 인스타그램 시작 -->
		<ul class="hf-thumb-list">
			<!-- 1번 -->
			<li class="hf-thumb">
				<a href="https://www.instagram.com/p/B6kfDm0HPbO" target="_blank" class="thumb-link" title>
					<img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/74396237_2672156873071062_391885237737659200_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=106&amp;_nc_ohc=qFFQZPxjONcAX859v7P&amp;oh=6c34295ab1e2cc13b6f5b91e89e7f2a9&amp;oe=5E9DC0D7" class="thumb-img">
				</a>
			</li>
	
			<!-- 2번 -->
			<li class="hf-thumb">
				<a href="https://www.instagram.com/p/B6hs4KeHdoB" target="_blank" class="thumb-link" title>
					<img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/78964845_548509246004107_8921889499077506650_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=107&amp;_nc_ohc=knVtlHE7zREAX9S-qXp&amp;oh=3db0277d5cc4d3146a3556745ee37a8a&amp;oe=5E8D51E3" class="thumb-img">
				</a>
			</li>
	
			<!-- 3번 -->
			<li class="hf-thumb">
				<a href="https://www.instagram.com/p/B6gMNLpBdXn" target="_blank" class="thumb-link" title>
					<img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/79188020_187213869076286_8053696300353194058_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=102&amp;_nc_ohc=DnOXiE9xrAcAX_e4lBp&amp;oh=91887c41245fb08258fd498eacb46a57&amp;oe=5E94FF51" class="thumb-img">
				</a>
			</li>
	
			<!-- 4번 -->
			<li class="hf-thumb">
				<a href="https://www.instagram.com/p/B6f7_TWJNM9" target="_blank" class="thumb-link" title>
					<img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c180.0.1080.1080a/s640x640/79585428_214429429557123_4953305897266218443_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=103&amp;_nc_ohc=2fnSSsK3pDEAX_Sh9gk&amp;oh=31cc22aa2f7e22eefb1cade846a3c226&amp;oe=5E9F9446" class="thumb-img">
				</a>
			</li>
		</ul>
	</div>
</div>

<!-- footer있던 자리 -->
<script id="mainSlideTemplate" type="text/x-jsrender-template" data-jsv-tmpl="jsvTmpl">
{{for list}}
<li class="swiper-slide hf-tracker-item" style="background:{{:hb_bgcolor}}" data-tracker-id="{{:hb_idx}}">
{{if hb_link}}<a href="{{:hb_link}}" title="{{:hb_title}}">{{/if}}
<picture>
<source media="(max-width: 970px)" srcset="{{:img_url_mobile}}" alt="{{:hb_title}}">
<img src="{{:img_url_pc}}" alt="{{:hb_title}}">
</picture>
{{if hb_link}}</a>{{/if}}
</li>
{{/for}}
	</script>

</body>
</html>