<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<c:if test="${postListCnt > 0}">
	<div class="layer-wrap address-wrap" id="address-wrap">
		<div class="bg-layer-wrap a-close"></div>
		<div class="layer-wrap-contents address-cont">
			<h2 class="layer-tit">주소록 선택</h2>
			<div class="delivery-list-wrap">
	<c:forEach items="${postList}" var="post" varStatus="stat">
	<input id="po_name_${stat.index}" type="hidden" value="${post.po_name}"/>
	<input id="po_client_${stat.index}" type="hidden" value="${post.po_client}"/>
	<input id="po_phone_${stat.index}" type="hidden" value="${post.po_phone}"/>
	<input id="po_postcode_${stat.index}" type="hidden" value="${post.po_postcode}"/>
	<input id="po_addr_main_${stat.index}" type="hidden" value="${post.po_addr_main}"/>
	<input id="po_addr_sub_${stat.index}" type="hidden" value="${post.po_addr_sub}"/>
				<div class="order-detail-info">
					<div class="order-detail-info-tit">${post.po_name}</div><!-- 배송지명 -->
					<div class="order-detail-info-btn select-address-btn">
						<a href="javascript:selectaddr(${stat.index})" title="선택" data-idx="${stat.index}" class="btn-order-detail-info select-address">선택</a>
					</div>
					<div class="order-detail-info-cont" style="border-bottom:none;">
						<table summary="주문내역 테이블" class="table-order-detail-info">
							<colgroup><col class="order-detail-th-width"><col class="order-detail-td-width"></colgroup>
							<tbody>
							<tr><th class="th-order-detail-info">수령인</th>
								<td class="td-order-detail-info">${post.po_client}</td></tr>
							<tr><th class="th-order-detail-info">휴대폰 번호</th>
								<td class="td-order-detail-info">${post.po_phone}</td></tr>
							<tr><th class="th-order-detail-info">주소지</th>
								<td class="td-order-detail-info po_postcode">(${post.po_postcode}) ${post.po_addr_main} ${post.po_addr_sub}</td></tr>
							</tbody>
						</table>
					</div>
				</div>
	</c:forEach>
			</div>
			<a href="#" title="닫기" class="btn-layer-close a-close">닫기</a>
		</div>
	</div>
</c:if>
</body>
</html>