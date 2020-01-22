<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=""><head lang="ko" id="hobbyful">
<title>하비풀 - 취미를 만나 일상이 아름다워지다.</title>
<!-- 
<script src="https://connect.facebook.net/en_US/sdk.js?hash=74dcbcc2704d622295a23269b1b69bee&amp;ua=modern_es6" async crossorigin="anonymous"></script>
<script src="https://connect.facebook.net/signals/config/299353887143885?v=2.9.15&amp;r=stable" async></script><script async src="https://connect.facebook.net/en_US/fbevents.js"></script><script type="text/javascript" async src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async src="https://www.google-analytics.com/gtm/js?id=GTM-NLKP5J5&amp;t=gtm2&amp;cid=2139233057.1577061431"></script>
<script type="text/javascript" async src="https://cdn.channel.io/plugin/ch-plugin-web.js" charset="UTF-8"></script>
<script id="facebook-jssdk" src="https://connect.facebook.net/en_US/sdk.js"></script><script type="text/javascript" async src="https://www.google-analytics.com/plugins/ua/ec.js"></script><script type="text/javascript" async src="//www.googleadservices.com/pagead/conversion_async.js"></script><script type="text/javascript" async src="//www.googleadservices.com/pagead/conversion_async.js"></script>
 -->
<script type="text/javascript">
 $(document).ready(function(){
		$(".btn-mymenu-order").addClass("btn-mymenu-on") //주문/배송관리 선택 
		$(".order-list-wrap").show()
		$(".delivery-list-wrap").hide()
		$(".edit-delivery-wrap").hide()
		$(".view-reply-wrap").hide()
		$(".reply-class-wrap").hide()
		$(".mymenu-sub-tab-wrap").hide()
		$(".mileage-wrap").hide()
		$(".coupon-wrap").hide()
		$(".edit-membership-wrap").hide()
		$(".direct-ask-wrap").hide()
		$(".change-pw-wrap").hide()
		$(".quit-membership-wrap").hide()
		$(".list-favorite").hide()
		$(".list-magazine").hide()
	})
 </script>
 
<body>
<div class="wrap" id="wrap">
	<div class="container">
		<div class="my-summary-wrap">
		<div class="profile-wrap">
			<div class="profile-thumb-wrap">
				<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png?0.6160473008019505" onerror="this.src='../static/img/bg-add-thumb.png'" class="thumb-profile" alt="프로필사진">
			</div>
			<div class="profile-info-wrap">
				안녕하세요.
				<div class="profile-name cut-txt">서현-님</div>
				<!--a href="javascript:;" title="프로필 사진 편집" class="btn-profile-thumb">프로필 사진 편집</a-->
				<label for="upload" class="btn-profile-thumb">프로필 사진 편집</label>
			</div>
		</div>
		<div class="my-info-wrap">
			<ul class="my-info-list">
				<li class="my-info">
				<span class="my-info-tit">회원등급<a href="#usergrade" title="보기" class="view-grade" onclick="showPopup2();">?</a></span>
				<strong class="my-info-txt my-level">thanksful</strong>
				</li>
				<li class="my-info">
				<span class="my-info-tit">내 클래스</span>
				<a href="/myclass.html"><strong class="my-info-txt my-class">0</strong></a>
				</li>
				<li class="my-info">
				<span class="my-info-tit">마일리지</span>
				<a href="javascript:;"><strong class="my-info-txt cut-txt my-point" onclick="$('.btn-mymenu-action-history').trigger('click');  $('.sub-menu-mileage').trigger('click')">1,000p</strong></a>
				</li>
				<li class="my-info">
				<span class="my-info-tit">할인쿠폰</span>
				<a href="javascript:;"><strong class="my-info-txt my-coupon" onclick="$('.btn-mymenu-action-history').trigger('click');  $('.sub-menu-coupon').trigger('click')">0</strong></a>
				</li>
			</ul>
		</div>
		</div>
		<!-- MyMenu -->
		<div class="mymenu-wrap">
<!-- 탭 -->
			<div class="mymenu-cont">
				<ul class="mymenu-list">
					<li class="mymenu"><a href="javascript:mymenu('order')" title="주문/배송관리" data-submenu="mymenu-order" class="btn-mymenu order btn-mymenu-order">주문/배송관리</a></li>
					<li class="mymenu"><a href="javascript:mymenu('address')" title="배송지 관리" data-submenu="mymenu-address" class="btn-mymenu address">배송지 관리</a></li>
					<li class="mymenu"><a href="javascript:mymenu('history')" title="나의 활동 내역" data-submenu="mymenu-action-history" class="btn-mymenu history btn-mymenu-action-history">나의 활동 내역</a></li>
					<li class="mymenu"><a href="javascript:mymenu('myinfo')" title="내 정보 관리" data-submenu="mymenu-myinfo" class="btn-mymenu myinfo">내 정보 관리</a></li>
				</ul>
			</div>
			<a href="javascript:favorite()" title="취미 보관함" class="btn-favorite favorite">취미 보관함</a>
		</div>
		<!-- MyMenuSubMenu -->
		<div class="mymenu-sub-wrap">
			<div class="mymenu-sub-cont">
			
