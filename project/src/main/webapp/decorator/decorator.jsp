<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- 클래스 신청하기 모달 라이브러리 DETAIL Modal -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/jquery/js/HF.js"></script>
<script type="text/javascript" src="${path}/jquery/js/page/main.js"></script>
	<meta name="description" content="취미로운 일상을 제안하는 온라인 취미 클래스. 취미 배달, 취미 정기구독">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="format-detection" content="telephone=no">
	<!-- 970px 미만에서만 적용-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no, minimal-ui">
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700|Roboto+Slab:400,700|Lato:400,700,900" rel="stylesheet" media="all" onload="this.media='all';">
	<link rel="stylesheet" type="text/css" href="${path}/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/awesomplete/awesomplete.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_base.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_effect.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_responsible.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_nalrarang.css">
	
	<link rel="shortcut icon" href="${path}/img/favicon.png">
	<link rel="apple-touch-icon" href="${path}/img/m_favicon.png">
<title><decorator:title/></title>
<decorator:head />
<script type="text/javascript">
	
</script>
</head>
<body class="">
<div class="wrap" id="wrap">
	<header class="header-wrap" id="header-wrap"><!-- 햄버거 버튼 클릭 시 menu-on 클래스 추가 -->
		<h1 class="logo-h1">
			<a href="${path}/user/main.shop" title="Hability" class="logo-hobbyful">Hability</a>
		</h1>
		<a href="#openmenu" class="ico-menu -w" type="button" onclick="showMenu();"><!-- 새 소식 있을 경우 btn-menu-new 클래스 추가 -->
			<em class="ico-new">New</em>
		</a>
		<div class="bg-menu-wrap" id="bg-menu-wrap" onclick="hideMenu();"></div>
		
		<div class="menu-wrap">
			<div class="search-wrap">
				<button type="button" class="btn-search">검색</button>
				<span class="input-search-wrap">
					<input type="text" class="input-search" placeholder="관심있는 취미 키워드를 검색해보세요.">
				</span>
			</div>
				<div class="menu-cont">
					<div class="hf-func-wrap">
						<ul class="hf-func-list">
							<c:if test="${empty sessionScope.loginUser}">
							<li class="hf-func s-empty">
								<span class="i-count txt-cart-count"></span>
								<a href="#login" title="취미바구니" class="btn-func func-box showlogin">취미바구니</a>
								<div class="txt-func02">취미바구니</div>
							</li>
							<li class="hf-func s-empty">
								<a href="#login" title="내 클래스" class="btn-func func-myclass showlogin">내 클래스</a>
								<div class="txt-func03">내 클래스</div>
							</li>
							</c:if>
							<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.emailid ne 'admin@naver.com'}">
							<li class="hf-func s-empty">
								<span class="i-count txt-cart-count"></span>
								<a href="${path}/order/basketView.shop?emailid=${sessionScope.loginUser.emailid}" title="취미바구니" class="btn-func func-box">취미바구니</a>
								<div class="txt-func02">취미바구니</div>
							</li>
							<li class="hf-func s-empty">
								<a href="${path}/user/myClass.shop" title="내 클래스" class="btn-func func-myclass">내 클래스</a>
								<div class="txt-func03">내 클래스</div>
							</li>
							</c:if>
						</ul>
					</div>
					<ul class="menu-list">
						<li class="menu">
							<a href="${path}/list/hobbyClass.shop?board_type=1" class="btn-menu menu-class">취미 클래스<em class="menu-txt -w">CLASS</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/diystore.shop?board_type=2" class="btn-menu menu-class">DIY 스토어<em class="menu-txt -w">DIY STORE</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/magazine.shop?board_type=3" class="btn-menu menu-magazine">매거진<em class="menu-txt -w">MAGAZINE</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/service.shop" class="btn-menu menu-service">하빌리티 소개<em class="menu-txt -w">ABOUT</em></a>
						</li>
					</ul>
				</div>
				<div class="gnb-wrap">
					<ul class="gnb-list">
					<c:if test="${empty sessionScope.loginUser}">
						<li class="gnb gnb-login" style="display: list-item;">
							<a href="#login" class="btn-gnb header_login showlogin">로그인</a>
						</li>
						<li class="gnb gnb-join" style="display: list-item;">
							<a href="#join" title="회원가입" class="btn-gnb header_join showjoin">회원가입</a>
						</li>
						<li class="gnb gnb-mypage">
							<a href="#login" title="마이페이지" class="btn-gnb header_mypage showlogin">마이페이지</a>
						</li>
						<li class="gnb gnb-customer">
							<a href="/customer.html" title="고객센터" class="btn-gnb">고객센터</a>
						</li>
					</c:if>
					<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.emailid ne 'admin@naver.com'}">
						<li class="gnb gnb-logout" style="display: list-item;">
							<a href="${path}/user/logout.shop" title="로그아웃" class="btn-gnb header_logout">로그아웃</a>
						</li>
						<li class="gnb gnb-favorite" style="display: list-item;">
							<a href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}&m=hobby" title="취미 보관함" class="btn-gnb header_favorite">취미 보관함</a>
						</li>
						<li class="gnb gnb-mypage">
							<a href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}" title="마이페이지" class="btn-gnb header_mypage">마이페이지</a>
						</li>
						<li class="gnb gnb-customer">
							<a href="/customer.html" title="고객센터" class="btn-gnb">고객센터</a>
						</li>
					</c:if>
					<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.emailid eq 'admin@naver.com'}">
						<li class="gnb gnb-logout" style="display: list-item;">
							<a href="${path}/user/logout.shop" title="로그아웃" class="btn-gnb header_logout">로그아웃</a>
						</li>
						<li class="gnb gnb-admin" style="display: list-item;">
							<a href="../admin/userlist.shop" title="관리자 페이지" class="btn-gnb header_admin">관리자 페이지</a>
						</li>
					</c:if>
					</ul>
					<div class="hobbyful-txt -w">You're hability!</div>
				</div>
				<a href="javascript:;" title="닫기" class="btn-menu-close -w" onclick="hideMenu();">닫기</a>
		</div>
		
		<div class="search-cont search-cont" id="search-cont">
			<h2 class="search-tit">검색</h2>
			<div class="search-area">
				<button type="button" class="btn-search2">검색</button>
				<div class="search-input-wrap">
					<input type="text" placeholder="클래스와 매거진을 검색해 보세요!" class="search-input">
					<ul class="search-txt-list search-keyword-text">
						<li class="search-txt"><a href="#search" title="프랑스" class="search-txt-link">프랑스</a>
							<button type="button" class="btn-search-del">삭제</button></li>
					</ul>
				</div>
				<button type="button" class="btn-search-close" onclick="hideSearch();">닫기</button>
			</div>
			<div class="search-keyword-wrap">
				<div class="search-keyword-tit">이런 검색어는 어때요?</div>
				<ul class="search-keyword-list search-recommend-list"><li class="search-keyword">이런 검색어는 어때요?</li><li class="search-keyword"><a href="#;" title="프랑스자수" class="search-keyword-link">프랑스자수</a></li><li class="search-keyword"><a href="#;" title="마크라메" class="search-keyword-link">마크라메</a></li><li class="search-keyword"><a href="#;" title="수채화" class="search-keyword-link">수채화</a></li><li class="search-keyword"><a href="#;" title="색연필" class="search-keyword-link">색연필</a></li><li class="search-keyword"><a href="#;" title="멘티" class="search-keyword-link">멘티</a></li></ul>
			</div>
			<div class="search-result-wrap">
				<div class="search-result-tab-wrap">
					<a href="#search" title="클래스(24)" data-list="class" class="search-result-tab search-result-class search-result-tab-on">클래스<span class="search-tab-ea">(24)</span></a>
					<a href="#search" title="매거진(5)" data-list="magazine" class="search-result-tab search-result-magazine">매거진<span class="search-tab-ea">(5)</span></a>
				</div>
				<div class="search-result-cont thumb-slide-type02">
					<!-- 매거진 검색 내용 -->
					<ul class="thumb-slide-list search-list search-magazine-list" style="display:none">
						<li class="thumb-slide"><a href="view-magazine.html?id=92" class="thumb-slide-link" title="프랑스자수 꽃 향수 액자 클래스 TIP"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/d89bb6a0-227d-11e8-950b-71e3e689f0d5-resize.png" class="thumb-slide-img" alt="프랑스자수 꽃 향수 액자 클래스 TIP"><span class="thumb-slide-play">재생</span></a><span class="thumb-slide-link-type">더 화사하고 풍성한 꽃 향수 액자 만들기</span><span class="thumb-slide-link-tit">프랑스자수 꽃 향수 액자 클래스 TIP</span><span class="thumb-slide-link-info">2018.03.08 목요일 <em class="thumb-slide-link-nick">by hobbyful</em></span></li>
						<li class="thumb-slide"><a href="view-magazine.html?id=53" class="thumb-slide-link" title="초보라면, 프랑스자수 준비물 4"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/815777f0-87d0-11e7-b6a5-5d2c992718a2-resize.png" class="thumb-slide-img" alt="초보라면, 프랑스자수 준비물 4"><span class="thumb-slide-play">재생</span></a><span class="thumb-slide-link-type">프랑스자수 초보라면 이것부터!</span><span class="thumb-slide-link-tit">초보라면, 프랑스자수 준비물 4</span><span class="thumb-slide-link-info">2017.08.23 수요일 <em class="thumb-slide-link-nick">by hobbyful</em></span></li>
						<li class="thumb-slide"><a href="view-magazine.html?id=47" class="thumb-slide-link" title="프랑스자수 기초 스티치 소개"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/07060cf0-6c50-11e7-8f3b-db2d2c8c1ffe-resize.png" class="thumb-slide-img" alt="프랑스자수 기초 스티치 소개"><span class="thumb-slide-play">재생</span></a><span class="thumb-slide-link-type">금손이 아니어도 쉽게 따라할 수 있는</span><span class="thumb-slide-link-tit">프랑스자수 기초 스티치 소개</span><span class="thumb-slide-link-info">2017.07.19 수요일 <em class="thumb-slide-link-nick">by hobbyful</em></span></li>
						<li class="thumb-slide"><a href="view-magazine.html?id=32" class="thumb-slide-link" title="초보라면? 라인 프랑스자수!"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/abcb0150-3f6e-11e7-ab18-f1db694a0960-resize.png" class="thumb-slide-img" alt="초보라면? 라인 프랑스자수!"><span class="thumb-slide-play">재생</span></a><span class="thumb-slide-link-type">프랑스자수 초보라면 이것부터!</span><span class="thumb-slide-link-tit">초보라면? 라인 프랑스자수!</span><span class="thumb-slide-link-info">2017.05.23 화요일 <em class="thumb-slide-link-nick">by hobbyful</em></span></li>
						<li class="thumb-slide"><a href="view-magazine.html?id=18" class="thumb-slide-link" title="초보를 위한 프랑스자수 책 3"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/b549d980-82ef-11e7-93aa-bda96c9ca100-resize.png" class="thumb-slide-img" alt="초보를 위한 프랑스자수 책 3"><span class="thumb-slide-play">재생</span></a><span class="thumb-slide-link-type">프랑스자수의 매력에 빠져보아요!</span><span class="thumb-slide-link-tit">초보를 위한 프랑스자수 책 3</span><span class="thumb-slide-link-info">2017.05.16 화요일 <em class="thumb-slide-link-nick">by hobbyful</em></span></li>
					</ul>
				</div>
				<div class="search-result-cont">
					<ul class="class-list-wrap search-list search-class-list" style="">
						<li class="class-list"><a href="/product/DSYQOHl1ho" title="하비풀 프랑스자수 샘플러"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/415e4600-4183-11ea-a325-edad35d6d413-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">undefined</p><p class="class-list-info">하비풀 프랑스자수 샘플러</p></div></a></li>
						<li class="class-list"><a href="/product/N9krdsRc3R" title="진주조개 티코스터 프랑스자수 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/010f34b0-efdf-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">실버스노우</p><p class="class-list-info">진주조개 티코스터 프랑스자수 키트</p></div></a></li>
						<li class="class-list"><a href="/product/2U8lWSqLvm" title="블루밍 클래식 액자 프랑스자수 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/003c37a0-efbb-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">실버스노우</p><p class="class-list-info">블루밍 클래식 액자 프랑스자수 키트</p></div></a></li>
						<li class="class-list"><a href="/product/Uft1JmLhNG" title="프랑스자수 스타터키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/5fa6ce20-efe4-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">자수 도구</p><p class="class-list-info">프랑스자수 스타터키트</p></div></a></li>
						<li class="class-list"><a href="/product/FTFFV5W7SV" title="프랑스자수 달력 키트(2020년)"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/3b47b4f0-eb10-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">실버스노우</p><p class="class-list-info">프랑스자수 달력 키트(2020년)</p></div></a></li>
						<li class="class-list"><a href="/product/CByPbo7Rmv" title="포근포근 스웨터 프랑스자수 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/220667c0-eb10-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">솜씨</p><p class="class-list-info">포근포근 스웨터 프랑스자수 키트</p></div></a></li>
						<li class="class-list"><a href="/product/WSCngj2pJI" title="몬스테라가 있는 오후 프랑스자수 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/10574670-eb10-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">솜씨</p><p class="class-list-info">몬스테라가 있는 오후 프랑스자수 키트</p></div></a></li>
						<li class="class-list"><a href="/product/WdRnlbtDNm" title="프랑스자수 스티치 200 비기닝 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/fcf45aa0-eb0f-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">한 수 한 수 놓는</p><p class="class-list-info">프랑스자수 스티치 200 비기닝 키트</p></div></a></li>
						<li class="class-list"><a href="/product/UcjLFMFAyc" title="나의 달콤한 프랑스자수 비기닝 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/f12e2200-eb0f-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">집안 가득 퍼지는</p><p class="class-list-info">나의 달콤한 프랑스자수 비기닝 키트</p></div></a></li>
						<li class="class-list"><a href="/product/dZS3OFmpbk" title="나의 첫 스누피 향기 프랑스자수 키트"><div class="class-list-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/e73a8680-eb0f-11e9-ac24-737b6e1628bf-resize.jpg" alt="" class="thumb-class-list"></div><div class="class-list-cont"><p class="class-list-txt">귀여운 내친구</p><p class="class-list-info">나의 첫 스누피 향기 프랑스자수 키트</p></div></a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	
	
