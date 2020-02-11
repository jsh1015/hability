<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료 :)</title>
</head>
<body>
	<article class="mymenu-content">
	<div class="order-list-wrap" style="display: none;"></div>
	<div class="order-detail-wrap" style="display: block;">
		<div class="order-detail-tit">주문 상세 내역</div>
		<div class="order-detail-tit-sub">
			<span>주문번호</span>
			<span class="order-num">${order.od_num}</span>
		</div>
		<div class="order-detail-cont">
			<div class="order-detail-area">
				<div class="order-detail-info">
					<div class="order-detail-info-tit">주문 내역</div>
					<div class="order-detail-info-btn s-CANCEL"></div>
					<div class="order-detail-info-cont">
						<table summary="주문내역 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tbody>
						<c:forEach var="cls" items="${cls}" varStatus="stat">
							<tr><th class="th-order-detail-info">주문상품</th>
								<td class="td-order-detail-info">
									- ${cls.cl_title}<br>
									- ${cls.kit.kit_name}<br>
									- ${odlist[stat.index].count}개
								</td></tr>
<%-- 							<tr><th class="th-order-detail-info">옵션</th><td class="td-order-detail-info">${cls.kit.kit_name}</td></tr>
							<tr><th class="th-order-detail-info">주문수량</th><td class="td-order-detail-info">${odlist[stat.index].count}<br><hr></td></tr>
 --%>						</c:forEach>
							<tr><th class="th-order-detail-info">주문일시</th><td class="td-order-detail-info">${order.od_date}</td></tr>
							<tr><th class="th-order-detail-info">주문상태</th>
								<td class="td-order-detail-info">
								<c:choose>
									<c:when test="${order.od_deliver==1}">
										상품준비중
									</c:when>
									<c:when test="${order.od_deliver==1}">
										배송중
									</c:when>
									<c:when test="${order.od_deliver==1}">
										배송완료
									</c:when>
								</c:choose>
								</td>
							</tr>
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
							<tfoot><tr><th class="th-order-detail-info">결제 금액</th><td class="td-order-detail-info">${pprice}원</td></tr></tfoot>
							<tbody>
								<tr><th class="th-order-detail-info">결제방법</th><td class="td-order-detail-info">카카오페이</td></tr>
								<tr><th class="th-order-detail-info">신청한 금액</th><td class="td-order-detail-info">${aprice}원</td></tr>
								<tr><th class="th-order-detail-info">마일리지할인</th><td class="td-order-detail-info">${order.od_mileage}p</td></tr>
								<tr><th class="th-order-detail-info">배송비</th><td class="td-order-detail-info">0원</td></tr>
								<tr><th class="th-order-detail-info">최종 금액</th><td class="td-order-detail-info">${pprice}원</td></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="order-detail-area">
				<div class="order-detail-info">
					<div class="order-detail-info-tit">배송지 정보</div>
					<div class="order-detail-info-cont">
						<table summary="배송지 정보 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tbody>
								<tr><th class="th-order-detail-info">수령자명</th><td class="td-order-detail-info order-address-receivename">${order.od_client}</td></tr>
								<tr><th class="th-order-detail-info">휴대폰번호</th><td class="td-order-detail-info order-address-receivephone">${order.od_phone}</td></tr>
								<tr><th class="th-order-detail-info">추가번호</th><td class="td-order-detail-info order-address-receivephone">${order.od_phone2}</td></tr>
								<tr><th class="th-order-detail-info">주소</th>
									<td class="td-order-detail-info order-address-receiveaddress">${order.od_postcode}/${order.od_addr_main}/${order.od_addr_sub}</td></tr>
								<tr><th class="th-order-detail-info">배송 요청사항</th>
									<td class="td-order-detail-info">${order.od_comment}</td></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="order-detail-btn">
			<a href="../user/mypage.shop?emailid=${sessionScope.loginUser.emailid}" class="btn-back-list btn-back-order-list">주문 목록으로 돌아가기</a>
		</div>
	</div>
</article>
</body>
</html>