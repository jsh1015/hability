<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html class="">
<head lang="ko" id="hobbyful">
<title>하비풀 - 취미를 만나 일상이 아름다워지다.</title>
<meta name="description"
	content="취미로운 일상을 제안하는 온라인 취미 클래스. 취미 배달, 취미 정기구독">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no, minimal-ui">
<!-- 970px 미만에서만 적용-->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700|Roboto+Slab:400,700|Lato:400,700,900"
	rel="stylesheet" media="all" onload="this.media='all';">
<link rel="stylesheet" type="text/css"
	href="/bower_components/swiper/dist/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="/bower_components/awesomplete/awesomplete.css">
<link type="text/css" rel="stylesheet" href="/static/css/style_base.css">
<link type="text/css" rel="stylesheet" href="/static/css/style.css">
<link type="text/css" rel="stylesheet"
	href="/static/css/style_effect.css">
<link type="text/css" rel="stylesheet"
	href="/static/css/style_responsible.css">
<link type="text/css" rel="stylesheet"
	href="/static/css/style_nalrarang.css">
<meta name="naver-site-verification"
	content="naver9a1242e74229715560a0c5c0e9c18eca">
<meta property="og:url" content="https://hobbyful.co.kr">
<meta property="og:title" content="하비풀 - 취미를 만나 일상이 아름다워지다.">
<meta property="og:description"
	content="취미로운 일상을 제안하는 온라인 취미 클래스. 하비풀은 당신과 취미를 만나게 합니다.">
<meta property="og:image"
	content="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/hobbyful_concept01.jpg">
<!-- css3-mediaqueries.js for IE less than 9 -->
<!--[if lt IE 9]>
<script src="//css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<link rel="shortcut icon" href="/static/img/favicon.png">
<link rel="apple-touch-icon" href="/static/img/m_favicon.png">


<!-- Log Rocket -->

<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/gtm/js?id=GTM-NLKP5J5&amp;t=gtm4&amp;cid=1114292085.1579747299"></script>
<script
	src="https://connect.facebook.net/signals/config/299353887143885?v=2.9.15&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/en_US/sdk.js?hash=e5074af1703671e57365f54737846692&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async=""
	src="https://cdn.channel.io/plugin/ch-plugin-web.js" charset="UTF-8"></script>
<script id="facebook-jssdk"
	src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" async=""
	src="//www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="//www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-KJXG8SF"></script>
<script src="https://cdn.logrocket.io/LogRocket.min.js"
	crossorigin="anonymous"></script>
<script src="https://cdn.logrocket.io/logger.min.js" async=""></script>
<script>
window.LogRocket && window.LogRocket.init('1xyhws/hobbyful');
</script>

<!-- End of Log Rocket -->

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KJXG8SF');</script>
<!-- End Google Tag Manager -->

