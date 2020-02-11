<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

	function fncancle() {
		$(".cancleCheckModal").hide();
	}

</script>
</head>
<body>
	<div id="dimmer-hf-modal-1580289583484809"
		class="hfc-dimmer hfc-dimmer-modal"></div>
	<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
		<div class="popup-cont i-confirm" style="top: 50%; margin-top: -137px;">
			<h2 class="layer-tit">주문 취소</h2>
			<div class="popup-txt" style="min-height: 78px; width: 100%; text-align: center; display: table;">
				<span style="display: table-cell; vertical-align: middle;">주문이 취소되었습니다.</span>
			</div>
			<div class="popup-btn popup-btn-2">
				<a href="javascript:fncancle();" title="확인" class="btn-popup confirm_btn_1 on a-close close" data-dismiss="modal">확인</a>
			</div>
		</div>
	</div>
</body>
</html>
