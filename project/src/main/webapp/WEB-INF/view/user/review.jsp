<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="">
<head lang="ko" id="hobbyful">
<body>
		<div class="layer-wrap popup-wrap" id="popup-wrap">
			<div class="popup-layer"></div>
			<div class="popup-cont i-confirm "
				style="top: 50%; margin-top: -137px;">
				<h2 class="layer-tit">구매 후기 혜택 안내</h2>
				<div class="popup-txt">
					<span>구매 후기 등록시 <br>다음과 같이 마일리지를 드립니다. <br> <br>
						<b>• 사진 없이 글만 작성한 경우 : 200p</b><br> 
						<b>• 사진을 함께 첨부한 경우 : 1,000p</b><br></span>
				</div>
				<div class="popup-btn popup-btn-2">
					<a href="#reviewclose" title="취소" class="reviewclose btn-popup confirm_btn_1 on" >취소</a> 
					<button title="작성하기" class="showreviewWrite btn-popup confirm_btn_2 on">작성하기</button>
				</div>
			</div>
		</div>
</body>
</html>