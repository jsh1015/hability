<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하빌리티 : 취미바구니</title>
<script>
	function form_btn(n) {
		var quantity = document.getElementById("count");
		quan_value = parseInt(quantity.value);
		quan_value +=n;
		quantity.value = quan_value;
		if(quan_value <=0) {
			text.value = 1;
		}
		
		var price = document.getElementById("price");
		price_value = parseInt(price.value);
		price_value = price_value * quan_value; // 가격*수량
		price.value = price_value;
	}
	
</script>
</head>
<body>

<div class="container">
	<div class="write-regular-wrap">
		<h2 class="layer-tit">장바구니</h2>
		<div class="cart-cont">
			<div class="cart-area" id="contentArea">
				<!-- 주문 정보 -->
				<div class="cart-class-wrap b-section i-list">
					<div class="title">주문 정보</div>
					<ul class="list-product s-vertical">
						<li class="row ">
							<ul class="columns">
								<li class="c-thumb">
									<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d7424e70-feb6-11e8-b1bc-afe65c7c2522-square.png" alt="">
								</li>
								<li class="c-name">반려동물 장난감 뜨개질 클래스</li>
								<li class="c-options">베이직 패키지</li>
								<!-- 수량 -->
								<li class="c-quantity">
									<div class="hfc-spinner">
										<button class="hfc-i-down" onclick="form_btn(-1)" disabled="disabled">줄이기</button>
										<input type="number" id="count" name="count" class="hfc-i-num" min="1" max="99" value="1" readonly>
										<button class="hfc-i-up" onclick="form_btn(1)">늘리기</button>
									</div>
								</li>
								<li class="c-price" id="price">30,000<span class="i-won">원</span></li>
							</ul>
							<!-- 삭제 -->
							<div class="area-btn">
								<button class="t-btn d-small i-del" onClick="location.href='itemDelete.shop?'">삭제</button>
							</div>
						</li>
					</ul>
				</div>
				<!-- 결제 정보 -->
				<div class="cart-class-wrap b-section i-payment">
					<div class="title">결제 정보</div>
					<div class="justify-list">
						<ul>
							<li>
								<span class="i-title">상품금액</span>
								<span class="i-value">30,000원</span>
							</li>
							<li>
								<span class="i-title">배송비</span>
								<span class="i-value">0원</span>
							</li>
						</ul>
						<div class="area-result">
							<span class="i-title">전체 주문금액</span>
							<span class="i-value">30,000<span class="i-won">원</span></span>
						</div>
					</div>
				</div>

				<!-- 이동 버튼 -->
				<div class="btn-group-2 i-btn-group">
					<a href="${path}/list/hobbyClass.shop" class="btn-normal">취미 더 고르기</a>
					<a href="/write-order.html" class="btn-important a-buy">취미 클래스 신청하기</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>