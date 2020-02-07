<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

	function fncancle() {
		$(".addrDeleteModal").hide();
	}
	function fnaddrDelete() {
		f = document.addrDelete;
		f.submit();
	}
</script>
</head>
<body>
<form name="addrDelete" action="addrDelete.shop" method="get">
	<input type="hidden" value="${po_num}" name="po_num">
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
	<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
		<div class="popup-cont i-confirm" style="top: 50%; margin-top: -137px;">
			<h2 class="layer-tit">배송지 삭제</h2>
			<div class="popup-txt">
				<span>선택하신 배송지를 삭제하시겠습니까?</span>
			</div>
			<div class="popup-btn popup-btn-2">
				<a href="javascript:fncancle();" title="취소" class="btn-popup confirm_btn_1 on a-close close" data-dismiss="modal">취소</a>
				<a href="javascript:fnaddrDelete();" title="삭제" class="btn-popup confirm_btn_2 on">삭제</a>
			</div>
		</div>
	</div>
</form>
</body>
</html>







