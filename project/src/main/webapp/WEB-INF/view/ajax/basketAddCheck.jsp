<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function fncancle() {
		$(".basketAddCheck").hide();
	}
</script>
<div id="dimmer-hf-modal-1580289583484809" 	class="hfc-dimmer hfc-dimmer-modal"></div>
<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
	<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
		<div class="popup-cont i-confirm" style="top: 50%; margin-top: -137px;">
			<h2 class="layer-tit">취미바구니에 클래스가 담겼습니다.</h2>
			<div class="popup-txt">
				<span>주문을 진행하시려면 취미바구니로 이동해주세요.</span>
			</div>
			<div class="popup-btn popup-btn-2">
				<a href="${path}/list/hobbyClass.shop" title="취미 더 고르기" class="btn-popup confirm_btn_1 on">취미 더 고르기</a>
				<a href="../order/basketView.shop?emailid=${sessionScope.loginUser.emailid}" title="취미바구니 보러가기" class="btn-popup confirm_btn_2 ">취미바구니 보러가기</a>
			</div>
		</div>
		<a href="javascript:fncancle();" title="닫기" class="btn-layer-close" onclick="Popup.hide();">닫기</a>
	</div>