<style type="text/css">
.fb_hidden 
{
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition 
{
	overflow: hidden;
	position: relative
}

.fb_invisible 
{
	display: none
}

.fb_reset 
{
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div 
{
	overflow: hidden
}

@
keyframes fb_transform 
{
	from 
	{
		opacity: 0;
		transform: scale(.95)
	}

	to 
	{
	opacity: 1;
	transform: scale(1)
	}
}
.fb_animate 
{
	animation: fb_transform .3s forwards
}

.fb_dialog 
{
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_dialog_advanced 
{
	border-radius: 8px;
	padding: 10px
}

.fb_dialog_content 
{
	background: #fff;
	color: #373737
}

.fb_dialog_close_icon 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon 
{
	left: 5px;
	right: auto;
	top: 5px
}

.fb_dialog_padding 
{
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_iframe 
{
	line-height: 0
}

.fb_dialog_content .dialog_title 
{
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden 
{
	height: 100%;
	left: 0;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	transform: none;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered 
{
	background: none;
	height: auto;
	min-height: initial;
	min-width: initial;
	width: auto
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner 
{
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content 
{
	background: none
}

.loading.centered #fb_dialog_loader_close 
{
	clear: both;
	color: #fff;
	display: block;
	font-size: 18px;
	padding-top: 20px
}

#fb-root #fb_dialog_ipad_overlay 
{
	background: rgba(0, 0, 0, .4);
	bottom: 0;
	left: 0;
	min-height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden 
{
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe 
{
	visibility: hidden
}

.fb_dialog_mobile .fb_dialog_iframe 
{
	position: sticky;
	top: 0
}

.fb_dialog_content .dialog_header 
{
	background: linear-gradient(from(#738aba), to(#2c4987));
	border-bottom: 1px solid;
	border-color: #043b87;
	box-shadow: white 0 1px 1px -1px inset;
	color: #fff;
	font: bold 14px Helvetica, sans-serif;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table 
{
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left 
{
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right 
{
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button 
{
	background: linear-gradient(from(#4267B2), to(#2a4887));
	background-clip: padding-box;
	border: 1px solid #29487d;
	border-radius: 3px;
	display: inline-block;
	line-height: 18px;
	margin-top: 3px;
	max-width: 85px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input 
{
	background: none;
	border: none;
	color: #fff;
	font: bold 12px Helvetica, sans-serif;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center 
{
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content 
{
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #4a4a4a;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer 
{
	background: #f5f6f7;
	border: 1px solid #4a4a4a;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close 
{
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_button 
{
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon 
{
	visibility: hidden
}

#fb_dialog_loader_spinner 
{
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-position: 50% 50%;
	background-repeat: no-repeat;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner 
{ 
	0%
	{
		transform: rotate(0deg)
	}

	100% 
	{ 
		transform :rotate(360deg)
	}
}
.fb_iframe_widget 
{
	display: inline-block;
	position: relative
}

.fb_iframe_widget span 
{
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe 
{
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span, .fb_iframe_widget_fluid_desktop iframe 
{
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe 
{
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift 
{
	z-index: 1
}

.fb_iframe_widget_fluid 
{
	display: inline
}

.fb_iframe_widget_fluid span 
{
	width: 100%
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	function onair(num){
		$.ajax({
			type:"post",
			url:"${path}/user/clickvideo.shop",
			data:{
				"v_num":num
			},
			success:function(msg){
				/* alert(msg); */
				$(".play-on").html('<video src=\"${path}/img/'+msg+'\" id=\"vm-player\" width=\"100%\"'
					+'height=\"400\" autoplay=\"autoplay\" controls></video>')
				$(num).css({"background":"#11447B","color":"white"})
			},
			error: function(e){
				alert("오류"+e.status);
			}
		})	
	}
</script>
</head>
<body>
		<div class="container">
			<div class="myclass-detail-wrap">
				<div class="myclass-detail-tit-wrap">
					<div class="myclass-detail-txt">
						<c:set var="ct" value="${c.cl_category}"/>
                             <c:choose>
                                <c:when test="${ct eq 1}">정규클래스</c:when><c:when test="${ct eq 2}">마크라메</c:when><c:when test="${ct eq 3}">뜨개질/위빙</c:when>
                                <c:when test="${ct eq 4}">가죽공예</c:when><c:when test="${ct eq 5}">쥬얼리/네온사인</c:when><c:when test="${ct eq 6}">다양한 취미</c:when>
                                <c:when test="${ct eq 7}">프랑스 자수</c:when><c:when test="${ct eq 8}">수채화/드로잉</c:when>
                             </c:choose></span>
					</div>
					<hr class="line-myclass-detil-tit">
					<div class="myclass-detail-tit">${c.cl_title}</div>
				</div>
				<div class="vod-wrap">
					<div class="myclass-video play-on">
						<!-- <img src="" alt="" class="img-vod" /><span class="thumb-slide-play">재생</span> -->
						<video src="${path}/img/${i.v_file}" id="vm-player" width="100%" 
							height="400" autoplay="autoplay" controls></video>
					</div>
					<div class="lesson-wrap">
						<div class="lesson-cont">
				<c:forEach var="i" items="${vlist}">
							<ul class="lesson-list-wrap" style="padding:2%">
								<li id="lesson-8401" class="lesson-list">
								<a href="javascript:onair(${i.v_num})" class="lesson-select-btn">
									<div class="lesson-tit">Step ${i.v_num}</div>
										<div class="lesson-txt">${i.v_title}</div>
										<div class="lesson-info">
										</div></a>
								</li>
<%-- 		눌렸을때					<li id="lesson-8401" class="lesson-list lesson-on"><a
									href="javascript:;" data-cv-idx="8401"
									data-video-link="https://player.vimeo.com/video/385889334"
									class="lesson-select-btn">
									<div class="lesson-tit">Step ${count}</div>
										<div class="lesson-txt">${i.v_title}</div>
										<div class="lesson-info">
											<div class="lesson-check lesson-check-on"></div>
										</div>
								</a></li> --%>
							</ul>
						</c:forEach>
						</div>
<!--  						<div class="myclass-summary">
							<div class="myclass-summary-tit">
								<div class="myclass-summary-sub">클래스 25% 진행중</div>
								<div class="myclass-summary-txt">
									4개 중 <em class="myclass-summary-point">1</em>개 시청
								</div>
							</div>
							<div class="myclass-bar">
								<div class="myclass-bar-on" style="width: 25%;"></div>
							</div>
						</div>  -->
					</div>
				</div>
				<div class="tab-detail-wrap">
					<ul class="tab-detail-list tab-on01" id="tab-detail-list">
						<li class="tab-detail"><a href="#detail-ready"
							title="클래스 준비하기" class="btn-tab-detail">클래스 준비하기</a></li>
						<li class="tab-detail"><a href="#detail-epilogue"
							title="구매 후기" class="btn-tab-detail">구매 후기</a></li>
					</ul>
				</div>
				<div class="class-detail-wrap class-detail-prepare block"
					id="detail-ready">
					<div class="detail-explain-wrap c-editor"></div>
				</div>
				<div class="class-detail-wrap block" id="detail-epilogue">
					<div class="class-epilogue-wrap">
						<div class="class-epilogue-tit">
							구매 후기 <a href="javascript:;" title="후기작성"
								class="btn-write-epilogue">후기작성</a>
						</div>
						<div class="class-epilogue-cont">
							<div class="class-epilogue-area">
								<div class="no-epilogue">
									아직 등록된 후기가 없네요.<br class="-w">첫 번째 후기의 주인공이 되어 보세요!
								</div>
							</div>
						</div>
						<div class="paging-num-wrap" style="padding-bottom: 0"></div>
					</div>
				</div>
			</div>


		</div>
		<div class="layer-wrap popup-wrap" id="popup-wrap">
			<div class="bg-layer-wrap" onclick="Popup.hide();"></div>
		</div>
		<div class="layer-wrap write-reply-wrap" id="write-reply-wrap">
			<div class="bg-layer-wrap" onclick="ViewMyClass.hideWriteReply();"></div>
			<div class="write-reply-cont">
				<h2 class="layer-tit">구매 후기 작성</h2>
				<div class="write-reply-area">
					<div class="write-reply">
						<div class="write-reply-tit">작성자</div>
						<div class="write-reply-input">
							<div class="input-wrap">
								<input type="text" class="input reply-writer" placeholder="">
							</div>
						</div>
					</div>
					<div class="write-reply">
						<div class="write-reply-tit">별점</div>
						<div class="write-reply-input">
							<div class="input-star-wrap" id="input-star-wrap">
								<a href="javascript:;" class="input-star10 input-star"
									data-star="10" title="10점">10점</a><a href="javascript:;"
									class="input-star9 input-star" data-star="9" title="9점">9점</a><a
									href="javascript:;" class="input-star8 input-star"
									data-star="8" title="8점">8점</a><a href="javascript:;"
									class="input-star7 input-star" data-star="7" title="7점">7점</a><a
									href="javascript:;" class="input-star6 input-star"
									data-star="6" title="6점">6점</a><a href="javascript:;"
									class="input-star5 input-star" data-star="5" title="5점">5점</a><a
									href="javascript:;" class="input-star4 input-star"
									data-star="4" title="4점">4점</a><a href="javascript:;"
									class="input-star3 input-star" data-star="3" title="3점">3점</a><a
									href="javascript:;" class="input-star2 input-star"
									data-star="2" title="2점">2점</a><a href="javascript:;"
									class="input-star1 input-star" data-star="1" title="1점">1점</a>
							</div>
						</div>
					</div>
					<div class="write-reply reply-textarea">
						<div class="write-reply-tit">후기내용</div>
						<div class="write-reply-input">
							<div class="input-wrap">
								<textarea class="textarea input-reply" rows="" cols=""
									placeholder="후기를 남겨주세요." maxlength="300"></textarea>
								<span class="change-reason-txt-count">0/300</span>
							</div>
						</div>
					</div>
					<div class="write-reply reply-thumb">
						<div class="write-reply-tit">사진첨부</div>
						<div class="write-reply-input">
							<div class="write-reply-thumb-wrap">
								<ul class="write-reply-thumb-list">
									<li class="write-reply-thumb add-photo-wrap"><div
											class="thumb-add">
											<label for="add-thumb" class="label-add-thumb">사진첨부하기</label><input
												type="file" class="input-add-thumb" id="add-thumb"
												multiple=""
												accept="file_extension|audio/*|video/*|image/*|media_type">
										</div></li>
								</ul>
							</div>
							<div class="write-reply-thumb-info">
								• 이미지는 1장에 최대 5Mbyte의 용량 제한이 있습니다.<br>• 파일명은 영문만 가능합니다.<br>•
								첨부 사진은 3장까지만 등록이 가능합니다.
							</div>
						</div>
					</div>
				</div>
				<div class="write-reply-btn">
					<a href="javascript:;" title="후기 등록" class="btn-write-reply">후기
						등록</a>
				</div>
				<a href="javascript:;" title="닫기" class="btn-layer-close"
					onclick="hideWriteReply();">닫기</a>
			</div>
		</div>
	</div>	
</body>
</html>