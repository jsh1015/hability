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
		$(".changeaddressmodal").hide();
	}

</script>
</head>
<body>
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
	<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
		<div class="popup-cont i-confirm" style="top: 50%; margin-top: -137px;">
			<h2 class="layer-tit">����� ���� ����</h2>
			<div class="popup-txt">
				<span>����� ������ �ʿ��ϼ���?<br>1:1 ���Ǹ� �����ּ���.</span>
			</div>
			<div class="popup-btn popup-btn-2">
				<a href="javascript:fncancle();" title="���" class="btn-popup confirm_btn_1 on a-close close" data-dismiss="modal">���</a>
				<a href="#" title="Ȯ��" class="btn-popup confirm_btn_2 on">Ȯ��</a>
			</div>
		</div>
	</div>
</body>
</html>
