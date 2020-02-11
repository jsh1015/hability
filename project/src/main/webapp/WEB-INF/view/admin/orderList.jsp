<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/배송 관리 페이지입니다 ^_^</title>
<style>
a {text-decoration: none;}
.save {
	text-align : center;
	background-color:transparent;
	border-radius:20px;
	border:1px solid #11447B;
	display:inline-block;
	cursor:pointer;
	color:#11447B;
	font-family:Arial;
	font-size:14px;
	padding:7px 5px;
	text-decoration:none;
}
.save:hover {
	background-color:transparent;
	color:#11447B;
}

table {
	width : 100%;
}
</style>
<script>

$(document).ready(function() {
	$(".detail").each(function() {
		$(this).hide();
	})
})

//list_display('saleLine${stat.index}') 주문내역 보였다 안보였다
function list_display(index) {
	$("#detail"+index).toggle();
}

function fnsubmit(index) {
	// select value 가져옴
	var deli_val = $("#od_deliver"+index).val()
	var od_num = $("#od_num"+index).val()
	console.log(deli_val)
	console.log("히든 od_num :"+od_num)
	
	$.ajax({
		type : "POST",
		// 요청한 url
		url : "../admin/changeDelivery.shop", // shop이니까 controller작동하고
		data : {
			"deli_val" : deli_val,
			"od_num" : od_num
			},
		success : function(data) {
			location.reload();
		}
	})
}

</script>
</head>
<body>
<div class="w3-main" style="margin-left:20px; margin-right:35px">
	<div class="w3-container" style="margin-top: 50px">
		<h1 class="w3-large">배송/주문 내역</h1>
	</div>
	<div class="list">
	
	<table class="t" style="text-align:center; width:100%; height: 80%;">
		<tr class="col">
			<th>주문 번호</th>
			<th>주문 고객</th>
			<th>주문일자</th>
			<th>배송현황</th>
			<th>배송현황 변경</th>
		</tr>
		<c:forEach items="${orderList}" var="list" varStatus="stat">
		<tr><td align="center">
				<a href="javascript:list_display(${stat.index})">${list.od_num}</a>
			</td>
			<td align="center">
				${list.name}(${list.emailid})
			</td>
			<td align="center">
				<fmt:formatDate value="${list.od_date}" pattern="yyyy. MM. dd hh:mm" />
			</td>
			<!--  배송지 변경 -->
			<td id="delivery">
				${list.od_deliver ==1? "상품 준비 중":list.od_deliver ==2? "배송 중":list.od_deliver ==3? "배송 완료":list.od_deliver ==4? "교환":list.od_deliver ==5? "반품":list.od_deliver ==6? "환불":"취소"}
			</td>
			<td>
				<input type="hidden" value="${list.od_num}" name="od_num" id="od_num${stat.index}">
				<select name="od_deliver" id="od_deliver${stat.index}" >
					<option value=1>상품 준비 중</option>
					<option value=2>배송 중</option>
					<option value=3>배송 완료</option>
					<option value=4>교환</option>
					<option value=5>반품</option>
					<option value=6>환불</option>
					<option value=7>취소</option>
				</select>
				<button type="button" onclick="fnsubmit('${stat.index}')" class="save">변경</button>
			</td>
		</tr>
		<!-- 상품 상세 정보 toggle -->
		<tr id="detail${stat.index}" class="detail" style="display:none">
			<td colspan="5" align="center">
				<table>
					<tr><th>상품명</th>
						<th>옵션명</th>
						<th>수량</th>
						<th>가격</th>
					</tr>
					<c:forEach items="${list.orderlist}" var="item">
					<tr>
						<td>${item.cls.cl_title}</td>
						<td>${item.kit.kit_name}</td>
						<td>${item.count}</td>
						<td>${item.count * item.kit.kit_price}</td>
					</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>
</div>
</body>
</html>