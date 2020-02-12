<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html class="">
<head lang="ko" id="hobbyful">
<title>하비풀 - 취미를 만나 일상이 아름다워지다.</title>

<script type="text/javascript">
 $(document).ready(function(){
		$(".btn-mymenu-customer").addClass("btn-mymenu-on") // 자주 묻는 질문
		$(".customer-all").show() // 자주 묻는 질문 전체
		$(".customer-addr").hide()
		$(".customer-order").hide()
		$(".customer-cancel").hide()
		$(".customer-refund").hide()
		$(".customer-other").hide()
		$(".customer-notice").hide()
	})
	
</script>

</head>
<body>
		<div class="container">
			<div class="customer-wrap">
				<div class="customer-tit-wrap">
					<div class="customer-tit">C/S CENTER</div>
					<hr class="line-customer-tit">
					<!--a href="tel:1644-0000" title="전화걸기" class="customer-sub">1644-0000</a-->
					<div class="customer-txt">
						help@hobbyful.co.kr<br> 1:1 문의를 남겨 주시면 담당자가 빠르게 답변 드리도록
						하겠습니다.
					</div>
				</div>
				<div class="mymenu-wrap">
					<div class="faq-input-wrap">
						<div class="faq-input-tit"></div>
						<div class="input-wrap">
							<input type="text" class="input input-faq"
								placeholder="궁금한 내용을 검색해보세요">
						</div>
						<button type="button" class="btn-search-faq">검색</button>
					</div>
<!-- 탭 -->
					<div class="mymenu-cont">
						<ul class="mymenu-list">
							<li class="mymenu"><a href="javascript:mymenu('customer'); javascript:submymenu('all')" title="자주 묻는 질문" data-submenu="mymenu-customer" class="btn-mymenu btn-mymenu-on">자주 묻는 질문</a></li>
							<li class="mymenu"><a href="javascript:mymenu('notice')" title="공지사항" data-submenu="mymenu-notice" class="btn-mymenu">공지사항</a></li>
						</ul>
						<a href="/mypage.html?m=action-history&amp;s=qna&amp;action=write"
							title="1:1 문의 작성하기" class="btn-write">1:1 문의 작성하기</a>
					</div>
				</div>
					<div class="mymenu-sub-cont">
				<!-- 세부 탭 -->
				<ul class="mymenu-sub-list">
	<!-- 자주 묻는 질문 -->
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
						<a href="javascript:submymenu('all')"  title="전체" data-submenu="all" class="btn-mymenu-sub mymenu-all sub-menu-all btn-mymenu-sub-on">전체</a>
					</li>
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
					<a href="javascript:submymenu('addr')" title="배송" data-submenu="addr" class="btn-mymenu-sub mymenu-addr sub-menu-addr">배송</a>
					</li>
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
					<a href="javascript:submymenu('order')" title="주문/결제" data-submenu="order" class="btn-mymenu-sub mymenu-order sub-menu-order">주문/결제</a>
					</li>
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
					<a href="javascript:submymenu('cancel')" title="취소/교환" data-submenu="cancel" class="btn-mymenu-sub mymenu-cancel sub-menu-cancel">취소/교환</a>
					</li>
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
					<a href="javascript:submymenu('refund')" title="반품/환불" data-submenu="refund" class="btn-mymenu-sub mymenu-refund sub-menu-refund">반품/환불</a>
					</li>
					<li class="mymenu-sub mymenu-sub-customer" style="display: list-item;">
					<a href="javascript:submymenu('other')" title="기타" data-submenu="other" class="btn-mymenu-sub mymenu-other sub-menu-other">기타</a>
					</li>
	<!-- 공지사항 -->
					<li class="mymenu-sub mymenu-sub-notice" style="display: none;">
						<a href="javascript:submymenu('notice')"  title="공지사항" data-submenu="notice" class="btn-mymenu-sub mymenu-notice sub-menu-notice ">공지사항</a>
					</li>
				</ul>
			</div>
				
		<!-- MyMenu Content -->
	<!-- 자주 묻는 질문 -->
		<fmt:requestEncoding value="UTF-8"/>
			<c:forEach var="notice" items="${noticeList}">
				<!-- 전체 -->
				<c:if test="${notice.no_type eq '배송' || notice.no_type eq '주문/결제' || notice.no_type eq '취소/교환' || notice.no_type eq '반품/환불' || notice.no_type eq '기타'}">
				<div class="customer-cont customer-all">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 배송 -->
				<c:if test="${notice.no_type eq '배송' }">
				<div class="customer-cont customer-addr" >
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 주문/결제 -->
				<c:if test="${notice.no_type eq '주문/결제' }">
				<div class="customer-cont customer-order">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 취소/교환 -->
				<c:if test="${notice.no_type eq '취소/교환' }">
				<div class="customer-cont customer-cancel">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 반품/환불 -->			
				<c:if test="${notice.no_type eq '반품/환불' }">
				<div class="customer-cont customer-refund">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 기타 -->
				<c:if test="${notice.no_type eq '기타' }">
				<div class="customer-cont customer-other">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- 공지사항 -->
				<c:if test="${notice.no_type eq '공지사항' }">
				<div class="customer-cont customer-notice">
					<div class="direct-ask-cont direct-ask-on">
						<div class="direct-ask-list">
							<div class="direct-ask-list-tit">
								<span class="mark-ask"><c:out value="${notice.no_type}"/></span>
								<a href="#;" title="고객문의" class="link-direct-ask" onclick="toggleAsk(this);">
									<!-- 질문 -->
									<p><strong><c:out value="${notice.no_title}"/></strong></p> 
								</a>
								<div class="magazine-reply-info">
									<span class="reply-date">
										<fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/>
									</span>
								</div>
							</div>
							<div class="direct-ask">
								<div class="direct-ask-area direct-ask-answer">
									<span class="tit a">A</span>
									${notice.no_content}
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				</c:forEach>
					<div class="paging-num-wrap">
						<a href="#;" title="1" data-page="1" class="faq-page-btn btn-num btn-num-on">1</a>
<!-- 
						<a href="#;"title="2" data-page="2" class="faq-page-btn btn-num">2</a>
						<a href="#;" title="3" data-page="3" class="faq-page-btn btn-num">3</a>
						<a href="#;" title="4" data-page="4" class="faq-page-btn btn-num">4</a>
						<a href="#;" title="5" data-page="5" class="faq-page-btn btn-num">5</a>
						<a href="#;" title="6" data-page="6" class="faq-page-btn btn-num">6</a>
						<a href="#;" title="7" data-page="7" class="faq-page-btn btn-num">7</a>
 -->					
 					</div>
				
			</div>
		</div>
		<div class="layer-wrap popup-wrap" id="popup-wrap">
			<div class="bg-layer-wrap" onclick="Popup.hide();"></div>
		</div>
<script type="text/javascript" src="/bower_components/printThis/printThis.js"></script>
<script type="text/javascript" src="${path}/jquery/js/page/customer.js"></script>
</body>
</html>