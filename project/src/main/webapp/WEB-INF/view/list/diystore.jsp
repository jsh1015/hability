<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head lang="ko" id="hobbyful">
<title>DIY :)</title>
</head>
<body class="">
	<div class="container">
		<div class="class-wrap">
			<div class="layout-wrap">
				<div class="img-slide-wrap img-slide-wrap01" id="img-slide-wrap">
					<!-- 좌우 버튼 or 하단 페이징 버튼 클릭 시 img-slide-wrap01 ~ img-slide-wrap03 클레스 추가&변경 -->
					<ul class="img-slide-cont hf-tracker-group"
						data-tracker-type="promotion"
						data-tracker-id="Product list Top banner"
						style="transform: translate3d(0%, 0px, 0px);">
						<li class="img-slide img-slide01 hf-tracker-item"
							data-tracker-id="19"><a
							href="https://hobbyful.co.kr/view-magazine.html?id=206"
							title="혼자서도 잘해요! 하비풀 DIY 스토어" class="btn-img-slide"> <span
								class="img-slide-img"
								style="background-image: url(https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/bn_store.jpg);"></span>
								<div class="img-slide-area2 img-slide-type02">
									<strong class="img-slide-tit">NEW SERVICE</strong><span
										class="img-slide-txt">도안, DIY키트부터 재료와 도구까지<span
										class="bold">혼자서도 잘해요! 하비풀 DIY 스토어</span></span>
									<button type="button" class="btn-slide-go">자세히 보기</button>
								</div></a></li>
					</ul>
					<div class="paging-wrap">
						<button type="button" class="paging-btn-prev"
							style="left: 0; display: none;">이전</button>
						<div class="class-paging paging-cont">
							<button type="button" class="paging-btn paging-btn00 active">0</button>
						</div>
						<button type="button" class="paging-btn-next"
							style="right: 0; display: none;">다음</button>
					</div>
				</div>
			</div>
			<div class="layout-wrap">
				<ul class="tab-class-list">
					<li class="tab-class"><a href="/list/diystore"
						data-path="diystore" data-fullpath="diystore" title="전체"
						class="btn-tab-class btn-tab-on">전체</a></li>
					<li class="tab-class"><a
						href="/list/diystore/french-embroidery"
						data-path="french-embroidery"
						data-fullpath="diystore/french-embroidery" class="btn-tab-class">프랑스자수</a></li>
					<li class="tab-class"><a href="/list/diystore/knitting"
						data-path="knitting" data-fullpath="diystore/knitting"
						class="btn-tab-class">뜨개질</a></li>
					<li class="tab-class"><a href="/list/diystore/kids"
						data-path="kids" data-fullpath="diystore/kids"
						class="btn-tab-class">키즈</a></li>
					<li class="tab-class"><a href="/list/diystore/drawing"
						data-path="drawing" data-fullpath="diystore/drawing"
						class="btn-tab-class">수채화/드로잉</a></li>
					<li class="tab-class"><a href="/list/diystore/hobbysampler"
						data-path="hobbysampler" data-fullpath="diystore/hobbysampler"
						class="btn-tab-class">취미 샘플러</a></li>
					<li class="tab-class"><a href="/list/diystore/soap-candle"
						data-path="soap-candle" data-fullpath="diystore/soap-candle"
						class="btn-tab-class">캔들/비누</a></li>
				</ul>
			</div>
			<div class="layout-wrap">
				<ul id="allList" class="class-list-wrap hf-tracker-group"
					data-tracker-type="impression" data-tracker-id="/list/">
					<li class="class-list hf-tracker-item" data-tracker-id="FE-M-0006">
					<c:forEach items="${classList}" var="list">
					<a href="detail.shop">
						<div class="class-list-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/490b45e0-2213-11ea-9cb3-c70fccd5674e-resize.jpg" alt="" class="thumb-class-list">
						</div>
						<div class="class-list-cont">
							<p class="class-list-lecturer-name">${list.teacher}</p>
							<p class="class-list-name" style="padding:0 150px 0 0;">${list.cl_title}</p>
							<p class="class-list-price">
								<span class="i-won"></span>${list.cl_price}<span class="i-won">원</span>
						</div>
						</a>
				   </c:forEach>
					</li>
				</ul>
			</div>
			<div class="class-list-more-btn">
				<a href="javascript:;" title="more" class="btn-more"
					style="display: none;">more</a>
			</div>
		</div>
	</div>
	<script>
		HF.DATA.params = { "categoryPath" : "diystore", "categoryDepth1" : "diystore" };
	</script>
</body>
</html>