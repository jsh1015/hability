<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />	
<!doctype html>
<html>
<head lang="ko" id="hobbyful">
<title>Magazine:)</title>
</head>
<body>
	<div class="container">
		<div class="layout-wrap">
			<ul class="tab-class-list">
				<li class="tab-class"><a href="#;" data-mc-idx="all" title="전체"
					class="btn-tab-class btn-tab-on">전체</a></li>
				<li class="tab-class"><a href="#;" data-mc-idx="1"
					title="DIY RECIPE" class="btn-tab-class">DIY RECIPE</a></li>
				<li class="tab-class"><a href="#;" data-mc-idx="2"
					title="TREND" class="btn-tab-class">TREND</a></li>
				<li class="tab-class"><a href="#;" data-mc-idx="3"
					title="REVIEW" class="btn-tab-class">REVIEW</a></li>
				<li class="tab-class"><a href="#;" data-mc-idx="6"
					title="h-NEWS" class="btn-tab-class">h-NEWS</a></li>
			</ul>
			<div class="magazine-wrap">
				<ul class="class-list-wrap2">
				<c:forEach items="${classList}" var="list">
					<li class="class-list">
					<a href="mdetail.shop?cl_num=${list.cl_num}">
						<div class="class-list-thumb">
								<img src="${path}/img/${list.cl_img}" class="thumb-class-list" style="height: 100%;"><span class="thumb-slide-play">재생</span>
							</div>
							<div class="class-list-cont">
								<p class="class-list-tit">${list.teacher}</p>
								<p class="class-list-txt">${list.cl_title}</p>
								<p class="class-list-info">
								<fmt:formatDate value="${list.cl_date}" pattern="yyyy년 MM월 dd일 E요일" var="thisYmd"/> ${thisYmd}<span class="thumb-slide-link-nick"></span>
								</p>
							</div>
						</a>
					</li>
				</c:forEach>
				</ul>
				<div class="class-list-more-btn">
					<a href="javascript:;" title="more" class="btn-more">more</a>
				</div>
			</div>
		</div>
	</div>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https"
					aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					frameborder="0" allowtransparency="true" allowfullscreen="true"
					scrolling="no" allow="encrypted-media"
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=45#channel=f32b86a249e5138&amp;origin=https%3A%2F%2Fhobbyful.co.kr"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
</body>
<script>
HF.DATA.params = {};
</script>
<script type="text/javascript" src="${path}/js/page/magazine.js"></script>
<script type="text/javascript" src="/static/js/module/HF._init.js?bid=bHasJk4dKL"></script>
</html>