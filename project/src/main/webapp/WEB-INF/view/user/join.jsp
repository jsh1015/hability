<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=""><head>
</head>
<body>
<div class="layer-wrap join-wrap" id="join-wrap" style="display: block;">
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
						<button title="이메일로 가입" class="a-email btn-join-type btn-join-email showuserEntry">
							<span class="ico-join-type ico-join-email"></span>이메일로 가입
						</button>
					<div class="join-info">
					본인은 만 14세 이상이며, 회원 가입하면 하빌리티의 <a href="/term-provision.html" title="서비스 이용약관" class="link-info" target="_blank">서비스 이용약관</a>, 
					<a href="/term-privacy.html" title="개인정보 취급방침" class="link-info" target="_blank">개인정보 취급방침</a>에 동의하는 것입니다.
					</div>
				</div>
				<div class="join-login">
					이미 회원이신가요? <a href="#login" title="로그인" class="link-login a-login showlogin">로그인</a>
				</div>
			</div>
			<button title="닫기" class="btn-layer-close a-close">닫기</button>
		</div>
	</div>
</body>
</html>