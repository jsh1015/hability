<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
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
<form:form modelAttribute="user" method="post" action="login.shop"><!-- submit보내면 가는곳 -->
	<div class="join-cont" >
		<h2 class="layer-tit">로그인 하기</h2>
		<div class="join-type-wrap">
			<div class="float-wrap">
				<div class="join-type-cont">
				
					<button title="네이버로 로그인" class="btn-join-type btn-join-naver">
					<a href="${naver_url}" />
						<span class="ico-join-type ico-join-naver"></span>네이버로 로그인
					</button>
					<button title="카카오톡으로 로그인" class="btn-join-type btn-join-kakaotalk">
						<span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 로그인
					</button>
				</div>
				<div class="join-type-txt-wrap">
					<span class="join-type-txt">또는</span>
				</div>
				<div class="join-type-cont">
					<ul class="login-email-wrap">
						<li class="login-email"><input type="email"
							id="emailid" class="login-input" placeholder="아이디 (이메일)">
						<div class="join-txt-warning login-email-warning"></div></li>
						<li class="login-email"><input type="password"
							id="pass" class="login-input" placeholder="비밀번호">
						<div class="join-txt-warning login-password-warning"></div></li>
						<li class="login-keep">
							<button title="로그인" class="btn-join a-submit">로그인</button>
						</li>
					</ul>
				</div>
			</div>
			<div class="float-wrap">
				<div class="login-find-wrap">
					<ul class="login-find-list">
						<li class="login-find"><a href="#findid" title="아이디 찾기"
							class="btn-login-find btn-find-id">아이디 찾기</a></li>
						<li class="login-find"><a href="#findpassword" title="비밀번호 찾기"
							class="btn-login-find btn-find-pw">비밀번호 찾기</a></li>
					</ul>
				</div>
				<div class="login-bottom-wrap"
					data-gtm-vis-first-on-screen-6759522_106="1543"
					data-gtm-vis-recent-on-screen-6759522_106="2244000"
					data-gtm-vis-total-visible-time-6759522_106="100"
					data-gtm-vis-has-fired-6759522_106="1">
					아직 하비풀 회원이 아니신가요?<a href="join.shop" title="회원가입"
						class="link-join a-join">회원가입</a>
				</div>
			</div>
		</div>
		<a href="#close" title="닫기" class="btn-layer-close a-close">닫기</a>
	</div>
</form:form>
</body>
</html>