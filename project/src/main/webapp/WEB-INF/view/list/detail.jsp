	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hability-detail</title>
<script>
 
	function reset() {
		$('.modal').on('hidden.modal', function() {
			$(this).reset();
		})
	}
	
	function form_btn(n) {
		var quantity = document.getElementById("count");
		
		quan_value = parseInt(quantity.value);
		quan_value +=n;
		quantity.value = quan_value;
		
		if(quan_value <=0) {
			quantity.value = 1;
		}
		
		var price = document.getElementById("price");
		price_value = parseInt(price.value);
		price_value = price_value * quan_value; // 가격*수량
		totalprice.value = price_value;
	}
	
	function selectRadio(val) {
		//alert(val);
		if(val == '1') {
			$('#1').css('display', 'block');
			$('#2').css('display', 'none');
			$('#3').css('display', 'none');
		} else if(val == '2') {
			$('#1').css('display', 'none');
			$('#2').css('display', 'block');
			$('#3').css('display', 'none');
		} else if(val == '3') {
			$('#1').css('display', 'none');
			$('#2').css('display', 'none');
			$('#3').css('display', 'block');
		}
	}
	
	/* $(document).ready(function() {
		$('input[type="radio"]').click(function () {
			var inputValue = $(this).attr("value");
			var targetBox = $("."+inputValue);
			$(".select").not(targetBox).hide();
			$("tagetBox").show();
		});
	}); */

/* 	$('input[type=radio][name=kit_num]').on('click', function() {
		var chkValue = $('input[type=radio][name=tp_cd]:checked').val();
		
		if(chkValue == '1') {
			$('#1').css('display', 'block');
			$('#2').css('display', 'none');
			$('#3').css('display', 'none');
		} else if(chkValue == '2') {
			$('#1').css('display', 'none');
			$('#2').css('display', 'block');
			$('#3').css('display', 'none');
		} else if(chkValue == '3') {
			$('#1').css('display', 'none');
			$('#2').css('display', 'none');
			$('#3').css('display', 'block');
		}
	}) */
</script>

</head>
<body>
<div class="container">
	<div class="vod-wrap">
		<div class="vod-cont vimeohelper-92950 vimeohelper"
			data-vimeo-initialized="true">
			<div class="vod-cont-wrap"></div>
			<iframe src="https://player.vimeo.com/video/382550410?app_id=122963"
				width="426" height="240" frameborder="0"
				allow="autoplay; fullscreen" allowfullscreen=""
				title="intro_final03" data-ready="true" class="vimeohelper-player"></iframe>
		</div>
		<div class="vod-info-wrap">
			<div class="vod-info-tit view-class-title">
				<span class="i-lecturer">${classDetail.teacher}</span>
				${classDetail.cl_title}
			</div>
			<div class="vod-info-price-discount">
				 <span class="i-regularPrice view-class-discount-regularPrice">
				 	<fmt:formatNumber value="${classDetail.cl_price}" pattern="##,###" />원
				 </span>
			</div>
			<ul class="vod-info-list">
				<li class="vod-info">
					<span class="vod-info-list-tit"> 적립	마일리지</span>
					<span class="vod-info-list-txt view-class-mileage">
						최대 <fmt:formatNumber value="${classDetail.cl_price *0.1}" pattern="##,###" />p
					</span>
				</li>
				<li class="vod-info">
					<span class="vod-info-list-tit">배송비</span>
					<span class="vod-info-list-txt">무료배송(도서산간지역 제외)</span>
				</li>
			</ul>
			<div class="vod-info2-wrap i-totalprice">
				<div class="vod-price">
					총 클래스 가격 <span class="txt-color-r s-totalprice"></span>원
				</div>
			</div>
			<div class="vod-btn-wrap">
				<a href="#like" title="좋아요" class="btn-like">좋아요</a>
				<c:if test="${empty sessionScope.loginUser}">
					<a href="javascript:dologin()" class="btn-get">클래스 신청하기</a>
				</c:if>
				<c:if test="${!empty sessionScope.loginUser}">
					<a data-toggle="modal" href="#option" class="btn-get">클래스 신청하기</a>
					<%-- <a href="javascript:optionModal(${classDetail.cl_num})" class="btn-get">클래스 신청하기</a> --%>
				</c:if>
					<!-- <span class="btn-get-soldout" style="display: none">일시 품절</span> -->
			</div>
		</div>
	</div>
	
		<div class="tab-detail-wrap" id="tab-detail-explain">
			<ul class="tab-detail-list tab-on01" id="tab-detail-list">
				<li class="tab-detail"><a href="#detail-explain"
					class="btn-tab-detail">클래스 소개</a></li>
				<li class="tab-detail"><a href="#detail-intro"
					class="btn-tab-detail">하비풀 스토리</a></li>
				<li class="tab-detail"><a href="#detail-epilogue" title="후기"
					class="btn-tab-detail">후기 <span
						class="txt-color-r review-count">(12)</span></a></li>
				<li class="tab-detail tab-last"><a href="#detail-delivery"
					class="btn-tab-detail">배송/교환/환불</a></li>
			</ul>
		</div>
		<div class="class-detail-wrap block" id="detail-explain">
			<div class="detail-explain-wrap c-editor s-classintro">
				<p style="text-align: center;">${list.cl_info}</p>
				<p style="text-align: center;">&nbsp;</p>

				<p style="text-align: center;">&nbsp;</p>
			</div>
			<!-- 클래스일 경우, s-classintro 추가됨 -->
		</div>
		<div class="class-detail-wrap block" id="detail-intro">
			<div class="detail-explain-lecture-wrap">
				<p style="text-align: center">
