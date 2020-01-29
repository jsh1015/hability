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
<script type="text/javascript">
	function check() {
		var login = document.login
		if(login.emailid.value == "")
			alert("아이디를 입력하세요")
			return false;
		else if(login.pass.value == "")
			alert("비밀번호를 입력하세요")
			return false;
			
	}
</script>

<body>
<div class="join-cont" >
	<h2 class="layer-tit">로그인 하기</h2>
	<div class="join-type-wrap">
		<div class="float-wrap">
			<div class="join-type-cont">
			<a href="${path}/user/naver_login.shop">
				<button title="네이버로 로그인" class="btn-join-type btn-join-naver">
					<span class="ico-join-type ico-join-naver"></span>네이버로 로그인
				</button>
			</a>

				<button title="카카오톡으로 로그인" class="btn-join-type btn-join-kakaotalk">
					<span class="ico-join-type ico-join-kakaotalk"></span>카카오톡으로 로그인
				</button>
			</div>
			<div class="join-type-txt-wrap">
				<span class="join-type-txt">또는</span>
			</div>
			<form:form modelAttribute="user" method="post" action="login.shop" name="login"><!-- submit보내면 가는곳 -->
				<input type="hidden" name="name" value="의미없는 이름"/>		
				<input type="hidden" name="passck" value="의미없는 이름"/>		
				<input type="hidden" name="nickname" value="의미없는 이름"/>
				<div class="join-type-cont">
					<ul class="login-email-wrap">
						<spring:hasBindErrors name="user">
							<font color="blue">
								<c:forEach items="${errors.globalErrors}" var="error">
									<spring:message code="${error.code }" />
								</c:forEach><!-- 글로벌 에러 발생하는위치 -->
							</font>
						</spring:hasBindErrors>
					
						<li class="login-email">
							<form:input path ="emailid" id="emailid" placeholder="아이디 (이메일)" class="login-input" />
							<font color="black"><form:errors path="emailid"/></font>
						</li>
						<li class="login-email">
							<input type="password" id="pass" name="pass" class="login-input" placeholder="비밀번호">
							<font color="black"><form:errors path="pass"/></font>
						</li>
						<li class="login-keep">
							<button title="로그인" class="btn-join a-submit" type="submit" onclick="return check();">로그인</button>
						</li>
					</ul>
				</div>
			</form:form>
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
</body>
</html>