<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=""><head lang="ko" id="hobbyful">
<title>하비풀 - 취미를 만나 일상이 아름다워지다.</title>
	<link rel="stylesheet" type="text/css" href="${path}/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/awesomplete/awesomplete.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_base.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_effect.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_responsible.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/style_nalrarang.css">

<body>
<div class="join-cont" style="z-index: 500;">
	<div class="join-cont join-select"
		data-gtm-vis-recent-on-screen-6759522_8="1433"
		data-gtm-vis-first-on-screen-6759522_8="1433"
		data-gtm-vis-total-visible-time-6759522_8="100"
		data-gtm-vis-has-fired-6759522_8="1">
		<h2 class="layer-tit">회원가입</h2>
		<div class="join-type-wrap">
			<div class="join-type-cont">
				<a href="${url}">
				<button title="네이버로 로그인" class="btn-join-type btn-join-naver">
					<span class="ico-join-type ico-join-naver"></span>네이버로 가입
				</button></a>
				<button title="카카오톡으로 로그인" class="btn-join-type btn-join-kakaotalk">
					<span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 가입
				</button>
			</div>
			<div class="join-type-txt-wrap">
				<span class="join-type-txt">또는</span>
			</div>
			<div class="join-type-cont">
				<a href="userEntry.shop">
				<button title="이메일로 가입" class="a-email btn-join-type btn-join-email">
					<span class="ico-join-type ico-join-email"></span>이메일로 가입
				</button></a>
				<div class="join-info">
					본인은 만 14세 이상이며, 회원 가입하면 하비풀의 <a href="/term-provision.html"
						title="서비스 이용약관" class="link-info" target="_blank">서비스 이용약관</a>, <a
						href="/term-privacy.html" title="개인정보 취급방침" class="link-info"
						target="_blank">개인정보 취급방침</a>에 동의하는 것입니다.
				</div>
			</div>
			<div class="join-login">
				이미 회원이신가요? <a href="login.shop" title="로그인" class="link-login a-login">로그인</a>
			</div>
		</div>
		<button title="닫기" class="btn-layer-close a-close">닫기</button>
	</div>
</div>

<script>
HF.DATA.params = {};
</script>
<script type="text/javascript" src="/static/js/module/HF._init.js?bid=bHasJk4dKL"></script>
<!-- Page Load -->
<script id="orderListTemplate" type="text/x-jsrender" data-jsv-tmpl="jsvTmpl">
{{if !list.length}}
<div class="no-view-wrap">
<div class="no-view-tit">아직 주문하신 클래스가 없습니다.</div>
<div class="no-view-txt">하비풀에서 새로운 취미를 가져보세요!</div>
<a href="/class.html" title="클래스 보러가기" class="btn-no-view">클래스 보러가기</a>
</div>
{{else}}
<section class="order-list">
{{for list}}
<article>
<header>
<ul>
<li><span class="i-title">주문번호</span> <span class="i-value">{{:order_id}}</span></li>
<li><span class="i-title">신청일</span> <span class="i-value">{{:disp_order_regdate}}</span></li>
<li class="a-btn"><a href="${path}/user/mypage.shop?m=order&s=orderDetail&order_id={{:order_idx}}">주문상세보기</a></li>
</ul>
</header>
<div class="area-content">
<ul>
{{for classList}}
<li class="i-product">
<ul>
<li class="i-thumbnail">
<img src="{{:disp_class_thumbnail}}" alt="">
</li>
<li class="i-name">
{{:class_name}}
</li>
<li class="i-option">
{{:class_option_name}}
</li>
<li class="i-status">
{{:~root.stateCode[oc_status]}}
</li>
<li class="i-qty">
수량 : {{:oc_quantity}}
</li>
</ul>
</li>
{{/for}}
</ul>
</div>
</article>
{{/for}}
</section>
<div class="paging-num-wrap">
{{for start=1 end=totalPage itemVar="~i"}}
{{if ~i == ~root.orderPage}}
<a href="${path}/user/mypage.shop?m=order&s=order&page={{:}}" title="{{:}}" data-page="{{:}}" class="order-page-btn btn-num btn-num-on">{{:}}</a>
{{else}}
<a href="${path}/user/mypage.shop?m=order&s=order&page={{:}}" title="{{:}}" data-page="{{:}}" class="order-page-btn btn-num">{{:}}</a>
{{/if}}
{{/for}}
</div>
{{/if}}
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/postcode/api/core/191007/1570443254160/191007.js"></script>

<script type="text/javascript" src="/bower_components/printThis/printThis.js"></script>
<script type="text/javascript" src="${path}/js/page/mypage.js"></script>

 
<noscript></noscript>

<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=45#channel=f3aae2a4d907ebc&amp;origin=https%3A%2F%2Fhobbyful.co.kr" style="border: none;"></iframe></div><div></div></div>
</div>
</body>
</html>