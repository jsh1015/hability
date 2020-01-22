<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미주문신청서 :)</title>

<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
<!-- <div class="wrap" id="wrap"> -->
<div class="container">
	<div class="write-regular-wrap">
	<h2 class="layer-tit">취미주문 신청서</h2>
		<div class="write-regular-cont">
			<div class="float-wrap">
				<div class="write-regular-area i-cart">
					<div class="title">주문 정보</div>
					<ul id="cartList" class="list-product s-vertical">
						<li class="row">
							<ul class="columns">
								<li class="c-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/c3988ac0-cd2c-11e9-a6c1-1379508efc05-square.jpg" alt=""></li>
								<li class="c-name">매일이 반짝이는 썬캐쳐 클래스</li>
								<li class="c-options">베이직 패키지</li>
								<li class="c-quantity">수량 : 1개</li>
								<li class="c-price">
								28,000<span class="i-won">원</span>
								</li>
							</ul>
						</li>
						<li class="row">
							<ul class="columns">
								<li class="c-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/5dc059d0-302d-11ea-9134-2970db5a6784-square.jpg" alt=""></li>
								<li class="c-name">노플랜 프로젝트의 내방 소품 라탄 클래스</li>
								<li class="c-options">베이직 패키지</li>
								<li class="c-quantity">수량 : 1개</li>
								<li class="c-price">
								<s>210,000원</s>
								189,000<span class="i-won">원</span>
								</li>
							</ul>
						</li>
						<li class="row">
							<ul class="columns">
								<li class="c-thumb"><img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/5dc059d0-302d-11ea-9134-2970db5a6784-square.jpg" alt=""></li>
								<li class="c-name">노플랜 프로젝트의 내방 소품 라탄 클래스</li>
								<li class="c-options">클래스 수강권</li>
								<li class="c-quantity">수량 : 1개</li>
								<li class="c-price">
								<s>124,000원</s>
								111,600<span class="i-won">원</span>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="write-regular-area i-sender">
					<div class="title">주문자 정보</div>
					<colgoup></colgoup>
					<table class="table-input" summary="주문자 입력 테이블">
						<colgroup>
							<col class="col01">
							<col class="col02">
						</colgroup>
						<tbody>
							<tr class="tr">
								<th class="th">주문자명</th>
								<td class="td">
									<div class="input-wrap">
									<input type="text" class="input order_name" placeholder="">
									</div>
								</td>
							</tr>
							<tr class="tr">
								<th class="th">이메일</th>
								<td class="td">
									<div class="input-wrap">
									<input type="email" class="input order_email" placeholder="">
									</div>
									<div class="table-txt txt-color-r email-error-msg"></div>
								</td>
							</tr>
							<tr class="tr">
								<th class="th">휴대전화</th>
								<td class="td">
									<div class="input-wrap input-phone">
									<input type="text" class="input order_phone" placeholder="">
									</div>
									<button type="button" title="인증" class="btn-td phone-auth-btn" disabled="">인증 완료</button>
								</td>
							</tr>
							<tr class="tr auth_number" style="display: none;">
								<th class="th">인증번호</th>
								<td class="td">
									<div class="input-wrap input-phone">
									<input type="text" class="input auth-number" placeholder="">
									</div>
									<button type="button" title="확인" class="btn-td2 auth-confirm">확인</button>
									<span class="td-info auth-time"></span>
									<div class="table-txt txt-color-r auth-error-msg"></div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="table-info">
					•  정확한 이메일과 휴대폰 번호를 입력해주세요.<br>
					•  구매내역, 환불, 품절 등을 이메일과 SMS 문자로 안내해드립니다.
					</div>
				</div>
				<div class="write-regular-area i-receiver">
					<div class="title">배송지 정보</div>
					<div class="select-radio-wrap">
						<label class="label"><input type="radio" name="isNewAddress" value="true" class="check" checked=""> 새로운 배송지</label>
						<label class="label s-savedAddress"><input type="radio" name="isNewAddress" value="false" class="check"> 저장된 배송지</label>
						<a href="javascript:;" title="주소록 선택" class="btn-td2 btn-select-address">주소록 선택</a>
					</div>
					<table class="table-input" summary="배송지 입력 테이블">
						<colgroup>
						<col class="col11">
						<col class="col22">
						</colgroup>
						<tbody>
						<tr class="tr">
						<th class="th">배송지명</th>
						<td class="td">
						<div class="input-wrap">
						<input type="text" class="input order_addressname" placeholder="">
						</div>
						</td>
						</tr>
						<tr class="tr">
						<th class="th">수령자명</th>
						<td class="td">
						<div class="input-wrap">
						<input type="text" class="input order_receivename" placeholder="">
						</div>
						</td>
						</tr>
						<tr class="tr">
						<th class="th">휴대전화</th>
						<td class="td">
						<div class="input-wrap">
						<input type="text" class="input receive_phone" placeholder="">
						</div>
						</td>
						</tr>
						<tr class="tr">
						<th class="th">추가번호(선택)</th>
						<td class="td">
						<div class="input-wrap">
						<input type="text" class="input receive_phone2" placeholder="">
						</div>
						</td>
						</tr>
						<tr class="tr">
						<th class="th">주소</th>
						<td class="td">
						<div class="td-br">
						<div class="input-wrap input-post input-readonly">
						<input type="text" readonly="readonly" class="input order_receivezipcode" placeholder="">
						</div>
						<a href="javascript:;" title="우편번호" class="btn-td2 get-zipcode">우편번호</a>
						</div>
						<div class="td-br">
						<div class="input-wrap input-readonly">
						<input type="text" readonly="readonly" class="input order_receiveaddress" placeholder="">
						</div>
						</div>
						<div class="td-br">
						<div class="input-wrap">
						<input type="text" class="input order_receiveaddressdetail" placeholder="">
						</div>
						</div>
						<div class="td-br i-row-savebasic">
						<input type="checkbox" id="save-basic-delivery" class="checkbox">
						<label for="save-basic-delivery" class="label-basic-delivery">기본 배송지로 저장</label>
						</div>
						</td>
						</tr>
						<tr class="tr">
						<th class="th">배송요청 사항</th>
						<td class="td">
						<div class="input-textarea">
						<textarea class="textarea order_receivecomment" rows="" cols="" placeholder="배송을 해주시는 택배기사님께 전달드리는 내용입니다." maxlength="300"></textarea>
						</div>
						</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="write-regular-area i-payment">
				<div class="title">결제 정보</div>
				<colgoup>
				</colgoup>
				<table class="table-input" summary="할인정보 입력 테이블">
					<colgroup><col class="col01">
					<col class="col02">
					</colgroup>
					<tbody>
					<tr class="tr">
					<th class="th">마일리지 사용</th>
					<td class="td">
					<div class="input-wrap w65">
					<input type="text" class="input order_mileage" onkeypress="validate(event)" placeholder="" value="0">
					</div>
					<button type="button" class="btn-td2 w30 mileage_apply">적용</button>
					<div class="table-txt">현재 보유 마일리지: <span class="txt-color-r mileage">1000p</span> (1p = 1원)</div>
					</td>
					</tr>
					</tbody>
				</table>
				<div id="payInfo" class="justify-list">
				<ul>
				<li>
				<span class="i-title">상품금액</span>
				<span class="i-value">362,000원</span>
				</li>
				<li>
				<span class="i-title">할인금액</span>
				<span class="i-value">-33,400원</span>
				</li>
				<li>
				<span class="i-title">배송비</span>
				<span class="i-value">무료</span>
				</li>
				
				</ul>
				<div class="area-result">
				<span class="i-title">전체 주문금액</span>
				<span class="i-value">328,600<span class="i-won">원</span></span>
				</div>
				</div>
				
				</div>
			</div>
				<!--		<div class="write-regular-area">-->
				<!--			<div class="title">정기구독 및 결제대행 서비스 동의</div>-->
				<!--			<ul class="payment-agree-list">-->
				<!--				<li class="payment-agree-sub">-->
				<!--					<input type="checkbox" name="all-check" id="check-all" />-->
				<!--					<label for="check-all">전체 동의</label>-->
				<!--				</li>-->
				<!--				<li class="payment-agree">-->
				<!--					<input type="checkbox" name="payment-agree" id="check-privacy" />-->
				<!--					<label for="check-privacy">개인정보 수집 및 이용 동의</label>-->
				<!--					<a href="javascript:;" title="상세보기" class="view-detail privacy-agree-view">상세보기</a>-->
				<!--				</li>-->
				<!--				<li class="payment-agree" style="display:none;">-->
				<!--					<input type="checkbox" name="payment-agree" id="check-regular" checked />-->
				<!--					<label for="check-regular">정기구독 서비스 이용 동의</label>-->
				<!--					<a href="javascript:;" title="상세보기" class="view-detail">상세보기</a>-->
				<!--				</li>-->
				<!--			</ul>-->
				<!--		</div>-->
				<div class="write-order-btn">	
				<p class="desc">위 주문 내용을 확인 하였으며, 회원 본인은 결제에 동의합니다.</p>
					<button id="orderBtn" class="btn-order-ask confirm-order">취미 주문하기</button>
				</div>
	<script type="text/javascript">
		$("#orderBtn").click(function(){
			var IMP = window.IMP; // 생략가능
			IMP.init('imp11832569'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			
			IMP.request_pay({
			    pg : 'kakaopay',
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : 1000,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
			    if ( rsp.success ) {
			    	jQuery.ajax({
			    	      url: "/payments/complete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
			    	      type: 'POST',
			    	      dataType: 'json',
			    	      data: {
			    	       imp_uid : rsp.imp_uid
			    	       //기타 필요한 데이터가 있으면 추가 전달
			    	      }
			    	}).done(function(data) {
			    		if ( everythings_fine ) {
			    			var msg = '결제가 완료되었습니다.';
			    			msg += '\n고유ID : ' + rsp.imp_uid;
			    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
			    			msg += '\결제 금액 : ' + rsp.paid_amount;
			    			msg += '카드 승인번호 : ' + rsp.apply_num;
			    			alert(msg);
			    		}else{
			    			msg += rsp.error_msg;
			    			alert(msg)
			    		}
			    	});
			    } else {
			        var msg = '결제에 실패하였습니다.\n';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			});
		})
	</script>
		</div>
	</div>
</div>

</body>