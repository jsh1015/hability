<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하빌리티 : 취미바구니</title>
<script>
    function addComma(num) {
	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
	  return num.toString().replace(regexp, ',');
	}
	
	function form_btn(index, kit_price, n) {
		var quantity = document.getElementById("count" + index);
		quan_value = parseInt(quantity.value);
		quan_value += n;
		quantity.value = quan_value;
		document.f.lastcount.value = quan_value;

		if (quan_value <= 0) {
			quantity.value = 1;
		}

		if (quantity.value == 1) {
			$(".price" + index).text(addComma(kit_price)+"원");
		} else {
			$(".price" + index).text(addComma(kit_price * quan_value)+"원");
		}

		var sum = 0
		$(".count").each(function(index, item) {
			sum += parseInt($(this).val()) * parseInt($("#price"+index).val())
			console.log(parseInt($("#price"+index).val()))
		})
		$(".value_sum").text(addComma(sum)+"원")
		console.log(sum)
		return false;
	}
	
	function fnsubmit() {
		f = document.f;
		f.submit();
	}
</script>
</head>
<body>
	<c:if test="${basketListCnt >0}">
	<form action="order_write.shop" method="post" name="f">
	<input type="hidden" name="buyingtype" value="1">
		<div class="container">
			<div class="write-regular-wrap">
				<h2 class="layer-tit">장바구니</h2>
				<div class="cart-cont">
					<div class="cart-area" id="contentArea">
						<!-- 주문 정보 -->
						<div class="cart-class-wrap b-section i-list">
							<div class="title">주문 정보</div>
							<ul class="list-product s-vertical">
								<c:forEach var="blist" items="${basketList}" varStatus="stat">
								<input type="hidden" class="${blist.kit.kit_price}" name="kit_price" value="${blist.kit.kit_price}">
								<input type="hidden" name="cl_num" value="${blist.cl_num}">
								<input type="hidden" name="kit_num" value="${blist.kit_num}">
								<!-- <input type="hidden" name="lastcount" value="1"> -->
								<li class="row ">
									<ul class="columns">
										<li class="c-thumb">
											<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d7424e70-feb6-11e8-b1bc-afe65c7c2522-square.png"></li>
										<li class="c-name">${blist.cls.cl_title}</li>
										<li class="c-options">${blist.kit.kit_name}</li>
										<!-- 수량 -->
										<li class="c-quantity">
											<div class="hfc-spinner">
												<button class="hfc-i-down" type="button" onclick="form_btn(${stat.index},${blist.kit.kit_price},-1)">줄이기</button>
													<input type="number" id="count${stat.index}" name="lastcount" class="hfc-i-num count" min="1" max="99" value="${blist.count}">
												<button class="hfc-i-up" type="button" onclick="form_btn(${stat.index},${blist.kit.kit_price},1)">늘리기</button>
											</div>
										</li>
										<input type="hidden" id="price${stat.index}" value="${blist.kit.kit_price}"  />
										<li class="c-price price${stat.index}" ><fmt:formatNumber value="${blist.total}" pattern="##,###" /><span class="i-won">원</span></li>
									</ul>
									<!-- 삭제 -->
									<div class="area-btn">
										<button class="t-btn d-small i-del" type="button" onClick="location.href='basketDelete.shop?bindex=${blist.cl_num}'">삭제</button>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
						<!-- 결제 정보 -->
						<div class="cart-class-wrap b-section i-payment">
							<div class="title">결제 정보</div>
							<div class="justify-list">
								<ul>
									<li>
										<span class="i-title">상품금액</span>
										<span class="i-value value_sum"><fmt:formatNumber value="${sum}" pattern="##,###" />원</span>
									</li>
									<li><span class="i-title">배송비</span> <span class="i-value">0원</span></li>
								</ul>
								<div class="area-result">
									<span class="i-title">전체 주문금액</span>
									<span class="i-value value_sum" id="value_sum"><fmt:formatNumber value="${sum}" pattern="##,###" /><span class="i-won">원</span></span>
								</div>
							</div>
						</div>
						<!-- 이동 버튼 -->
						<div class="btn-group-2 i-btn-group">
							<a href="${path}/list/hobbyClass.shop" class="btn-normal">취미 더 고르기</a>
							<a href="javascript:fnsubmit()"  class="btn-important a-buy">취미 클래스 신청하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	</c:if>
	<c:if test="${basketListCnt ==0}">
		<div class="container">
			<div class="write-regular-wrap">
				<h2 class="layer-tit">장바구니</h2>
				<div class="cart-cont">
					<div class="cart-area" id="contentArea">
						<div class="i-empty">
							<p>
								장바구니에 담긴 상품이 없습니다.<br>일상을 아름답게 바꿀 새로운 취미를 골라보세요.
							</p>
							<div class="btn-group-2">
								<a href="${path}/list/hobbyClass.shop" class="btn-normal">취미 고르러 가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>