<!-- 세부 탭 -->
				<ul class="mymenu-sub-list">
	<!-- 주문/배송조회 -->
					<li class="mymenu-sub mymenu-sub-order" style="display: list-item;">
						<a href="javascript:submymenu('order')"  title="주문/배송 조회" data-submenu="order" class="btn-mymenu-sub mymenu-order sub-menu-order btn-mymenu-sub-on">주문/배송 조회</a>
					</li>
	<!-- 배송지 관리 -->
					<li class="mymenu-sub mymenu-sub-address" style="display: none;">
						<a href="javascript:submymenu('address')" title="배송지 목록" data-submenu="addresslist" class="btn-mymenu-sub mymenu-address sub-menu-addresslist">배송지 목록</a>
					</li>
					<li class="mymenu-sub mymenu-sub-address" style="display: none;">
						<a href="javascript:submymenu('newaddress')" title="새 배송지 추가" data-submenu="newaddress" class="btn-mymenu-sub mymenu-newaddress sub-menu-newaddress">새 배송지 추가</a>
					</li>
	<!-- 나의활동내역 -->
					<li class="mymenu-sub mymenu-sub-history" style="display: none;">
						<a href="javascript:submymenu('history')" title="내가 쓴 댓글" data-submenu="comment" class="btn-mymenu-sub mymenu-history mymenu-action-history sub-menu-comment">내가 쓴 댓글</a>
					</li>
					<li class="mymenu-sub mymenu-sub-history" style="display: none;">
						<a href="javascript:submymenu('review')" title="구매 후기" data-submenu="review" class="btn-mymenu-sub mymenu-review mymenu-action-history sub-menu-review">구매 후기</a>
					</li>
					<li class="mymenu-sub mymenu-sub-history" style="display: none;">
						<a href="javascript:submymenu('qna')" title="1:1 문의내역" data-submenu="qna" class="btn-mymenu-sub mymenu-qna mymenu-action-history sub-menu-qna">1:1 문의내역</a>
					</li>
					<li class="mymenu-sub mymenu-sub-history" style="display: none;">
						<a href="javascript:submymenu('mileage')" title="마일리지 현황" data-submenu="mileage" class="btn-mymenu-sub mymenu-mileage mymenu-action-history sub-menu-mileage">마일리지 현황</a>
					</li>
					<li class="mymenu-sub mymenu-sub-history" style="display: none;">
						<a href="javascript:submymenu('coupon')" title="쿠폰 현황" data-submenu="coupon" class="btn-mymenu-sub mymenu-coupon mymenu-action-history sub-menu-coupon">쿠폰 현황</a>
					</li>
	<!-- 내 정보 관리 -->
					<li class="mymenu-sub mymenu-sub-myinfo" style="display: none;">
						<a href="javascript:submymenu('myinfo')" title="회원정보 수정" data-submenu="profile" class="btn-mymenu-sub mymenu-myinfo sub-menu-profile">회원정보 수정</a>
					</li>
					<li class="mymenu-sub mymenu-sub-myinfo" style="display: none;">
						<a href="javascript:submymenu('password')" title="비밀번호 변경" data-submenu="password" class="btn-mymenu-sub mymenu-password sub-menu-password">비밀번호 변경</a>
					</li>
					<li class="mymenu-sub mymenu-sub-myinfo" style="display: none;">
						<a href="javascript:submymenu('exit')" title="회원탈퇴" data-submenu="exit" class="btn-mymenu-sub mymenu-exit sub-menu-exit">회원탈퇴</a>
					</li>
					<li class="mymenu-sub mymenu-sub-favorite" style="display: none;">
						<a href="javascript:submymenu('favorite')" title="취미 클래스" data-submenu="class" class="btn-mymenu-sub mymenu-favorite sub-menu-class">취미 클래스</a>
					</li>
					<li class="mymenu-sub mymenu-sub-favorite" style="display: none;">
						<a href="javascript:submymenu('magazine')" title="매거진" data-submenu="magazine" class="btn-mymenu-sub mymenu-magazint sub-menu-magazine btn-mymenu-sub-on">매거진</a>
					</li>
				</ul>
			</div>
			
