<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

	function fncancle() {
		$(".realcancleModal").hide();
	}
	
	function cancleCheckModal() {
		$(".realcancleModal").hide();
		$(".cancleCheckModal").show();
		
		var od_num = $("#od_num").val()
		console.log("진짜 삭제하겠다고 누르면"+od_num)
		
		$.ajax({
		type : "POST",
		// 요청한 url
		url : "../ajax/cancleCheckModal.shop", // shop이니까 controller작동하고
		data : {
			"od_num" : od_num
			},
		success : function(data) {
			$(".realcancleModal").html(data);
			location.reload();
			}
		})
	}
	
</script>
</head>
<body>
	<!-- pooh컨트롤러 / realcancleModal에서 넘어온 값 od_num -->
	<input type="hidden" value="${od_num}" name="od_num" id="od_num">
	<input type="hidden" value="" name="emailid" id="emailid">
	
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
		<div class="modal-dialog hfc-modal s-big" style="overflow: scroll;">
			<!-- Modal content-->
			<div class="cancel-cont">
	<h2 class="layer-tit">주문 취소 신청</h2>
	<c:forEach items="${orderList}" var="order" varStatus="stat">
	<div class="cancel-summary">
		<span class="cancel-date">주문일시 <strong class="bold"><fmt:formatDate value="${order.od_date}" pattern="yyyy.MM.dd" /></strong></span>
		<span class="cancel-num">주문번호 <strong class="bold">${order.od_num}</strong></span>
	</div>
	<div class="cancel-class-wrap">
		<div class="order-detail-info-tit">취소 신청 클래스</div>
		<c:forEach items="${order.orderlist}" var="item">
		<div class="cancel-class-cont">
			<div class="cancel-class-thumb">
				<img src="${path}/img/${item.cls.cl_img}" class="thumb-cancel-class" alt="">
			</div>
			<div class="cancel-class-tit">
				<div class="cancel-class-tit01">클래스명</div>
				<div class="cancel-class-tit02">결제 금액</div>
				<div class="cancel-class-tit03">결제일</div>
			</div>
			<div class="cancel-class-txt">
				<div class="cancel-class-txt01 underline cut-txt">${item.cls.cl_title}</div>
				<div class="cancel-class-txt02">
					<!-- <span class="before-price">27,000원</span> --><fmt:formatNumber value="${item.count * item.kit.kit_price}" pattern="##,###" />원
				</div>
				<div class="cancel-class-txt03"><fmt:formatDate value="${order.od_date}" pattern="yyyy.MM.dd" /></div>
			</div>
		</div>
		</c:forEach>
	</div>
	<!-- 주어진 내용 -->
	<div class="cancel-class-info">
		<div class="cancel-class-info-tit">&lt;결제 후 주문 취소 안내&gt;</div>
		<div class="cancel-class-info-txt">
			카드주문 승인취소 : 결제 접수일로부터 5일 (영업일 기준) 이내 카드 사 홈페이지에서 취소내역이 확인됩니다<br>
			주문취소는 해당 클래스의 배송상태가 [결제전, 결제완료]일 때 가능합니다.
		</div>
	</div>
	<div class="return-info-wrap">
		<div class="order-detail-info-tit">취소 정보</div>
		<div class="float-wrap">
			<div class="return-info-cont">
				<div class="return-info-area">
					<div class="return-info-tit">주문일시</div>
					<div class="return-info-txt"><fmt:formatDate value="${order.od_date}" pattern="yyyy.MM.dd HH:mm" /></div>
				</div>
				<div class="return-info-area">
					<div class="return-info-tit">결제방법</div>
					<div class="return-info-txt">카카오페이</div>
				</div>
			</div>
			<div class="return-info-cont">
				<div class="return-info-area">
					<div class="return-info-tit">취소 금액</div>
					<div class="return-info-txt"><fmt:formatNumber value="${lastprice - order.od_mileage}" pattern="##,###" />원</div>
				</div>
				<div class="return-info-area">
					<div class="return-info-tit">취소 마일리지</div>
					<div class="return-info-txt"><fmt:formatNumber value="${order.od_mileage}" pattern="##,###" />p</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	<div class="cancel-class-btn">
		<a href="javascript:fncancle()" title="닫기" class="btn-cancel-class btn-close-cancel">닫기</a>
		<a href="javascript:cancleCheckModal()" title="주문 취소하기" class="btn-cancel-class btn-order-cancel cancel-order">주문 취소하기</a>
	</div>
	<a href="javascript:fncancle();" title="닫기" class="btn-layer-close">닫기</a>
</div>
		</div>
</body>
</html>
