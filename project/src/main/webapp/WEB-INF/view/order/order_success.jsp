<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article class="mymenu-content">
	<div class="order-list-wrap" style="display: none;"></div>
	<div class="order-detail-wrap" style="display: block;">
		<div class="order-detail-tit">주문 상세 내역</div>
		<div class="order-detail-tit-sub">
			<span>주문번호</span>
			<span class="order-num">20011513-46048R3258</span>
		</div>
		<div class="order-detail-cont">
			<div class="order-detail-area">
				<div class="order-detail-info">
					<div class="order-detail-info-tit">주문 내역</div>
					<div class="order-detail-info-btn s-CANCEL"></div>
					<div class="order-detail-thumb">
						<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d7424e70-feb6-11e8-b1bc-afe65c7c2522-square.png" class="thumb-order-detail" alt="">
					</div>
					<div class="order-detail-info-cont">
						<table summary="주문내역 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tbody>
							<tr><th class="th-order-detail-info">클래스명</th><td class="td-order-detail-info">반려동물 장난감 뜨개질 클래스</td></tr>
							<tr><th class="th-order-detail-info">옵션</th><td class="td-order-detail-info">베이직 패키지</td></tr>
							<tr><th class="th-order-detail-info">주문수량</th><td class="td-order-detail-info">1개</td></tr>
							<tr><th class="th-order-detail-info">주문일시</th><td class="td-order-detail-info">2020.01.15. 13:47</td></tr>
							<tr><th class="th-order-detail-info">주문상태</th><td class="td-order-detail-info">취소</td></tr>
							<tr><th class="th-order-detail-info">정가</th><td class="td-order-detail-info">30,000원</td></tr>
							<tr><th class="th-order-detail-info">할인액</th><td class="td-order-detail-info">0원</td></tr>
							<tr><th class="th-order-detail-info">구매가</th><td class="td-order-detail-info">30,000원</td></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="order-detail-area">
				<div class="order-detail-info">
					<div class="order-detail-info-tit">결제 정보</div>
					<div class="order-detail-info-cont">
						<table summary="결제정보 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tfoot><tr><th class="th-order-detail-info">결제 금액</th><td class="td-order-detail-info">30,000원</td></tr></tfoot>
							<tbody>
								<tr><th class="th-order-detail-info">결제방법</th><td class="td-order-detail-info">신용카드</td></tr>
								<tr><th class="th-order-detail-info">주문일</th><td class="td-order-detail-info">2020.01.15. 13:47</td></tr>
								<tr><th class="th-order-detail-info">신청한 금액 합계</th><td class="td-order-detail-info">30,000원</td></tr>
								<tr><th class="th-order-detail-info">구매 할인</th><td class="td-order-detail-info">0원</td></tr>
								<tr><th class="th-order-detail-info">마일리지 할인</th><td class="td-order-detail-info">0p</td></tr>
								<tr><th class="th-order-detail-info">배송비</th><td class="td-order-detail-info">0원</td></tr>
								<tr><th class="th-order-detail-info">최종 금액</th><td class="td-order-detail-info">30,000원</td></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="order-detail-area">
				<div class="order-detail-info">
					<div class="order-detail-info-tit">배송지 정보</div>
					<div class="order-detail-info-btn">
						<a href="#changeaddress" data-order-idx="35215" title="배송지 변경" class="btn-order-detail-info change-address">배송지 변경</a>
					</div>
					<div class="order-detail-info-cont">
						<table summary="배송지 정보 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tbody>
								<tr><th class="th-order-detail-info">받는사람</th><td class="td-order-detail-info order-address-receivename">푸름</td></tr>
								<tr><th class="th-order-detail-info">휴대폰번호</th><td class="td-order-detail-info order-address-receivephone">01038117290</td></tr>
								<tr><th class="th-order-detail-info">주소</th><td class="td-order-detail-info order-address-receiveaddress">인천 남동구 용천로 190-7</td></tr>
								<tr><th class="th-order-detail-info">배송 요청사항</th><td class="td-order-detail-info"></td></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="order-detail-btn">
			<a href="#link" title="주문 확인서 인쇄하기" class="btn-back-list btn-print-order">주문 확인서 인쇄하기</a>
			<a href="/mypage.html?m=order&amp;s=order" class="btn-back-list btn-back-order-list">주문 목록으로 돌아가기</a>
		</div>
	</div>
</article>
</body>
</html>