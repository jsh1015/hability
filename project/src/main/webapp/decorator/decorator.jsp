<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- 클래스 신청하기 모달 라이브러리 DETAIL Modal -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script type="text/javascript" src="${path}/jquery/js/HF.js"></script>
<script type="text/javascript" src="${path}/jquery/js/page/user.js"></script>
	<meta name="description" content="취미로운 일상을 제안하는 온라인 취미 클래스. 취미 배달, 취미 정기구독">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="format-detection" content="telephone=no">
	<!-- 970px 미만에서만 적용-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no, minimal-ui">
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700|Roboto+Slab:400,700|Lato:400,700,900" rel="stylesheet" media="all" onload="this.media='all';">
	<%-- <link rel="stylesheet" type="text/css" href="${path}/css/swiper.min.css"> --%>
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
</head>
<body class="">
<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KJXG8SF" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
<div class="wrap" id="wrap">
	<header class="header-wrap" id="header-wrap"><!-- 햄버거 버튼 클릭 시 menu-on 클래스 추가 -->
		<h1 class="logo-h1">
			<a href="${path}/user/main.shop" title="hobbyful" class="logo-hobbyful">Hability</a>
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
							<li class="hf-func s-empty">
								<span class="i-count txt-cart-count"></span>
								<a href="${path}/order/cartList.shop" title="취미바구니" class="btn-func func-box">취미바구니</a>
								<div class="txt-func02">취미바구니</div>
							</li>
							<li class="hf-func s-empty">
								<a href="${path}/user/myClass.shop" title="내 클래스" class="btn-func func-myclass">내 클래스</a>
								<div class="txt-func03">내 클래스</div>
							</li>
						</ul>
					</div>
					<ul class="menu-list">
						<li class="menu">
							<a href="${path}/list/hobbyClass.shop" class="btn-menu menu-class">취미 클래스<em class="menu-txt -w">CLASS</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/diystore.shop" class="btn-menu menu-class">DIY 스토어<em class="menu-txt -w">DIY STORE</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/magazine.shop" class="btn-menu menu-magazine">매거진<em class="menu-txt -w">MAGAZINE</em></a>
						</li>
						<li class="menu">
							<a href="${path}/list/service.shop" class="btn-menu menu-service">하비풀 소개<em class="menu-txt -w">ABOUT</em></a>
						</li>
					</ul>
				</div>
				<div class="gnb-wrap">
					<ul class="gnb-list">
					<c:if test="${empty sessionScope.loginUser}">
						<li class="gnb gnb-login" style="display: list-item;">
							<a href="javascript:dologin()" class="btn-gnb header_login">로그인</a>
						</li>
						<li class="gnb gnb-join" style="display: list-item;">
							<a href="javascript:dojoin()" title="회원가입" class="btn-gnb header_join">회원가입</a>
						</li>
						<li class="gnb gnb-mypage">
							<a href="javascript:dologin()" title="마이페이지" class="btn-gnb header_mypage">마이페이지</a>
						</li>
						<li class="gnb gnb-customer">
							<a href="/customer.html" title="고객센터" class="btn-gnb">고객센터</a>
						</li>
					</c:if>
					<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.emailid ne 'admin@naver.com'}">
						<li class="gnb gnb-logout" style="display: list-item;">
							<a href="logout.shop" title="로그아웃" class="btn-gnb header_logout">로그아웃</a>
						</li>
						<li class="gnb gnb-favorite" style="display: list-item;">
							<a href="${path}/user/mypage.shop?id=${sessionScope.loginUser.emailid}&m=hobby" title="취미 보관함" class="btn-gnb header_favorite">취미 보관함</a>
						</li>
						<li class="gnb gnb-mypage">
							<a href="${path}/user/mypage.shop?id=${sessionScope.loginUser.emailid}" title="마이페이지" class="btn-gnb header_mypage">마이페이지</a>
						</li>
						<li class="gnb gnb-customer">
							<a href="/customer.html" title="고객센터" class="btn-gnb">고객센터</a>
						</li>
					</c:if>
					<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.emailid eq 'admin@naver.com'}">
						<li class="gnb gnb-logout" style="display: list-item;">
							<a href="logout.shop" title="로그아웃" class="btn-gnb header_logout">로그아웃</a>
						</li>
						<li class="gnb gnb-admin" style="display: list-item;">
							<a href="../admin/admain.shop" title="관리자 페이지" class="btn-gnb header_admin">관리자 페이지</a>
						</li>
					</c:if>
					</ul>
					<div class="hobbyful-txt -w">You're hability!</div>
				</div>
				<a href="javascript:;" title="닫기" class="btn-menu-close -w" onclick="hideMenu();">닫기</a>
		</div>
		
		<div class="search-cont" id="search-cont">
			<h2 class="search-tit">검색</h2>
			<div class="search-area">
				<button type="button" class="btn-search2">검색</button>
				<div class="search-input-wrap">
					<input type="text" placeholder="클래스와 매거진을 검색해 보세요!" class="search-input">
					<ul class="search-txt-list search-keyword-text"></ul>
				</div>
				<button type="button" class="btn-search-close" onclick="hideSearch();">닫기</button>
			</div>
			<div class="search-keyword-wrap">
				<div class="search-keyword-tit">이런 검색어는 어때요?</div>
				<ul class="search-keyword-list search-recommend-list"></ul>
			</div>
			<div class="search-result-wrap">
				<div class="search-result-tab-wrap"></div>
				<div class="search-result-cont thumb-slide-type02">
					<ul class="thumb-slide-list search-magazine-list"></ul>
				</div>
				<div class="search-result-cont">
					<ul class="class-list-wrap search-class-list"></ul>
				</div>
			</div>
		</div>
	</header>

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
				<p class="f-info "><strong class="f-info-tit f-info-title">㈜하비풀</strong></p>
				<p class="f-info f-info-address">서울특별시 강남구 테헤란로84길 16 세풍빌딩 10층</p>
				<p class="f-info">대표자: <span class="f-info-CEOname">양순모</span>ㅣ사업자등록증번호:<span class="f-info-companynumber">717-88-00289</span></p>
				<p class="f-info ">통신판매 신고번호: <span class="f-info-salenumber">2017-서울성동-0584호</span></p>
				<p class="f-info ">호스팅서비스: <span class="f-info-hostingby">(주)하비풀</span></p>
				<p class="f-info "><span class="f-info-contact">02-6214-0529</span> (문의시간 : <span class="f-info-opentime">10:00 ~ 17:00 / 점심시간 : 13:00 ~ 14:00</span>) </p>
				<p class="f-info f-info-email">help@hobbyful.co.kr</p>
				<p class="f-copyright">© hobbyful Inc. 2018 All Rights Reserved.</p>
			</div>
		</div>
	</footer>
	<div class="layer-wrap popup-wrap" id="popup-wrap">
		<div class="bg-layer-wrap" onclick="Popup.hide();"></div>
	</div>
	
	<!-- 팝업 모달창 -->