<!-- content 주의사항 -->
			<div class="reply-info-wrap">
				<div class="reply-info-cont cont-review" style="display:none">
				<!-- 구매후기 -->
					<div class="reply-info-area">
						1. 구매한 취미 클래스의 후기를 작성해 주세요. 구매 후기를 등록하시는 분들께 감사의 마일리지를 드립니다.
						<p class="reply-info-point">• 사진없이 글만 작성한 경우 : 200p<br>• 사진을 함께 첨부한 경우 : 1,000p<br></p>
						2. 마일리지는 처음 작성된 후기를 기준으로 지급됩니다.<br>
						3.	구매 후기는 배송이 완료된 이후부터 작성할 수 있습니다.<br>
						4. 작성한 구매 후기를 삭제하는 경우 지급한 마일리지는 반환됩니다.<br>
						5. 구매 취소/반품 할 경우에는 지급된 마일리지가 반환됩니다.
					</div>
					<a href="#link" title="구매 후기 작성 혜택 보기" class="btn-view-reply-info btn-show-reply-info">구매 후기 작성 혜택 보기</a>
					<a href="#link" title="구매 후기 작성 혜택 닫기" class="btn-view-reply-info btn-hide-reply-info">구매 후기 작성 혜택 닫기</a>
				</div>
				<div class="reply-info-cont cont-history" style="display:none">
				<!-- 1:1 문의내역-->
					<div class="reply-info-area reply-info-area-type02 cont-qna">
						<div class="reply-info-tit">[상담 안내]</div>
						<span class="reply-info-txt">• 1:1 문의를 주시면 담당자가 빠르게 답변 드리도록 하겠습니다.</span>
					</div>
				</div>
			</div>
<!-- 더 세부적인 탭 -->
		<!-- 기본 -->
			<div class="mymenu-sub-tab-wrap"></div>
		<!-- 내가쓴댓글 -->
			<div class="mymenu-sub-tab-wrap sub-tab-wrap-history" style="display: none;">
<!-- 			<div class="mymenu-sub-tab-wrap block" style="display: none;"> -->
				<ul class="mymenu-sub-tab-list">
					<li class="mymenu-sub-tab">
					<a href="/mypage.html?m=action-history&amp;s=comment&amp;type=magazine" title="매거진 댓글 보기" data-tabtype="magazine" class="btn-sub-tab btn-comment-tab btn-sub-on">매거진 댓글 보기</a>
					</li>
					<li class="mymenu-sub-tab">
					<a href="/mypage.html?m=action-history&amp;s=comment&amp;type=award" title="어워드 댓글 보기" data-tabtype="award" class="btn-sub-tab btn-comment-tab">어워드 댓글 보기</a>
					</li>
				</ul>
			</div>
		<!-- 구매후기 -->
			<div class="mymenu-sub-tab-wrap sub-tab-wrap-review" style="display: none;">
<!-- 			<div class="mymenu-sub-tab-wrap block" style="display: none;"> -->
				<ul class="mymenu-sub-tab-list">
					<li class="mymenu-sub-tab">
					<a href="/mypage.html?m=action-history&amp;s=review&amp;type=writer" title="구매 후기 작성" data-tabtype="writer" class="btn-sub-tab btn-review-tab">구매 후기 작성
					</a></li>
					<li class="mymenu-sub-tab"><a href="/mypage.html?m=action-history&amp;s=review&amp;type=history" title="클래수 후기 목록" data-tabtype="history" class="btn-sub-tab btn-review-tab btn-sub-on">구매 후기 목록</a></li>
				</ul>
			</div>
		</div>
		
		
		<!-- MyMenu Content -->
