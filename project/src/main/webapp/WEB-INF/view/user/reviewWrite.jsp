<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="">
<head lang="ko" id="hobbyful">
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}
</style>

<script type="text/javascript">
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});
</script>
</head>
<body class="on-popup">
<div class="layer-wrap write-reply-wrap" id="write-reply-wrap">
      <div class="bg-layer-wrap a-close"></div>
<!-- 	<div class="bg-layer-wrap" onclick="ViewClass.hideWriteReply();"></div>
 -->	
	<form:form modelAttribute="user" name="review" method="post" action="../user/reviewWrite.shop">
		<div class="write-reply-cont">
			<h2 class="layer-tit">구매 후기 작성</h2>
			<div class="write-reply-area">
				<div class="write-reply">
					<div class="write-reply-tit">작성자</div>
					<div class="write-reply-input">
						<div class="input-wrap">
							<input type="text" class="input reply-writer" name="nickname" placeholder="" value="${sessionScope.loginUser.nickname}" readonly="">
						</div>
					</div>
				</div>
				<div class="write-reply">
					<div class="write-reply-tit">별점</div>
					<div class="write-reply-input">
						<!-- 별 3개 선택시 input-star-on6(별 5개를 반개 단위로 총 10점까지) ex) 별 5개면  class="input-star-wrap input-star-on10"-->
						<!--  
						<div class="input-star-wrap input-star-on6" id="input-star-wrap">
							<a href="javascript:;" class="input-star10 input-star" data-star="10" title="10점">10점</a> 
							<a href="javascript:;" class="input-star9 input-star" data-star="9" title="9점">9점</a>
							<a href="javascript:;" class="input-star8 input-star" data-star="8" title="8점">8점</a> 
							<a href="javascript:;" class="input-star7 input-star" data-star="7" title="7점">7점</a>
							<a href="javascript:;" class="input-star6 input-star" data-star="6" title="6점">6점</a> 
							<a href="javascript:;" class="input-star5 input-star" data-star="5" title="5점">5점</a>
							<a href="javascript:;" class="input-star4 input-star" data-star="4" title="4점">4점</a> 
							<a href="javascript:;" class="input-star3 input-star" data-star="3" title="3점">3점</a>
							<a href="javascript:;" class="input-star2 input-star" data-star="2" title="2점">2점</a> 
							<a href="javascript:;" class="input-star1 input-star" data-star="1" title="1점">1점</a>
						</div>
						-->
						<div class="starRev" id="input-star-wrap">
							<span class="starR1 on">별1_왼쪽</span>
							<span class="starR2">별1_오른쪽</span>
							<span class="starR1">별2_왼쪽</span>
							<span class="starR2">별2_오른쪽</span>
							<span class="starR1">별3_왼쪽</span>
							<span class="starR2">별3_오른쪽</span>
							<span class="starR1">별4_왼쪽</span>
							<span class="starR2">별4_오른쪽</span>
							<span class="starR1">별5_왼쪽</span>
							<span class="starR2">별5_오른쪽</span>
						</div>						
					</div>
				</div>
				<div class="write-reply reply-textarea">
					<div class="write-reply-tit">후기내용</div>
					<div class="write-reply-input">
						<div class="input-wrap">
							<textarea class="textarea input-reply" rows="" cols="" placeholder="후기를 남겨주세요." maxlength="300" name="cm_content"></textarea>
							<span class="change-reason-txt-count">0/300</span>
						</div>
					</div>
				</div>
				<div class="write-reply reply-thumb">
					<div class="write-reply-tit">사진첨부</div>
					<div class="write-reply-input">
						<div class="write-reply-thumb-wrap">
							<ul class="write-reply-thumb-list">
								<li class="write-reply-thumb add-photo-wrap">
								<div class="thumb-add">
									<label for="add-thumb" class="label-add-thumb">사진첨부하기</label>
									<input type="file" class="input-add-thumb" id="add-thumb input_imgs" multiple="" accept="image/*">
								</div></li>
							</ul>
						</div>
						<div class="write-reply-thumb-info">
							• 이미지는 1장에 최대 5Mbyte의 용량 제한이 있습니다.<br>• 파일명은 영문만 가능합니다.<br>
							• 첨부 사진은 3장까지만 등록이 가능합니다.
						</div>
					</div>
				</div>
			</div>
			<div class="write-reply-btn">
				<button title="후기 등록" class="btn-write-reply a-submit" type="submit">후기 등록</button>
			</div>
		</div>
	</form:form>
</div>
</body>
</html>