<div class="layer-wrap popup-wrap" id="popup-wrap" style="display:none">
	<div class="popup-layer"></div>
	<div class="popup-cont" style="top:50%; margin-top:-137px;">
		<h2 class="layer-tit">구독 신청 실패</h2>
		<div class="popup-txt" style="min-height:78px; width:100%; text-align:center; display:table;">
			<span style="display:table-cell; vertical-align:middle;">수령자명을 입력해주세요.</span>
		</div>
		<div class="popup-btn"><button class="btn-popup alert_btn_1">확인</button></div>
	</div>
	<a href="javascript:;" title="닫기" class="btn-layer-close" onclick="Popup.hide();">닫기</a>
</div>

	
<!-- !!!!!!!!!!!!!!!로그인 모달창!!!!!!!!!!!!!!!!! -->
<div class="layer-wrap login-wrap" id="login-wrap">
	<div class="bg-layer-wrap a-close"></div>
	<div class="join-cont">
		<h2 class="layer-tit">로그인 하기</h2>
		<div class="join-type-wrap">
			<div class="float-wrap">
				<div class="join-type-cont">
					<button title="네이버로 로그인" class="btn-join-type btn-join-naver">
					<span class="ico-join-type ico-join-naver"></span>네이버로 로그인</button>
					<button title="카카오톡으로 로그인" class="btn-join-type btn-join-kakaotalk">
					<span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 로그인</button></div>
				<div class="join-type-txt-wrap"><span class="join-type-txt">또는</span></div>
		<form:form modelAttribute="user" method="post" action="../user/login.shop"><!-- submit보내면 가는곳 -->     
				<div class="join-type-cont">
					<ul class="login-email-wrap">
						<li class="login-email">
                     <input type="email" id="emailid" name="emailid" class="login-input" placeholder="아이디 (이메일)">
                  </li>
                  <li class="login-email">
                     <input type="password" id="pass" name="pass" class="login-input" placeholder="비밀번호">
                  </li>
						<li class="login-keep">
		                    <button title="로그인" class="btn-login login_user" type="submit">로그인</button>
		                </li>
					</ul>
				</div>
		</form:form>
			</div>
			<div class="float-wrap">
				<div class="login-find-wrap">
					<ul class="login-find-list">
						<li class="login-find">
							<a href="#findid" title="아이디 찾기" class="btn-login-find btn-find-id">아이디 찾기</a></li>
						<li class="login-find">
							<a href="#findpassword" title="비밀번호 찾기" class="btn-login-find btn-find-pw">비밀번호 찾기</a></li>
					</ul>
				</div>
				<div class="login-bottom-wrap" data-gtm-vis-recent-on-screen-6759522_106="4107" data-gtm-vis-first-on-screen-6759522_106="4107" data-gtm-vis-total-visible-time-6759522_106="100" data-gtm-vis-has-fired-6759522_106="1">아직 하비풀 회원이 아니신가요?
					<a href="javascript:dojoin()" title="회원가입" class="link-join a-join">회원가입</a></div>
			</div>
		</div>
		<a href="#close" title="닫기" class="btn-layer-close a-close">닫기</a></div>