<!-- 					<img style="max-width: 750px; width: 100%;"
						src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/contents/52d5e3c0-dce9-11e8-b590-238f99ca8336-resize.png"
						alt=""> -->
						${list.cl_story }
				</p>
			</div>
		</div>
		<div class="class-detail-wrap block" id="detail-epilogue">
			<div class="class-epilogue-wrap">
				<div class="class-epilogue-tit">
					구매 후기 <a href="#review" title="후기작성" class="btn-write-epilogue">후기작성</a>
				</div>
				<div class="view-class-review-wrap">
					<div class="class-epilogue-cont">
						<div class="class-epilogue-area">
							<div class="magazine-reply-wrap">
								<div class="magazine-reply-tit">
									<div class="magazine-reply-nick">취미는사랑</div>
									<div class="magazine-reply-star">
										<div class="reply-star-on reply-star-on0">this.cr_star</div>
									</div>
									<div class="magazine-reply-info">
										<span class="reply-date">2020.01.15</span><a href="#report"
											data-cr-id="3141" title="신고"
											class="btn-edit-reply btn-report-reply"
											style="color: #f1645d;">신고</a>
									</div>
								</div>
								<div class="magazine-reply-cont">라탄 공예 관심은 있으면서도 막상 시작하기가
									쉽지 않았는데 완성품이 너무 예뻐서 용기내봤어요~ 하비풀 배송이 늘 그렇듯 넘나 빠르게 받아봤구요 박스 포장
									꼼꼼하고 깔끔하네요~ 구성품도 하나하나 감성템이에요(나무 손잡이 송곳까지!ㅎ) 만드는 과정 진행사항을 표시할 수
									있는 스티커도 넘 귀여워요! 얼른 주말이 돼서 차근차근 만들어 보고싶어요~ 덕분에 주말이 더 기다려집니다~~</div>
								<ul class="reply-thumb-list">
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="0" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab72c5c0-3792-11ea-a312-cb04ff18abca-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab72c5c0-3792-11ea-a312-cb04ff18abca-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="1" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab784400-3792-11ea-a312-cb04ff18abca-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab784400-3792-11ea-a312-cb04ff18abca-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="2" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab822f10-3792-11ea-a312-cb04ff18abca-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/ab822f10-3792-11ea-a312-cb04ff18abca-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
								</ul>
							</div>
						</div>
						<div class="class-epilogue-area">
							<div class="magazine-reply-wrap">
								<div class="magazine-reply-tit">
									<div class="magazine-reply-nick">에스더</div>
									<div class="magazine-reply-star">
										<div class="reply-star-on reply-star-on0">this.cr_star</div>
									</div>
									<div class="magazine-reply-info">
										<span class="reply-date">2020.01.15</span><a href="#report"
											data-cr-id="3137" title="신고"
											class="btn-edit-reply btn-report-reply"
											style="color: #f1645d;">신고</a>
									</div>
								</div>
								<div class="magazine-reply-cont">
									라탄 바구니 만들어보고 정규클래스 기다리고있어서 바로주문했는데요~ <br>바구니 만드는건 좀헷갈려서 잘
									못만든것같지만 재밌었어요 <br>정규클래스 또올려주세요^^
								</div>
								<ul class="reply-thumb-list">
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="0" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/41192b80-3763-11ea-b29a-ed074e6a0d91-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/41192b80-3763-11ea-b29a-ed074e6a0d91-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="1" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/411d2320-3763-11ea-b29a-ed074e6a0d91-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/411d2320-3763-11ea-b29a-ed074e6a0d91-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="2" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/41218ff0-3763-11ea-b29a-ed074e6a0d91-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/41218ff0-3763-11ea-b29a-ed074e6a0d91-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
								</ul>
							</div>
						</div>
						<div class="class-epilogue-area">
							<div class="magazine-reply-wrap">
								<div class="magazine-reply-tit">
									<div class="magazine-reply-nick">데이지89</div>
									<div class="magazine-reply-star">
										<div class="reply-star-on reply-star-on0">this.cr_star</div>
									</div>
									<div class="magazine-reply-info">
										<span class="reply-date">2020.01.14</span><a href="#report"
											data-cr-id="3132" title="신고"
											class="btn-edit-reply btn-report-reply"
											style="color: #f1645d;">신고</a>
									</div>
								</div>
								<div class="magazine-reply-cont">주문해놓고 키트오늘거 기다리는데 얼마나
									설렜는지몰라요ㅋ 제가 똥손이라 잘 따라할 수 있을까 걱정도 많이하구ㅋ 설명 상세히 잘해주셔서 나름 잘 따라했어요ㅋ
									소분하는거 화장실에서 하는데 길이가 생각보다 길어서 팔이 엄청 아팠어요 소분하고 바로 티코스터 만들기해서 팔이
									아팠던건지^^; 바구니도 얼른 만들어보려구요 근데 강의 속도 조절이있으면 더 좋을거같아요!!</div>
								<ul class="reply-thumb-list">
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="0" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bbd4360-36a8-11ea-a5e9-c5ae5efa17c3-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bbd4360-36a8-11ea-a5e9-c5ae5efa17c3-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="1" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bc1b030-36a8-11ea-a5e9-c5ae5efa17c3-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bc1b030-36a8-11ea-a5e9-c5ae5efa17c3-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="2" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bc9ed90-36a8-11ea-a5e9-c5ae5efa17c3-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0bc9ed90-36a8-11ea-a5e9-c5ae5efa17c3-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
								</ul>
							</div>
						</div>
						<div class="class-epilogue-area">
							<div class="magazine-reply-wrap">
								<div class="magazine-reply-tit">
									<div class="magazine-reply-nick">미선❤️</div>
									<div class="magazine-reply-star">
										<div class="reply-star-on reply-star-on10">this.cr_star</div>
									</div>
									<div class="magazine-reply-info">
										<span class="reply-date">2020.01.14</span><a href="#report"
											data-cr-id="3131" title="신고"
											class="btn-edit-reply btn-report-reply"
											style="color: #f1645d;">신고</a>
									</div>
								</div>
								<div class="magazine-reply-cont">
									똥손이 저도 바구니 티코스터 완성했네요 <br>그리고 이불털기는 ㅠㅠ 꺾어져서 미흡하게됬지만 <br>그래도
									마음에 드네요 <br>아이들 잘때 해야되서 아직 뚜껑이랑 거울 램프 못했지만 <br>조만간 다
									완성해서 남은 환심으로 바구니 한번 더 만들어볼께요^^!!
								</div>
								<ul class="reply-thumb-list">
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="0" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0956da70-3697-11ea-89af-1b32783f24c4-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0956da70-3697-11ea-89af-1b32783f24c4-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="1" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0955c900-3697-11ea-89af-1b32783f24c4-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/0955c900-3697-11ea-89af-1b32783f24c4-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
								</ul>
							</div>
						</div>
						<div class="class-epilogue-area">
							<div class="magazine-reply-wrap">
								<div class="magazine-reply-tit">
									<div class="magazine-reply-nick">NK</div>
									<div class="magazine-reply-star">
										<div class="reply-star-on reply-star-on0">this.cr_star</div>
									</div>
									<div class="magazine-reply-info">
										<span class="reply-date">2020.01.13</span><a href="#report"
											data-cr-id="3130" title="신고"
											class="btn-edit-reply btn-report-reply"
											style="color: #f1645d;">신고</a>
									</div>
								</div>
								<div class="magazine-reply-cont">라탄공예 너무 해보고 싶었는데 인스타에 광고
									보고 시적했어요. 시작하기에 너무 좋은 키트인데 하나하나 만들어가는 재미가 있네요. 집안이 라탄으로 가득 채워지길
									바라며 후기 남겨용</div>
								<ul class="reply-thumb-list">
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="0" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcaadf80-3603-11ea-9957-f1478177ba51-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcaadf80-3603-11ea-9957-f1478177ba51-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="1" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcadc5b0-3603-11ea-9957-f1478177ba51-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcadc5b0-3603-11ea-9957-f1478177ba51-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
									<li class="reply-thumb2"><a href="#popupimg" title=""
										data-idx="2" class="show-photo-btn"><img
											src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcb25990-3603-11ea-9957-f1478177ba51-square.jpg"
											data-img="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/review/fcb25990-3603-11ea-9957-f1478177ba51-resize.jpg"
											alt="" class="thumb-reply2"></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="paging-num-wrap" style="padding-bottom: 0">
						<a href="javascript:;" title="1" data-page="1"
							class="review-page-btn btn-num btn-num-on">1</a><a
							href="javascript:;" title="2" data-page="2"
							class="review-page-btn btn-num">2</a><a href="javascript:;"
							title="3" data-page="3" class="review-page-btn btn-num">3</a>
					</div>
				</div>
			</div>
		</div>
		<div class="class-detail-wrap block" id="detail-delivery">
			<div class="detail-delivery-wrap">
				<div class="detail-delivery-cont">
					<div class="detail-delivery-tit">배송정책</div>
					<div class="detail-delivery-txt"></div>
					<div class="detail-shipping-rule c-editor">
						<p>
							<span style="font-size: 14px;"><strong>1) 배송가능지역</strong>:&nbsp;전국<br>
								<strong>2) 택배사</strong>: CJ대한통운<br> <strong>3) 기본
									배송비</strong>: 무료(도서산간지역의 경우 추가 배송비가 부과&nbsp;됩니다.)</span>
						</p>

						<p>
							<span style="font-size: 14px;"><strong>4) 배송기간</strong></span>
						</p>

						<p>
							<span style="font-size: 14px;">가.
								출발일로부터&nbsp;1~3일&nbsp;소요됩니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">나. 오후 2시 주문 건까지 당일
								출고됩니다.(주말 및 공휴일 제외)</span>
						</p>
					</div>
				</div>
				<div class="detail-delivery-cont">
					<div class="detail-delivery-tit">교환정책</div>
					<div class="detail-delivery-txt"></div>
					<div class="detail-exchange-rule c-editor">
						<p>
							<span style="font-size: 16px;"><strong>1. 클래스 교환
									안내</strong></span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;">1) 준비물 키트에 한해서만 교환 가능합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">2) 배송 완료일로부터 7일 이내 교환 신청
								가능합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">3) 단순 변심 등 고객 사유로 인한 교환의 경우
								왕복배송비를 지불해야하며,&nbsp;제품 및 포장이 재판매 가능한 상태여야 합니다. (상품 및 구성품, 포장 훼손,
								분실 시 교환 불가)</span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 16px;"><strong>2.
									교환&nbsp;배송 관련 안내</strong></span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;"><strong>1)
									배송비:&nbsp;</strong>편도 2,500원</span>
						</p>

						<p>
							<span style="font-size: 14px;"><strong>2) 지정
									택배사:&nbsp;</strong>CJ대한통운</span>
						</p>

						<p>
							<span style="font-size: 14px;"><strong>3)
									교환&nbsp;보내실 주소:&nbsp;</strong></span><span style="font-size: 14px;">(12246)
								경기도 남양주시 양정로319번길 15-18 두손컴퍼니</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 반품 신청 시, 담당자가 연락 후 반품 택배
								접수를 도와드립니다. 연락없이 먼저 발송하지 말아주세요.</span>
						</p>
					</div>
				</div>
				<div class="detail-delivery-cont">
					<div class="detail-delivery-tit">환불정책</div>
					<div class="detail-delivery-txt"></div>
					<div class="detail-refund-rule c-editor">
						<p>
							<span style="font-size: 16px;"><strong>1. 클래스 환불
									안내</strong></span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;"><strong>1) 정규 클래스</strong></span>
						</p>

						<p>
							<span style="font-size: 14px;">가. 수강권 환불</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 결제 완료일로부터 7일 이내 환불 요청
								가능합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 단, Chapter 1을&nbsp; 초과하여
								수강한 경우 결제한 수강권 금액의 ½만 환불됩니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">※ 강의 재생 시간과 관계없이 영상을 재생한 경우
								수강한 것으로 간주합니다.</span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;">나. 키트 환불</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 배송 완료일로부터 7일 이내 환불 요청
								가능합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 제품 또는 포장이 훼손되어 재판매가 불가한
								경우, 환불을 거절할 수 있습니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 단순 변심 등 고객 사유로 인한 반품의 경우,
								왕복 배송비가 차감됩니다.</span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;"><strong>2) 원데이 클래스</strong></span>
						</p>

						<p>
							<span style="font-size: 14px;">* 배송 완료일로부터 7일 이내 환불 요청
								가능합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 수강권 또는 키트만 환불하는 것은 불가합니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 제품 또는 포장이 훼손되어 재판매가 불가한
								경우, 환불을 거절할 수 있습니다.</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 단순 변심 등 고객 사유로 인한 반품의 경우,
								왕복 배송비가 차감됩니다.</span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 16px;"><strong>2. 반품 배송
									관련 안내</strong></span>
						</p>

						<p>&nbsp;</p>

						<p>
							<span style="font-size: 14px;"><strong>1)
									배송비:&nbsp;</strong>편도 2,500원</span>
						</p>

						<p>
							<span style="font-size: 14px;"><strong>2) 지정
									택배사:&nbsp;</strong>CJ대한통운</span>
						</p>

						<p>
							<span style="font-size: 14px;"><strong>3) 반품 보내실
									주소:&nbsp;</strong></span><span style="font-size: 14px;">(12246) 경기도 남양주시
								양정로319번길 15-18 두손컴퍼니</span>
						</p>

						<p>
							<span style="font-size: 14px;">* 반품 신청 시, 담당자가 연락 후 반품 택배
								접수를 도와드립니다. 연락없이 먼저 발송하지 말아주세요.</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="option" role="dialog" style="display:none">
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
		<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
			<!-- Modal content-->
			<div class="hfe-bg"></div>
			<div class="modal-content hfe-container">
				<header>
					<h3 class="modal-title">클래스 옵션을 선택하세요</h3>
					<button class="hfe-header-close a-close close" data-dismiss="modal">창닫기</button>
				</header>
				
					<section class="hfe-content">
						<div class="hfe-option">
							<article class="s-select">
								<header>
									<h4>클래스 옵션</h4>
									<!-- 조건 -->
									<p class="desc">1개 필수선택</p>
								</header>
								<ul class="option-list">
									<!-- forEach 필요 -->
									<c:forEach var="kit" items="${kitList}">
									<li><label>
										<input type="radio" id="${kit.kit_num} name="kit_num" value="${kit.kit_num}" onClick="javascript:selectRadio(this.value);">
											<div class="option-item">
												<h5>${kit.kit_name}</h5>
												<p class="prices">
													<span class="sale" id="price"><fmt:formatNumber value="${kit.kit_price}" pattern="##,###" />원</span>
												</p>
												<span class="desc">${kit.kit_box}</span>
												<!-- <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/product/146/b6f17010-3029-11ea-9134-2970db5a6784-resize.jpg"> -->
											</div>
									</label></li>
									</c:forEach>
								</ul>
							</article>
						</div>
					</section>				
				<footer>
					<c:forEach var="kit" items="${kitList}">
					<div id="${kit.kit_num}" style="display:none">
						<div  class="hfe-orderinfo s-installment">
						<div class="i-names">${kit.kit_name}</div>
						<div class="i-quantity">
							<div class="hfc-spinner">
								<button class="hfc-i-down" onclick="form_btn(-1)">줄이기</button>
									<input type="number" id="count" name="count" class="hfc-i-num" min="1" max="99" value="1">
								<button class="hfc-i-up" onclick="form_btn(1)">늘리기</button>
							</div>
						</div>
						<div class="i-price-sale">
							<span class="i-label">클래스 금액</span>
							<div id="totalprice"><span class="i-num"></span></div>
						</div>
						</div>
					</div>
					</c:forEach>
					
					<div class="hfe-btn-group s-twin">
						<button class="hfe-btn s-w5 a-cart" onclick="location.href='../order/basketList.shop'">장바구니 담기</button>
						<button class="hfe-btn s-w5 a-buy s-active" onclick="location.href='../order/order_write.shop'">바로 신청하기</button>
					</div>
				</footer>
			
			</div>
		</div>
	</div>
	
</body>
</html>