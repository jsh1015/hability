<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

	function fncancle() {
		$(".cancleModal").hide();
	}
	
	function realcancleModal() {
		$(".cancleModal").hide();
		$(".realcancleModal").show();
		
		var od_num = $("#od_num").val()
		console.log("진짜 삭제하겠다고 누르면"+od_num)
		
		$.ajax({
		type : "POST",
		// 요청한 url
		url : "../ajax/realcancleModal.shop", // shop이니까 controller작동하고
		data : {
			"od_num" : od_num
			},
		success : function(data) {
			$(".realcancleModal").html(data);
			}
		})
	}
</script>
</head>
<body>
	<input type="hidden" value="${od_num}" name="od_num" id="od_num">
	<input type="hidden" value="" name="emailid" id="emailid">
	
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
	<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
		<div class="popup-cont i-confirm" style="top: 50%; margin-top: -137px;">
			<div class="popup-txt">
				<span>정말로 주문을 취소하시겠습니까?</span>
			</div>
			<div class="popup-btn popup-btn-2">
				<a href="javascript:fncancle();" title="취소" class="btn-popup confirm_btn_1 on a-close close" data-dismiss="modal">취소</a>
				<a href="javascript:realcancleModal()" title="주문 취소하기" class="btn-popup confirm_btn_2 on">주문 취소하기</a>
			</div>
		</div>
	</div>
</body>
</html>
