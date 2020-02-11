<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
   var kitcnt = '<c:out value="${kitcnt}" />';
   
   function selectRadio(val) {
      /* $("#"+i).toggle();
      alert(val);
      for(int i=1; i<=kitcnt; i++) {
         if(val == i) {
            $("#"+i).toggle();
         } else $('#'+i).css('display', 'none');
      } */
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
</script>
</head>
<body>
<input type="hidden" class="emailid" name="emailid" value="${sessionScope.loginUser.emailid}">
<input type="hidden" value="${classDetail.cl_num}" name="cl_num" class="cl_num">
<input type="hidden" value="${classDetail.board_type}" name="board_type" class="board_type">
<c:set var="emailid" value="${sessionScope.loginUser.emailid}"/>
<div class="container">
   <div class="vod-wrap">
      <div class="vod-cont vimeohelper-92950 vimeohelper"
         data-vimeo-initialized="true">
         <div class="vod-cont-wrap"></div>
     	   <img src="${path}/img/${classDetail.cl_img}" alt="">
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
               <span class="vod-info-list-tit"> 적립   마일리지</span>
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
           <!--  <a href="#like" title="좋아요" class="btn-like">좋아요</a> -->
 			
 			<c:if test="${empty sessionScope.loginUser}">
               <a href="#login" class="btn-like btn-like-off showlogin">좋아요</a>
            </c:if>
            <c:if test="${!empty sessionScope.loginUser}">
            <div id="h-btn">
    	    <c:if test="${check eq null}">
				<button class="btn-like btn-like-off" onclick="javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})">좋아요</button>
			</c:if>
			<c:if test="${check eq 1}">
				<button class="btn-like" onclick="javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})">좋아요</button>
			</c:if> 
<%--             <button class="btn-like btn-like-off" onclick="javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})">좋아요</button> 
 --%> 			</div>
			</c:if>
           <c:if test="${empty sessionScope.loginUser}">
               <a href="#login" class="btn-get showlogin">클래스 신청하기</a>
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
            <p style="text-align: center;"><img src="${path}/img/${classDetail.cl_info}"></p>
            <p style="text-align: center;">&nbsp;</p>

            <p style="text-align: center;">&nbsp;</p>
         </div>
         <!-- 클래스일 경우, s-classintro 추가됨 -->
      </div>
      <div class="class-detail-wrap block" id="detail-intro">
         <div class="detail-explain-lecture-wrap">
            <p style="text-align: center">
				<img src="${path}/img/${classDetail.cl_story}" style="max-width: 750px; width: 100%;" alt=""> 
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
                  <p><span style="font-size: 14px;"><strong>1) 배송가능지역</strong>:&nbsp;전국<br>
                        <strong>2) 택배사</strong>: CJ대한통운<br> <strong>3) 기본배송비</strong>: 무료(도서산간지역의 경우 추가 배송비가 부과&nbsp;됩니다.)</span>
                  </p>
                  <p><span style="font-size: 14px;"><strong>4) 배송기간</strong></span></p>
                  <p><span style="font-size: 14px;">가.  출발일로부터&nbsp;1~3일&nbsp;소요됩니다.</span> </p>
                  <p><span style="font-size: 14px;">나. 오후 2시 주문 건까지 당일출고됩니다.(주말 및 공휴일 제외)</span></p>
               </div>
            </div>
            <div class="detail-delivery-cont">
               <div class="detail-delivery-tit">교환정책</div>
               <div class="detail-delivery-txt"></div>
               <div class="detail-exchange-rule c-editor">
                  <p><span style="font-size: 16px;"><strong>1. 클래스 교환  안내</strong></span> </p>
                  <p>&nbsp;</p>
                  <p><span style="font-size: 14px;">1) 준비물 키트에 한해서만 교환 가능합니다.</span></p>
                  <p> <span style="font-size: 14px;">2) 배송 완료일로부터 7일 이내 교환 신청 가능합니다.</span></p>
                  <p><span style="font-size: 14px;">3) 단순 변심 등 고객 사유로 인한 교환의 경우 왕복배송비를 지불해야하며,
                  	&nbsp;제품 및 포장이 재판매 가능한 상태여야 합니다. (상품 및 구성품, 포장 훼손, 분실 시 교환 불가)</span></p>
                  <p>&nbsp;</p>
                  <p> <span style="font-size: 16px;"><strong>2.교환&nbsp;배송 관련 안내</strong></span>
                  </p>
                  <p>&nbsp;</p>
                  <p> <span style="font-size: 14px;"><strong>1)배송비:&nbsp;</strong>편도 2,500원</span>
                  </p>
                  <p> <span style="font-size: 14px;"><strong>2) 지정택배사:&nbsp;</strong>CJ대한통운</span>
                  </p>
                  <p><span style="font-size: 14px;"><strong>3)  교환&nbsp;보내실 주소:&nbsp;</strong></span><span style="font-size: 14px;">(12246)
															 경기도 남양주시 양정로319번길 15-18 두손컴퍼니</span> </p>
                  <p><span style="font-size: 14px;">* 반품 신청 시, 담당자가 연락 후 반품 택배  접수를 도와드립니다. 연락없이 먼저 발송하지 말아주세요.</span> </p>
               </div>
            </div>
            <div class="detail-delivery-cont">
               <div class="detail-delivery-tit">환불정책</div>
               <div class="detail-delivery-txt"></div>
               <div class="detail-refund-rule c-editor">
                  <p> <span style="font-size: 16px;"><strong>1. 클래스 환불 안내</strong></span></p>
                  <p>&nbsp;</p>
                  <p> <span style="font-size: 14px;"><strong>1) 정규 클래스</strong></span> </p>
                  <p>    <span style="font-size: 14px;">가. 수강권 환불</span> </p>
                  <p>   <span style="font-size: 14px;">* 결제 완료일로부터 7일 이내 환불 요청 가능합니다.</span>  </p>
                  <p> <span style="font-size: 14px;">* 단, Chapter 1을&nbsp; 초과하여 수강한 경우 결제한 수강권 금액의 ½만 환불됩니다.</span> </p>
                  <p><span style="font-size: 14px;">※ 강의 재생 시간과 관계없이 영상을 재생한 경우  수강한 것으로 간주합니다.</span> </p>
                  <p>&nbsp;</p>
                  <p><span style="font-size: 14px;">나. 키트 환불</span>   </p>
                  <p> <span style="font-size: 14px;">* 배송 완료일로부터 7일 이내 환불 요청   가능합니다.</span></p>
                  <p><span style="font-size: 14px;">* 제품 또는 포장이 훼손되어 재판매가 불가한 경우, 환불을 거절할 수 있습니다.</span></p>
                   <p>  <span style="font-size: 14px;">* 단순 변심 등 고객 사유로 인한 반품의 경우, 왕복 배송비가 차감됩니다.</span>  </p>
                  <p>&nbsp;</p>
                  <p> <span style="font-size: 14px;"><strong>2) 원데이 클래스</strong></span></p>
                  <p><span style="font-size: 14px;">* 배송 완료일로부터 7일 이내 환불 요청 가능합니다.</span> </p>
                  <p> <span style="font-size: 14px;">* 수강권 또는 키트만 환불하는 것은 불가합니다.</span>     </p>
                  <p><span style="font-size: 14px;">* 제품 또는 포장이 훼손되어 재판매가 불가한  경우, 환불을 거절할 수 있습니다.</span> </p>
                  <p>  <span style="font-size: 14px;">* 단순 변심 등 고객 사유로 인한 반품의 경우, 왕복 배송비가 차감됩니다.</span> </p>
                  <p>&nbsp;</p>
                  <p>  <span style="font-size: 16px;"><strong>2. 반품 배송  관련 안내</strong></span>  </p>
                  <p>&nbsp;</p>
                  <p><span style="font-size: 14px;"><strong>1) 배송비:&nbsp;</strong>편도 2,500원</span>   </p>
                  <p> <span style="font-size: 14px;"><strong>2) 지정  택배사:&nbsp;</strong>CJ대한통운</span> </p>
                  <p><span style="font-size: 14px;"><strong>3) 반품 보내실  주소:&nbsp;</strong></span><span style="font-size: 14px;">
                  				(12246) 경기도 남양주시 양정로319번길 15-18 두손컴퍼니</span>       </p>
                  <p> <span style="font-size: 14px;">* 반품 신청 시, 담당자가 연락 후 반품 택배접수를 도와드립니다. 연락없이 먼저 발송하지 말아주세요.</span></p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Modal -->
	<form:form name="modal_form" action="../order/order_write.shop" method="post">
	<input type="hidden" value="${classDetail.cl_num}" name="cl_num" id="cl_num">
	<input type="hidden" name="buyingtype" value="0">
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
										<input type="radio" name="kit_num" class="kit_num" value="${kit.kit_num}" onClick="javascript:selectRadio(this.value);">
											<div class="option-item">
												<h5>${kit.kit_name}</h5>
												<p class="prices">
													<span class="sale" id="price${kit.kit_num}"><fmt:formatNumber value="${kit.kit_price}" pattern="##,###" />원</span>
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
					<script>
						function addComma(num) {
						  var regexp = /\B(?=(\d{3})+(?!\d))/g;
						  return num.toString().replace(regexp, ',');
						}
						
						var kitcnt = '<c:out value="${kitcnt}" />';
						
						function form_btn(kit_num,kit_price,n) {
							var quantity = document.getElementById("count"+kit_num);
							console.log("detail = "+quantity);
							quan_value = parseInt(quantity.value);
							console.log(quan_value);
							quan_value +=n;
							quantity.value = quan_value;
							document.modal_form.lastcount.value = quantity.value 
							if(quan_value <=0) {
								quantity.value = 1;
							}
							
							if(quantity.value ==1) {
								$("#totalprice"+kit_num).text(addComma(kit_price)+"원");
							} else {
								$("#totalprice"+kit_num).text(addComma(kit_price * quan_value)+"원");
							}
							return false;							
						}
						
						// 바로 구매하기
						function order_write() {
							f = document.modal_form;
							if(f.kit_num.value == "") {
								alert("원하는 구성품을 먼저 선택해 주세요.");
								return false;
							}
							/* kit = document.getElementById(f.kit_num.value);
							if(kit.style.display == 'none' ) {
								alert("원하는 구성품을 먼저 선택해 주세요.");
								return false;
							} */
							f.submit();
						}
						
						// 장바구니
						function basketAdd() {
							
							f = document.modal_form;
							if(f.kit_num.value == "") {
								alert("원하는 구성품을 먼저 선택해 주세요.");
								return false;
							}
							var data = {"lastcount":$(".lastcount").val(), "cl_num":$("#cl_num").val(), "kit_num":f.kit_num.value, "emailid":$(".emailid").val()};
							//alert("장바구니 담기 반응하니?");
							$(".basketAddCheck").show();
							
							$.ajax({
								type : "POST",
								url : "../ajax/basketAddCheck.shop",
								data : data,
								success : function(data) {
									$("#basketAddCheck").html(data);
								}
							})
						}
		             	function like_it(cl_num,emailid,board_type){
		          			$.ajax("${path}/list/like.shop?cl_num="+cl_num+"&emailid="+emailid+"&board_type="+board_type,{
		          				success:function(msg){
		          					alert(msg);
		          					$("#h-btn").html("<button class='btn-like "+msg+"' onclick=\"javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})\">좋아요</button>")
		          				}
		          			})
		         		}
					</script>
					<input type="hidden" class="lastcount" name="lastcount"  value="1">
					<input type="hidden" class="emailid" name="emailid" value="${sessionScope.loginUser.emailid}">
					<input type="hidden" class="lastkit" name="lastkit" value="">
					<c:forEach var="kit" items="${kitList}">
					<div id="${kit.kit_num}" class="option" style="display:none">
						<div  class="hfe-orderinfo s-installment">
						<div class="i-names">${kit.kit_name}</div>
						<div class="i-quantity">
							<div id="divcount" class="hfc-spinner">
								<button class="hfc-i-down" onclick="return form_btn(${kit.kit_num},${kit.kit_price},-1)">줄이기</button>
									<input type="number" id="count${kit.kit_num}" name="count" class="count hfc-i-num" min="1" max="99" value="1">
								<button class="hfc-i-up" onclick="return form_btn(${kit.kit_num},${kit.kit_price},1)">늘리기</button>
							</div>
						</div>
						<div class="i-price-sale">
							<span class="i-label">클래스 금액</span>
							<div id="totalprice${kit.kit_num}" class="i-num"><fmt:formatNumber value="${kit.kit_price}" pattern="##,###" />원</div>
						</div>
						</div>
					</div>
					</c:forEach>
					<div class="hfe-btn-group s-twin">
						<button class="hfe-btn s-w5 a-cart" type="button" onclick="basketAdd()">장바구니 담기</button>
						<button class="hfe-btn s-w5 a-buy s-active" type="button" onclick="order_write()">바로 신청하기</button>
					</div>
					<div class="modal fade basketAddCheck" id="basketAddCheck" role="dialog" style="display:none; zindex:1000;"></div>
				</footer>
			
			</div>
		</div>
	</div>
	</form:form>
		<!-- 후기 작성 모달 -->
	<div class="modal reviewWrite"></div>
	<div class="modal review"></div>
</body>
</html>