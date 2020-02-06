<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=""><head></head>
<body>
<div class="layer-wrap join-wrap" id="join-write" style="display: block;">
	<div class="bg-layer-wrap a-close"></div>
	<form:form modelAttribute="user" method="post" action="userEntry.shop"><!-- submit보내면 가는곳 -->
	   <div class="join-cont">
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
	                  <font color="black"><form:errors path="emailid" /></font>
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
	                  <font color="black"><form:errors path="pass" /></font>
	            </div>
	            <div class="join-txt-cont">
	               <label class="join-txt-label" for="join-txt-confirm">비밀번호 확인</label>
	               <input name="passck" required="" type="password"
	                  placeholder="비밀번호는 6~16자 영문, 숫자를 사용해주세요." class="join-txt-input">
	                  <font color="black"><form:errors path="passck" /></font>
	            </div>
	         </div>
	         <div class="join-txt-wrap">
	            <div class="join-txt-cont join-name-input">
	               <label class="join-txt-label" for="join-txt-name">이름</label> <input
	                  name="name" value="" required="" type="text"
	                  placeholder="이름을 입력해 주세요." maxlength="5" class="join-txt-input">
	                  <font color="black"><form:errors path="name" /></font>
	            </div>
	         </div>
	         <div class="join-txt-wrap">
	            <div class="join-txt-cont">
	               <label class="join-txt-label" for="join-txt-nick">닉네임</label> <input
	                  name="nickname" required="" type="text" value=""
	                  placeholder="닉네임은 2~12글자로 입력해주세요." maxlength="12"
	                  class="join-txt-input">
	                  <font color="black"><form:errors path="nickname" /></font>
	            </div>
	         </div>
	         <div class="join-txt-wrap">
	            <div class="join-txt-cont">
	               <label class="join-txt-label" for="join-txt-birth">생년월일</label> <input
	                  name="birth" type="text" value="" placeholder="예) 19840411"
	                  class="join-txt-input" maxlength="8">
	                  <font color="black"><form:errors path="birth" /></font>
	               <div class="join-txt-warning join-birth-warning">생년월일을 다시
	                  확인해주세요.</div>
	            </div>
	         </div>
	         <div class="join-txt-wrap">
	            <div class="join-txt-cont">
	               <label class="join-txt-label" for="join-txt-phone">휴대폰번호</label> <input
	                  name="phone" type="tel" value="" placeholder="예) 01099849078"
	                  class="join-txt-input" maxlength="11">
	                  <font color="black"><form:errors path="phone" /></font>
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
</body>
</html>