<!-- 로그인,회원가입 모달 -->
	<div class="modal login"></div>
	<div class="modal join"></div>
	<div class="modal userEntry"></div>
	
	
	<decorator:body />
	<footer class="footer-wrap">
		<div class="f-menu-wrap">
			<ul class="f-menu">
				<li><a href="/term-provision.html">서비스 이용약관</a></li>
				<li><a href="/term-privacy.html">개인정보취급방침</a></li>
				<!--<li><a href="/view-magazine.html?id=139">작가 지원하기</a></li>-->
			</ul>
		</div>
		<div class="f-info-wrap f-info-customer-wrap">
			<ul class="f-sns-wrap">
				<li class="f-sns"><a href="https://www.facebook.com/hobbyful" target="_blank" title="facebook" class="btn-facebook">facebook</a></li>
				<li class="f-sns"><a href="https://www.instagram.com/hobbyful" target="_blank" title="instargram" class="btn-instagram">instargram</a></li>
				<li class="f-sns"><a href="http://post.naver.com/hobbyful" target="_blank" title="naver" class="btn-naver">naver</a></li>
			</ul>
		</div>
		<div class="f-info-wrap">
			<div class="logo-hobbyful">hability</div>
			<div class="f-info-cont">
				<p class="f-info "><strong class="f-info-tit f-info-title">㈜하빌리티</strong></p>
				<p class="f-info f-info-address">서울특별시 금천구 가산디지털2로 115, 509호, 811호 (가산동, 대륭테크노타운 3차)</p>
				<p class="f-info">대표자: <span class="f-info-CEOname">하빌리티</span>ㅣ사업자등록증번호:<span class="f-info-companynumber">123-23-1234</span></p>
				<p class="f-info ">통신판매 신고번호: <span class="f-info-salenumber">2017-서울성동-0584호</span></p>
				<p class="f-info ">호스팅서비스: <span class="f-info-hostingby">(주)하빌리티</span></p>
				<p class="f-info "><span class="f-info-contact">02-6214-0529</span> (문의시간 : <span class="f-info-opentime">10:00 ~ 17:00 / 점심시간 : 13:00 ~ 14:00</span>) </p>
				<p class="f-info f-info-email">help@hability.co.kr</p>
				<p class="f-copyright">© hability Inc. 2018 All Rights Reserved.</p>
			</div>
		</div>
	</footer>
<!-- 	<div class="layer-wrap popup-wrap" id="popup-wrap">
		<div class="bg-layer-wrap" onclick="Popup.hide();"></div>
	</div>
 -->
</div>

</body>
</html>