</div>

<!-- 회원가입 모달창!!!!!!!!!!!!!!!!! --> 
	<div class="layer-wrap join-wrap" id="join-wrap" width="100%">
		<div class="bg-layer-wrap a-close"></div>
		<div class="join-cont join-select" data-gtm-vis-recent-on-screen-6759522_8="3190" data-gtm-vis-first-on-screen-6759522_8="3190" data-gtm-vis-total-visible-time-6759522_8="100" data-gtm-vis-has-fired-6759522_8="1">
			<h2 class="layer-tit">회원가입</h2>
			<div class="join-type-wrap">
				<div class="join-type-cont">
					<button title="네이버로 가입" class="a-naver btn-join-type btn-join-naver"><span class="ico-join-type ico-join-naver"></span>네이버로 가입</button>
					<button title="카카오톡으로 가입" class="a-kakao btn-join-type btn-join-kakaotalk"><span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 가입</button>
				</div>
				<div class="join-type-txt-wrap"><span class="join-type-txt">또는</span></div>
				<div class="join-type-cont">
						<button title="이메일로 가입" class="a-email btn-join-type btn-join-email">
							<span class="ico-join-type ico-join-email"></span>이메일로 가입
						</button>
					<div class="join-info">
					본인은 만 14세 이상이며, 회원 가입하면 하빌리티의 <a href="/term-provision.html" title="서비스 이용약관" class="link-info" target="_blank">서비스 이용약관</a>, 
					<a href="/term-privacy.html" title="개인정보 취급방침" class="link-info" target="_blank">개인정보 취급방침</a>에 동의하는 것입니다.
					</div>
				</div>
				<div class="join-login">
					이미 회원이신가요? <a href="javascript:dologin()" title="로그인" class="link-login a-login">로그인</a>
				</div>
			</div>
			<button title="닫기" class="btn-layer-close a-close">닫기</button>
		</div>
	</div>
	