<!-- 탭 내용 -->		
		
		<article class="mymenu-content">
	<!-- 주문/배송관리 -->
			<div class="order-list-wrap list-order">
				<!-- 주문했을시 -->
				<section class="order-list">
					<article>
						<header>
							<ul>
							<li><span class="i-title">주문번호</span> <span class="i-value">20011513-46048R3258</span></li>
							<li><span class="i-title">신청일</span> <span class="i-value">2020. 1. 15</span></li>
							<li class="a-btn"><a href="/mypage.html?m=order&amp;s=orderDetail&amp;order_id=35215">주문상세보기</a></li>
							</ul>
						</header>
						<div class="area-content">
							<ul>
								<li class="i-product">
									<ul>
										<li class="i-thumbnail">
											<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d7424e70-feb6-11e8-b1bc-afe65c7c2522-square.png" alt="">
										</li>
										<li class="i-name">
											반려동물 장난감 뜨개질 클래스
										</li>
										<li class="i-option">
											베이직 패키지
										</li>
										<li class="i-status">
											취소
										</li>
										<li class="i-qty">
											수량 : 1
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</article>
				</section>
				<!-- 
				<div class="no-view-wrap">
					<div class="no-view-tit">아직 주문하신 클래스가 없습니다.</div>
					<div class="no-view-txt">하비풀에서 새로운 취미를 가져보세요!</div>
					<a href="/class.html" title="클래스 보러가기" class="btn-no-view">클래스 보러가기</a>
				</div>
				 -->
			</div>
	<!-- 배송지관리 -->
			<!-- 배송지목록 -->
			<c:forEach var="" items="">
			<div class="delivery-list-wrap list-address">
				<div class="delivery-list-cont">
					<div class="delivery-list-title">배송지명</div>
					<div class="delivery-list-area delivery-list-name">
						<div class="delivery-list-tit">수령인</div>
						<div class="delivery-list-txt">수령자명</div>
					</div>
					<div class="delivery-list-area delivery-list-phone">
						<div class="delivery-list-tit">휴대폰번호</div>
						<div class="delivery-list-txt">01091963064</div>
					</div>
					<div class="delivery-list-area delivery-list-address">
						<div class="delivery-list-tit">주소지</div>
						<div class="delivery-list-txt"></div>
					</div>
					<div class="delivery-list-btn">
						<a href="#link" title="수정" data-arr-idx="0" class="btn-delivery-list edit-address-btn">수정</a>
						<a href="#link" title="삭제" data-address-id="12843" class="btn-delivery-list delete-address-btn">삭제</a>
					</div>
				</div>
			</div>
			</c:forEach>
			<!-- 새배송지 추가 -->
			<div class="edit-delivery-wrap list-newaddress" style="display:none">
				<div class="edit-delivery-cont">
					<table class="edit-delivery-table" summary="배송지 입력 테이블">
						<%-- <colgroup>
							<col class="th-edit-delivery">
							<col class="td-edit-delivery">
						</colgroup> --%>
						<tr><th class="th-edit-delivery">배송지명</th>
							<td class="td-edit-delivery">
								<div class="edit-delivery-area"><span class="input-wrap input-type02">
									<input type="text" class="input delivery address-name" value=""></span></div>
							</td>
						</tr>
						<tr><th class="th-edit-delivery">수령자명</th>
							<td class="td-edit-delivery">
								<div class="edit-delivery-area">
									<span class="input-wrap input-type02">
									<input type="text" class="input receive-name" value="">
									</span>
								</div>
							</td>
						</tr>
						<tr><th class="th-edit-delivery">휴대전화</th>
							<td class="td-edit-delivery">
								<div class="edit-delivery-area">
									<span class="input-wrap input-type03">
									<input type="text" class="input phone-first" value="">
									</span>
									<span class="input-wrap input-type03">
									<input type="text" class="input phone-middle" value="">
									</span>
									<span class="input-wrap input-type03">
									<input type="text" class="input phone-last" value="">
									</span>
								</div>
							</td>
						</tr>
						<tr><th class="th-edit-delivery">추가번호<div class="txt-sub">(선택)</div></th>
							<td class="td-edit-delivery">
								<div class="edit-delivery-area">
								<span class="input-wrap input-type03">
								<input type="text" class="input phone2-first" value="">
								</span>
								<span class="input-wrap input-type03">
								<input type="text" class="input phone2-middle" value="">
								</span>
								<span class="input-wrap input-type03"><input type="text" class="input phone2-last" value=""></span>
								</div>
							</td>
						</tr>
						<tr><th class="th-edit-delivery">주소</th>
							<td class="td-edit-delivery">
								<div class="edit-delivery-area">
									<span class="input-wrap input-type04">
									<input type="text" class="input new-address-zipcode" value="">
									</span>
									<a href="#link" title="우편번호" class="btn-post-num get-zipcode">우편번호</a>
								</div>
								<div class="edit-delivery-area inline-45">
									<span class="input-wrap"><input type="text" class="input new-address" value=""></span>
								</div>
								<div class="edit-delivery-area inline-45"><span class="input-wrap">
									<input type="text" class="input new-address-detail" value=""></span></div>
								<div class="edit-delivery-area">
									<input type="checkbox" id="basic-delivery" class="btn-join-agree">
									<label for="basic-delivery" class="label-basic-delivery join-agree-label">기본 배송지로 저장</label></div>
							</td>
						</tr>
					</table>
					<div class="edit-delivery-btn"><a href="addNewPost.shop" title="배송지 추가하기" class="btn-edit-delivery register-address">배송지 추가하기</a>
					</div>
				</div>
			</div>
	<!-- 나의 활동내역 -->
		<!-- 내가쓴 댓글 -->
			<div class="view-reply-wrap list-history">
				<div class="magazine-list-wrap">
					<ul class="magazine-list">
						<li class="magazine-list-cont">
							<div class="magazine-list-area">
							<div class="magazine-list-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/ba82f930-3374-11ea-9c9f-2b82c6d7ac25-resize.jpg" class="thumb-magazine-list" alt="">
							<span class="thumb-slide-play">재생</span>
							</div>
							<a href="view-magazine.html?id=252#commentGroup-1304" title="하비풀 취미클래스를 함께 만들어요!">
								<div class="magazine-list-info">
									<span class="magazine-list-tit cut-txt">h-NEWS</span>
									<strong class="magazine-list-txt">하비풀 취미클래스를 함께 만들어요!</strong>
								</div>
							</a></div>
							<div class="magazine-reply-wrap">
							<div class="magazine-reply-tit"><div class="magazine-reply-nick">서현-</div>
							<div class="magazine-reply-info"><span class="magazine-reply-date">2020.01.15 오후 2시09분</span>
							<a href="#link" title="삭제" data-mz-idx="252" data-mct-idx="1446" class="btn-del-reply btn-del-magazine-comment">삭제</a>
							</div>
							</div>
							<div class="magazine-reply-cont">dfsfsdfds</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		<!-- 구매후기 -->
			<div class="reply-class-wrap list-review">
				<div class="no-view-wrap">
					<div class="no-view-tit">후기를 작성할 수 있는 클래스가 아직 없습니다.</div>
					<div class="no-view-txt">구매 후기는 배송완료 후에 작성하실 수 있습니다.</div>
					<a href="/mypage.html?m=order&amp;s=order" title="주문/배송 조회로 이동" class="btn-no-view">주문/배송 조회로 이동</a>
				</div>
			</div>
		<!-- 1:1문의내역 -->
			<div class="direct-ask-wrap list-qna">
				<div class="direct-ask-tit">1:1 문의내역
					<a href="/mypage.html?m=action-history&amp;s=qna&amp;action=write" class="btn-write-direct btn-write-qna">1:1 문의 작성하기</a>
				</div>
				<div class="no-view-wrap">
					<div class="no-view-tit">궁금하신 내용이 있으시면 1:1 문의를 신청해보세요.</div>
					<div class="no-view-txt">하비풀 서비스 이용시 궁금하신 내용이 있으시면 1:1 문의를 이용해보세요.<br>
					친절하고 빠르게 문제 해결을 도와드리겠습니다.</div><!--a href="/mypage.html?m=action-history&s=qna&action=write" title="1:1 문의 신청하기" class="btn-no-view no-view-write-qna">1:1 문의 신청하기</a-->
				</div>
			</div>
		<!-- 마일리지 현황  -->
			<div class="mileage-wrap list-mileage">
				<div class="reply-info-cont">
					<div class="reply-info-area reply-info-area-type02">
						<div class="mileage-info">
							<div class="mileage-info-tit">현재 마일리지</div>
							<div class="mileage-info-p">1,000P</div>
						</div>
						<div class="mileage-info">
							<div class="mileage-info-tit">총 적립 마일리지</div>
							<div class="mileage-info-p">1,000P</div>
						</div>
						<div class="mileage-info">
							<div class="mileage-info-tit">사용한 마일리지</div>
							<div class="mileage-info-p">0P</div>
						</div>
						<div class="mileage-info">
							<div class="mileage-info-tit">이번 달 소멸 예정 마일리지</div>
							<div class="mileage-info-p">0P</div>
						</div>
					</div>
				</div>
				<div class="mileage-info-txt">•  마일리지는 적립(충전)된 달로부터 12개월 이내에 사용하셔야 합니다.<br></div>
				<div class="mileage-cont"><div class="mileage-tit">마일리지 적립/사용 내역</div>
					<div class="mileage-table">
						<table summary="마일리지 적립/사용 내역 테이블">
							<colgroup>
								<col class="col-mileage01">
								<col class="col-mileage02">
								<col class="col-mileage03">
								<col class="col-mileage04">
							</colgroup>
							<thead>
							<tr><th class="mileage-th">적립날짜</th><th class="mileage-th">내역</th><th class="mileage-th">마일리지</th><th class="mileage-th">소멸예정</th></tr>
							</thead>
							<tbody class="mileage_list_wrap">
								<tr>
									<td class="mileage-td">2019.12.23</td>
									<td class="mileage-td">회원가입 포인트</td>
									<td class="mileage-td txt-color-r">+1,000p</td>
									<td class="mileage-td">2020.12.22</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
	<!-- 내정보 관리 -->
		<!-- 회원정보 수정 -->
			<div class="edit-membership-wrap list-myinfo">
				<div class="edit-membership-tit">회원 정보 수정</div>
				<div class="edit-membership-cont">
					<div class="edit-membership">
						<table class="table-edit-membership">
							<colgroup><col class="col-membership01"><col class="col-membership02"></colgroup>
							<tbody>
							<tr>
									<th class="edit-membership-th">닉네임</th>
									<td class="edit-membership-td">
									<div class="input-wrap">
										<input type="text" class="input edit-nickname" value="서현-">
									</div>
									</td>
								</tr>
								<tr>
									<th class="edit-membership-th">간편로그인 연동</th>
									<td class="edit-membership-td">
										<a href="#link" title="페이스북" class="btn-quick-login btn-quick-facebook" id="fb_add_btn">페이스북</a>
										<span href="javascript:;" title="네이버" class="btn-quick-login btn-quick-naver btn-quick-naver-on">네이버</span>
										<a href="#link" title="카카오톡" class="btn-quick-login btn-quick-kakaotalk" id="ka_add_btn">카카오톡</a>
										<div class="edit-membership-input-info">연동된 SNS계정으로 간편 로그인이 가능합니다.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="edit-membership">
						<table class="table-edit-membership">
							<colgroup><col class="col-membership01"><col class="col-membership02"></colgroup>
							<tbody>
							<tr><th class="edit-membership-th2">이메일</th>
								<td class="edit-membership-td"><div class="input-wrap">
									<input type="email" value="junsor2003@naver.com" class="input edit-email" readonly=""></div></td></tr>
							<tr><th class="edit-membership-th2">휴대폰번호</th>
								<td class="edit-membership-td">
									<div class="edit-membership-phone">
										<div class="input-wrap"><input type="tel" class="input edit-prifle-phone1" value="010" maxlength="3"></div>
										<div class="input-wrap"><input type="tel" class="input edit-prifle-phone2" value="9196" maxlength="4"></div>
										<div class="input-wrap"><input type="tel" class="input edit-prifle-phone3" value="3064" maxlength="4"></div>
										<a href="#link" title="인증" class="btn-edit-membership-phone phone-auth-btn">인증 완료</a>
									</div>
									<div class="edit-membership-confirm" style="display:none;">
										<div class="input-wrap"><input type="text" class="input auth-number"></div>
										<a href="#link" title="확인" class="btn-edit-membership-confirm" style="vertical-align:middle;">확인</a>
										<span class="confirm-time auth-time"></span>
										<div class="table-txt txt-color-r auth-error-msg"></div>
									</div><div class="edit-membership-input-info">입력하신 이메일/ 휴대폰 번호로 비밀번호 찾기 및 재설정을 하실 수 있습니다.</div>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="edit-membership">
						<table class="table-edit-membership">
							<colgroup><col class="col-membership01"><col class="col-membership02"></colgroup>
							<tbody>
								<tr><th class="edit-membership-th2">이메일/SMS 수신동의</th>
									<td class="edit-membership-td"><span class="tit">하비풀의 다양한 소식들을 받아 보시겠습니까?</span>
										<div class="edit-membership-input-info">이벤트정보, 기타 다양한 정보를 빠르게 만나실 수 있습니다. (주문, 배송내역은 수신여부와 상관 없이 기본 발송됩니다)</div>
										<div class="edit-membership-agree"><input type="checkbox" class="btn-join-agree" name="agree-email" id="agree-email">
											<label class="join-agree-label" for="agree-email">이메일로 받아볼래요</label></div>
										<div class="edit-membership-agree"><input type="checkbox" class="btn-join-agree" name="agree-sms" id="agree-sms">
											<label class="join-agree-label" for="agree-sms">문자로 받아볼래요</label></div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="edit-membership edit-membership-border">
						<table class="table-edit-membership">
							<colgroup><col class="col-membership01"><col class="col-membership02"></colgroup>
							<tbody>
							<tr><th class="edit-membership-th2">이름</th>
								<td class="edit-membership-td">
									<div class="input-wrap"><input type="text" class="input edit-profile-name" value="전서현"></div>
									<div class="edit-membership-input-info">한글 2~5자 사이로 입력해 주세요.</div>
								</td></tr>
							<tr><th class="edit-membership-th2">생년월일</th>
								<td class="edit-membership-td">
									<div class="edit-membership-bitrhday">
										<div class="input-wrap"><input type="text" class="input edit-birth-year" value="1997"></div>년
										<div class="input-wrap"><input type="text" class="input edit-birth-month" value="01"></div>월
										<div class="input-wrap"><input type="text" class="input edit-birth-day" value=""></div>일
									</div>
									<div class="edit-membeship-radio">
										<input type="radio" class="radio" id="solar" name="birthday" checked="">
										<label for="solar" class="label-edit-membership-radio">양력</label>
										<input type="radio" class="radio" id="lunar" name="birthday">
										<label for="lunar" class="label-edit-membership-radio">음력</label>
									</div>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="edit-membership-btn"><a href="#link" title="수정완료" class="btn-edit-membership edit-profile-btn">수정완료</a></div>
				</div>
			</div>
		<!-- 비밀번호 변경 -->
			<div class="change-pw-wrap list-password">
				<div class="edit-membership-tit">비밀번호 변경</div>
				<div class="edit-membership-cont">
					<div class="edit-membership edit-membership-border">
						<table class="table-edit-membership">
							<colgroup><col class="col-membership01"><col class="col-membership02"></colgroup>
							<tbody>
								<tr><th class="edit-membership-th2">현재 비밀번호</th>
									<td class="edit-membership-td">
										<div class="input-wrap"><input type="password" class="input cur-password"></div>
									</td></tr>
								<tr><th class="edit-membership-th2">새 비밀번호</th>
									<td class="edit-membership-td">
										<div class="input-wrap"><input type="password" class="input new-password"></div>
										<div class="change-pw-info">비밀번호는 6~16자 영문, 숫자를 사용해주세요.</div></td></tr>
								<tr><th class="edit-membership-th2">새 비밀번호 확인</th>
									<td class="edit-membership-td">
										<div class="input-wrap"><input type="password" class="input confirm-password"></div>
										<div class="change-pw-info">비밀번호 확인을 위해 새 비밀번호를 다시 한번 더 입력해주세요.</div></td></tr>
							</tbody>
						</table>
					</div>
					<div class="edit-membership-btn">
						<a href="#link" title="변경완료" class="btn-edit-membership change-pass-btn">변경완료</a></div>
				</div>
			</div>
		<!-- 회원탈퇴 -->
			<div class="quit-membership-wrap list-exit">
				<div class="quit-membership-tit">
					<div class="quit-tit">그 동안 하비풀을 이용해주셔서 감사합니다.</div>
					<div class="quit-txt">고객님께서 회원 탈퇴를 원하신다니 저희 서비스가 많이 부족하고 미흡했나 봅니다.<br>
					불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.</div>
				</div>
				<div class="quit-membership-cont">
					<div class="edit-membership-tit">회원탈퇴 안내</div>
					<div class="info-quit-membership">• 회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 hobbyful 고객정보 보호정책에 따라 관리 됩니다.<br>
					• 탈퇴 시 보유하고있던 마일리지, 쿠폰은 모두 영구 삭제됩니다.<br>• 정기구독이 진행 중인 경우에는 탈퇴가 불가능하며, 취소/반품이 완료된 이후 가능합니다.<br>
					• 탈퇴 후 24시간 동안 기존에 사용하신 이메일과 휴대폰 번호로는 재가입이 불가능합니다.
					</div>
					<div class="reply-info-cont align-center">현재 고객님의 사용 가능 마일리지는 <br class="-w">
					<span class="bold txt-color-r">1000 p</span>입니다</div>
				</div>
				<div class="quit-membership-cont">
					<div class="edit-membership-tit">탈퇴 사유 확인</div>
					<div class="write-reply-area">
						<div class="write-reply">
							<div class="write-reply-tit">사유선택</div>
							<div class="write-reply-input">
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-product" name="quit-category" checked="">
									<label class="label-ask" for="quit-product">상품 품질 불만</label>
								</span>
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-use" name="quit-category">
									<label class="label-ask" for="quit-use">이용빈도 낮음</label>
								</span>
								<span class="ask-category ask-category-on"><input type="radio" class="check-ask" id="quit-delivery" name="quit-category">
									<label class="label-ask" for="quit-delivery">배송불만</label>
								</span>
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-return" name="quit-category">
									<label class="label-ask" for="quit-return">교환/환불 불만</label>
								</span>
								<br class="-m">
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-as" name="quit-category">
									<label class="label-ask" for="quit-as">A/S 불만</label>
								</span>
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-nofun" name="quit-category">
									<label class="label-ask" for="quit-nofun">재미없음</label>
								</span>
								<span class="ask-category ask-category-on">
									<input type="radio" class="check-ask" id="quit-etc" name="quit-category">
									<label class="label-ask" for="quit-etc">기타</label>
								</span>
							</div>
						</div>
						<div class="write-reply write-textarea">
							<div class="write-reply-tit">기타(선택)</div>
							<div class="write-reply-input">
								<div class="input-wrap">
									<textarea class="textarea exit-reason" rows="" cols="" placeholder="기타 사유를 입력해 주세요." maxlength="300"></textarea>
									<span class="change-reason-txt-count">0/300</span>
								</div>
							</div>
						</div>
						<div class="write-reply">
							<div class="write-reply-tit">비밀번호</div>
							<div class="write-reply-input">
								<div class="input-wrap">
									<input type="password" class="input exit-password">
								</div> 
								<div class="change-pw-info">간편로그인으로 가입하신 경우, 
									<a href="#" onclick="User.showFindPassword(); return false;">비밀번호 찾기</a>
									를 통해 임시비밀번호를 발급받은 후 입력해 주세요.
								</div>
							</div>
						</div>
					</div>
					<div class="edit-membership-btn">
						<a href="#link" title="탈퇴하기" class="btn-edit-membership exit-user-btn">탈퇴하기</a>
					</div>
				</div>
			</div>
		<!-- 취미클래스 -->
			<div class="favorite-wrap list-favorite">
				<ul class="class-list-wrap">
					<li class="class-list">
					<a href="/product/53ea1a6b8b" title="가죽 미니 버킷백 만들기 클래스">
						<div class="class-list-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/6179e8f0-39a4-11e9-9148-65480c11ba0a-square.jpg" alt="" class="thumb-class-list">
						</div>
						<div class="class-list-cont">
							<p class="class-list-txt">마치 공방 속 장인이 된 것 같은 하루</p>
							<p class="class-list-info">가죽 미니 버킷백 만들기 클래스</p>
						</div>
					</a>
					</li>
				</ul>
			<div class="paging-num-wrap"><a href="#link" title="1" data-page="1" class="favorite-page-btn btn-num btn-num-on">1</a></div></div>
		<!-- 매거진 -->
			<div class="favorite-wrap list-magazine">
				<ul class="class-list-wrap2"></ul>
				<div class="paging-num-wrap"></div>
			</div>
		<!-- 페이지 번호 -->
				<div class="paging-num-wrap">
					<a href="#link" title="1" class="btn-num btn-num-on">1</a>
				</div>
		</article>
		
		
		
		<!-- 프로필사진부분 -->
		<div class="layer-wrap photo-wrap" id="photo-wrap">
			<div class="bg-layer-wrap" onclick="hideProfile();"></div>
			<div class="popup-cont">
				<h2 class="layer-tit">프로필 사진 바꾸기</h2>
				<div class="popup-btn">
					<a href="javascript:;" title="사진 업로드" class="btn-popup">
						<input type="file" class="btn-upload profile-upload" id="upload" accept="image/*">
						<label for="upload" class="label-upload">사진 업로드</label>
					</a>
					<a href="javascript:;" title="취소" class="btn-popup" onclick="hideProfile();">취소</a>
				</div>
			</div>
		</div>
		<div class="layer-wrap popup2-wrap" id="popup2-wrap" style="z-index:100;" onclick="hidePopup2();"><!-- popup2-wrap은 불러올때 popup2-on 클래스만 추가 -->
		<div class="bg-layer-wrap -w" onclick="hidePopup2();"></div>
		<div class="popup3-cont">
		<h2 class="popup3-tit">회원등급안내</h2>
		<div class="popup3-area">
		<ul class="popup3-list-wrap">
		<li class="popup3-list popup3-list01">
		<div class="popup3-grade">
		<strong>thanksful</strong>
		함께해줘서 고마워요!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>0</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>0</p>
		</div>
		</li>
		<li class="popup3-list popup3-list02">
		<div class="popup3-grade">
		<strong>wonderful</strong>
		첫 취미 시작, 멋져요!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>1</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>1,000</p>
		</div>
		</li>
		<li class="popup3-list popup3-list03">
		<div class="popup3-grade">
		<strong>joyful</strong>
		즐거운 취미생활 중!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>3</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>2,500</p>
		</div>
		</li>
		<li class="popup3-list popup3-list04">
		<div class="popup3-grade">
		<strong>colorful</strong>
		다양한 취미에 도전하셨군요!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>6</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>5,000</p>
		</div>
		</li>
		<li class="popup3-list popup3-list05">
		<div class="popup3-grade">
		<strong>beautiful</strong>
		일상이 아름다워져요!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>9</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>7,500</p>
		</div>
		</li>
		<li class="popup3-list popup3-list06">
		<div class="popup3-grade">
		<strong>hobbyful</strong>
		진정한 하비풀 매니아!
		</div>
		<div class="popup3-txt">
		<p>구매횟수</p>
		<p>12</p>
		</div>
		<div class="popup3-txt">
		<p>마일리지 적립</p>
		<p>10,000</p>
		</div>
		</li>
		</ul>
		</div>
		<p class="popup3-info">• 마일리지는 발급일로부터 12개월 뒤에 자동 소멸됩니다.</p>
		<p class="popup3-info">• 회원등급은 매월 말일에 업데이트 됩니다.</p>
		<button class="btn-popup3-info-close">닫기</button>
		<span class="cock -w"></span>
		</div>
		</div>
	</div>
