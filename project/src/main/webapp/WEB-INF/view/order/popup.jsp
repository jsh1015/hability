<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<!-- <div class="wrap" id="wrap"> -->
	<!-- 팝업 모달창 -->
<div class="layer-wrap popup-wrap" id="popup-wrap" style="display:block">
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
</body>