<!-- 이메일로 가입하기 -->
	<div class="layer-wrap join-wrap" id="join-write" width="100%">
		<div class="bg-layer-wrap a-close"></div>
		<form:form modelAttribute="user" method="post" action="userEntry.shop"><!-- submit보내면 가는곳 -->
		   <div class="join-cont join-write">
		      <h2 class="layer-tit">회원가입</h2>
		      <div class="join-thumb-wrap">
		         <div class="join-thumb"
		            data-gtm-vis-recent-on-screen-6759522_100="268748"
		            data-gtm-vis-first-on-screen-6759522_100="268748"
		            data-gtm-vis-total-visible-time-6759522_100="100"
		            data-gtm-vis-has-fired-6759522_100="1">
		            <label for="btn-add-thumb" class="label-add-thumb2"></label>
		            <input name="userimg" type="file" class="btn-add-thumb"
		            id="btn-add-thumb" accept="file_extension|audio/*|video/*|image/*|media_type">
		         </div>
		      </div>
		      <div class="join-type-email">
		         <div class="join-txt-wrap">
		            <div class="join-txt-cont mb10">
		               <label class="join-txt-label" for="join-txt-email">이메일</label>
		               <div class="awesomplete">
		                  <input name="emailid" type="email" value="" placeholder="이메일 주소를 입력해 주세요."
		                     class="join-txt-input email-join-txt-input" id="join-txt-email"
		                     autocomplete="off" aria-expanded="false"
		                     aria-owns="awesomplete_list_1" role="combobox">
		                  <font><form:errors path="emailid" /></font>
		                  <ul hidden="" role="listbox" id="awesomplete_list_1"></ul>
		                  <span class="visually-hidden" role="status" aria-live="assertive"
		                     aria-atomic="true">Type 2 or more characters for results.</span>
		               </div>
		               <ul class="auto-complete-list">
		               </ul>
		            </div>
		         </div>
		         <div class="join-txt-wrap join-txt-wrap-password">
		            <div class="join-txt-cont">
		               <label class="join-txt-label" for="join-txt-pw">비밀번호</label> <input
		                  name="pass" required="" type="password"
		                  placeholder="비밀번호는 6~16자 영문, 숫자를 사용해주세요." class="join-txt-input"
		                  id="join-txt-pw">
		                  <font><form:errors path="pass" /></font>
		            </div>
		            <div class="join-txt-cont">
		               <label class="join-txt-label" for="join-txt-confirm">비밀번호 확인</label>
		               <input name="userpasscheck" required="" type="password"
		                  placeholder="비밀번호는 6~16자 영문, 숫자를 사용해주세요." class="join-txt-input">
		                  <font>
		                     <form:errors path="pass" />
		                  </font>
		            </div>
		         </div>
		         <div class="join-txt-wrap">
		            <div class="join-txt-cont join-name-input">
		               <label class="join-txt-label" for="join-txt-name">이름</label> <input
		                  name="name" value="" required="" type="text"
		                  placeholder="이름을 입력해 주세요." maxlength="5" class="join-txt-input">
		                  <font><form:errors path="name" /></font>
		            </div>
		         </div>
		         <div class="join-txt-wrap">
		            <div class="join-txt-cont">
		               <label class="join-txt-label" for="join-txt-nick">닉네임</label> <input
		                  name="nickname" required="" type="text" value=""
		                  placeholder="닉네임은 2~12글자로 입력해주세요." maxlength="12"
		                  class="join-txt-input">
		                  <font><form:errors path="nickname" /></font>
		            </div>
		         </div>
		         <div class="join-txt-wrap">
		            <div class="join-txt-cont">
		               <label class="join-txt-label" for="join-txt-birth">생년월일</label> <input
		                  name="birth" type="text" value="" placeholder="예) 19840411"
		                  class="join-txt-input" maxlength="8">
		                  <font><form:errors path="birth" /></font>
		               <div class="join-txt-warning join-birth-warning">생년월일을 다시확인해주세요.</div>
		            </div>
		         </div>
		         <div class="join-txt-wrap">
		            <div class="join-txt-cont">
		               <label class="join-txt-label" for="join-txt-phone">휴대폰번호</label> <input
		                  name="phone" type="tel" value="" placeholder="예) 01099849078"
		                  class="join-txt-input" maxlength="11">
		            </div>
		            <div class="join-txt-info">* 휴대폰 번호로 비밀번호 찾기 및 재설정을 하실 수 있습니다.</div>
		         </div>
		      </div>
		      <div class="join-btn-wrap">
		         <button title="가입하기" class="btn-join a-submit">가입하기</button>
		      </div>
		      <button title="닫기" class="btn-layer-close a-close">닫기</button>
		   </div>
		</form:form>
	</div>
	
</div>

	<!-- <div id="ch-plugin">
		<div id="ch-plugin-script" style="display: none">
			<iframe id="ch-plugin-script-iframe"
				style="position: relative !important; height: 100% !important; width: 100% !important; border: none !important;"></iframe>
		</div>
		<div id="ch-plugin-core">

		<div class="sc-eNNmBn cXBieY">
			<div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div>
			<div class="sc-jUpvKA ccOxya">
				<div size="34" class="sc-kGXeez kGMzSU"></div>
				<div class="sc-fkyLDJ epSaPl">(알 수 없음)</div>
				<div class="sc-iCwjlJ hRSOFL">9:00am</div>
			</div>
			<div class="sc-eopZyb bYeAnX">
				<div class="sc-jRuhRL coGTKb">
					<span class=""></span>
				</div>
			</div>
		</div>
		</div>
		<div class="sc-eNNmBn cXBieY">
		<div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div>
		<div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div>
		<div class="sc-fkyLDJ epSaPl">(알 수 없음)</div>
		<div class="sc-iCwjlJ hRSOFL">9:00am</div>
		</div>
		<div class="sc-eopZyb bYeAnX">
		<div class="sc-jRuhRL coGTKb">
		<span class=""></span>
		</div>
		</div></div></div> 
</div>-->
</body>
</html>