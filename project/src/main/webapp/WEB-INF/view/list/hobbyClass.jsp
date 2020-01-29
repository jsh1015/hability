<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hobbyClass :)</title>
<script src="${path}/jquery/js/responsiveslides.min.js"></script>
<style>
.rslides {
	position: relative;
	list-style: none;
	overflow: hidden;
	width: 100%;
	padding: 0;
	margin: 0;
}

.rslides li {
	-webkit-backface-visibility: hidden;
	position: absolute;
	display: none;
	width: 100%;
	height: 208px;
	left: 0;
	top: 0;
}

.rslides li:first-child {
	position: relative;
	display: block;
	float: left;
}

.rslides img {
	display: block;
	height: auto;
	float: left;
	width: 100%;
	border: 0;
}
</style>
<script>
	$(function() {
		$(".rslides").responsiveSlides({
			auto : true,
			speed : 500,
			timeout : 4000,
			random : false,
			pause : true,
			/* pager: true, */
			after : function() {
			}
		});
	});
</script>
</head>
<body>
<div class="container">
	<div class="class-wrap">
		<div class="layout-wrap">
			<!-- 광고 슬라이드 3개 -->
			<div class="img-slide-wrap img-slide-wrap01" id="img-slide-wrap">
				
				<ul class="rslides">
					<!-- 1번 광고 -->
					<li class="img-slide" inx="0">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=178" title="하비풀만의 특별한 스티커맵" class="btn-img-slide">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/6134d530-d369-11e9-beb7-c79511ad1cb5-resize.jpg" alt="">
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">ONLY HOBBYFUL(스트롱태그)</strong>
								<span class="img-slide-txt" style="margin-top: 5%;">정규 클래스에서 누리는 소소한 재미<span class="bold">하비풀만의 특별한 스티커맵</span></span>
							</div>
						</a>
					</li>
					<!-- 2번 광고 -->
					<li class="img-slide" inx="1">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=191" title="#뿌듯챌린지 2차 오픈" class="btn-img-slide">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/5c2d36b0-d367-11e9-beb7-c79511ad1cb5-resize.jpg" alt="">
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">완성하고뿌듯, 환급받고 뿌듯(스트롱태그)</strong>
								<span class="img-slide-txt" style="margin-top: 5%;">매주 5명 클래스 100% 환급<span class="bold">#뿌듯챌린지 2차 오픈</span></span>
							</div>
						</a>
					</li>
					<!-- 3번 광고 -->	
					<li class="img-slide" inx="2">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=164" title="기업/단체 신청하고 할인받자!(마우스오버)" class="btn-img-slide">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/f6ef3180-4154-11e9-8c9b-07247cd7ad1a-resize.jpg" alt="">
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">단체주문 할인 신청</strong>
								<span class="img-slide-txt" style="margin-top: 5%;">함께하면 더 즐거운 취미<span class="bold">기업/단체 신청하고 할인받자!</span></span>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<!-- 작은 navigation -->
		<div class="layout-wrap">
			<ul class="tab-class-list">
				<li class="tab-class">
					<a href="/list/class" data-path="class" data-fullpath="class" title="전체" class="btn-tab-class btn-tab-on">
						전체
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/regular" data-path="regular" data-fullpath="class/regular" class="btn-tab-class">
						전체 정규클래스
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/macrame" data-path="macrame" data-fullpath="class/macrame" class="btn-tab-class">
						마크라메
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/french-embroidery" data-path="french-embroidery" data-fullpath="class/french-embroidery" class="btn-tab-class">
						프랑스자수
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/drawing" data-path="drawing" data-fullpath="class/drawing" class="btn-tab-class">
						수채화/드로잉
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/knitting" data-path="knitting" data-fullpath="class/knitting" class="btn-tab-class">
						뜨개질/위빙
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/leather" data-path="leather" data-fullpath="class/leather" class="btn-tab-class">
						가죽공예
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/soap-candle" data-path="soap-candle" data-fullpath="class/soap-candle" class="btn-tab-class">
						비누/캔들
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/jewelry-neonsign" data-path="jewelry-neonsign" data-fullpath="class/jewelry-neonsign" class="btn-tab-class">
						쥬얼리/네온사인
					</a>
				</li>
				<li class="tab-class">
					<a href="/list/class/etc" data-path="etc" data-fullpath="class/etc" class="btn-tab-class">
						다양한 취미
					</a>
				</li>
			</ul>
		</div>
		<!-- 작은 navigation The end -->
		
		<!-- 클래스 list -->
		<div class="layout-wrap">
			<ul id="allList" class="class-list-wrap hf-tracker-group" data-tracker-type="impression" data-tracker-id="/list/">
 				<!--정규 클래스-->
 				<c:forEach items="${classList}" var="list">
				<li class="class-list">
					<a href="detail.shop?cl_num=${list.cl_num}">
						<div class="class-list-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/42649440-218b-11ea-9cb3-c70fccd5674e-resize.jpg" alt="" class="thumb-class-list">
						</div>
						<div class="class-list-cont">
							<p class="class-list-lecturer-name">${list.teacher}</p>
							<p class="class-list-name" style="padding:0 150px 0 0;">${list.cl_title}</p>
							<p class="class-list-price">
								<span class="i-won"></span>${list.cl_price}<span class="i-won">원</span>
							</p>
						</div>
					</a>
				</li>
				</c:forEach>
				<!-- 품절 -->
				<!-- <li class="class-list">
					<a href="/product/9fb76748cf">
						<div class="class-list-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/5a605ae0-55b0-11e9-9509-fd4eca7b3294-resize.jpg" alt="" class="thumb-class-list">
							<p class="i-soldout"><span>일시 품절</span></p>
						</div>
						<div class="class-list-cont">
							<p class="class-list-lecturer-name">[원데이 클래스] 콩페티</p>
							<p class="class-list-name" style="padding:0 100px 0 0;">숲속 산책 비누 클래스</p>
							<p class="class-list-discount">
								<span class="i-percent">10%</span>
								<span class="i-regular"><s>34,000원</s></span>
							</p>
							<p class="class-list-price">30,600<span class="i-won">원</span></p>
						</div>
					</a>
				</li> -->
			</ul>
		</div>
	</div>
</div>

<div class="layer-wrap popup-wrap" id="popup-wrap">
	<div class="bg-layer-wrap" onclick="Popup.hide();"></div>
</div>

</body>
</html>