</div>
</div>
<%-- <script>
HF.DATA.params = {};
</script>
<script type="text/javascript" src="${path}/jquery/js/HF._init.js"></script>
<!-- Page Load -->
<script id="orderListTemplate" type="text/x-jsrender" data-jsv-tmpl="jsvTmpl">
{{if !list.length}}
<div class="no-view-wrap">
<div class="no-view-tit">아직 주문하신 클래스가 없습니다.</div>
<div class="no-view-txt">하비풀에서 새로운 취미를 가져보세요!</div>
<a href="/class.html" title="클래스 보러가기" class="btn-no-view">클래스 보러가기</a>
</div>
{{else}}
<section class="order-list">
{{for list}}
<article>
<header>
<ul>
<li><span class="i-title">주문번호</span> <span class="i-value">{{:order_id}}</span></li>
<li><span class="i-title">신청일</span> <span class="i-value">{{:disp_order_regdate}}</span></li>
<li class="a-btn"><a href="${path}/user/mypage.shop?m=order&s=orderDetail&order_id={{:order_idx}}">주문상세보기</a></li>
</ul>
</header>
<div class="area-content">
<ul>
{{for classList}}
<li class="i-product">
<ul>
<li class="i-thumbnail">
<img src="{{:disp_class_thumbnail}}" alt="">
</li>
<li class="i-name">
{{:class_name}}
</li>
<li class="i-option">
{{:class_option_name}}
</li>
<li class="i-status">
{{:~root.stateCode[oc_status]}}
</li>
<li class="i-qty">
수량 : {{:oc_quantity}}
</li>
</ul>
</li>
{{/for}}
</ul>
</div>
</article>
{{/for}}
</section>
<div class="paging-num-wrap">
{{for start=1 end=totalPage itemVar="~i"}}
{{if ~i == ~root.orderPage}}
<a href="${path}/user/mypage.shop?m=order&s=order&page={{:}}" title="{{:}}" data-page="{{:}}" class="order-page-btn btn-num btn-num-on">{{:}}</a>
{{else}}
<a href="${path}/user/mypage.shop?m=order&s=order&page={{:}}" title="{{:}}" data-page="{{:}}" class="order-page-btn btn-num">{{:}}</a>
{{/if}}
{{/for}}
</div>
{{/if}}
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/postcode/api/core/191007/1570443254160/191007.js"></script>

 --%>
<script type="text/javascript" src="/bower_components/printThis/printThis.js"></script>
<script type="text/javascript" src="${path}/jquery/js/page/mypage.js"></script>
 
<noscript></noscript>
<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=45#channel=f3aae2a4d907ebc&amp;origin=https%3A%2F%2Fhobbyful.co.kr" style="border: none;"></iframe></div><div></div></div>
</div>
</body>
</html>