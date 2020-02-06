<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="">
<head>

<script type="text/javascript">
	function check() {
		var login = document.login
		if(login.emailid.value == ""){
			alert("아이디를 입력하세요")
			return false;
		}else if(login.pass.value == ""){
			alert("비밀번호를 입력하세요")
			return false;
		}
	}
</script>

</head>
<body>
<div class="wrap layer-on login-on">
	<div class="modal layer-wrap login-wrap" id="login login-wrap">
		<div class="bg-layer-wrap a-close"></div>
		<div class="join-cont">
			<h2 class="layer-tit">로그인 하기</h2>
			<div class="join-type-wrap">
				<div class="float-wrap">
					<div class="join-type-cont">
						<a href="${url}">
							<button title="네이버로 로그인" class="btn-join-type btn-join-naver">
							<span class="ico-join-type ico-join-naver"></span>네이버로 로그인</button></a>
						<button title="카카오톡으로 로그인" class="btn-join-type btn-join-kakaotalk">
						<span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 로그인</button></div>
					<div class="join-type-txt-wrap"><span class="join-type-txt">또는</span></div>
			<form:form modelAttribute="user" method="post" name="login" onsubmit="return check()" action="../user/login.shop"><!-- submit보내면 가는곳 -->     
					<div class="join-type-cont">
						<ul class="login-email-wrap">
							<li class="login-email">
	                     <input type="email" id="emailid" name="emailid" class="login-input" placeholder="아이디 (이메일)" />
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
						<a href="#join" title="회원가입" class="link-join a-join showjoin">회원가입</a></div>
				</div>
			</div>
			<a href="#close" title="닫기" class="btn-layer-close a-close">닫기</a></div>
	</div>
</div>
</body>
</html>