<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hobbyClass :)</title>
</head>
<body>
<div class="container">
	<div class="class-wrap">
		<div class="layout-wrap">
		</div>
		
		<div class="layout-wrap">
			<!-- 광고 슬라이드 3개 -->
			<div class="img-slide-wrap img-slide-wrap01" id="img-slide-wrap">
				
				<!-- 좌우 버튼 or 하단 페이징 버튼 클릭 시 img-slide-wrap01 ~ img-slide-wrap03 클레스 추가&변경 -->
				<ul class="img-slide-cont hf-tracker-group" data-tracker-type="promotion"
															data-tracker-id="Product list Top banner"
															style="transform: translate3d(-200%, 0px, 0px);">
					<!-- 1번 광고 -->
					<li class="img-slide img-slide01 hf-tracker-item" data-tracker-id="19">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=178" title="하비풀만의 특별한 스티커맵" class="btn-img-slide">
							<span class="img-slide-img" style="background-image:url(https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/6134d530-d369-11e9-beb7-c79511ad1cb5-resize.jpg);"></span>
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">ONLY HOBBYFUL</strong>
								<span class="img-slide-txt">정규 클래스에서 누리는 소소한 재미<span class="bold">하비풀만의 특별한 스티커맵</span></span>
								<!-- <button type="button" class="btn-slide-go">자세히 보기</button> -->
							</div>
						</a>
					</li>
					<!-- 2번 광고 -->
					<li class="img-slide img-slide02 hf-tracker-item" data-tracker-id="18">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=191" title="#뿌듯챌린지 2차 오픈" class="btn-img-slide">
							<span class="img-slide-img" style="background-image:url(https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/5c2d36b0-d367-11e9-beb7-c79511ad1cb5-resize.jpg);"></span>
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">완성하고뿌듯, 환급받고 뿌듯</strong>
								<span class="img-slide-txt">매주 5명 클래스 100% 환급<span class="bold">#뿌듯챌린지 2차 오픈</span></span>
								<button type="button" class="btn-slide-go">자세히 보기</button>
							</div>
						</a>
					</li>
					<!-- 3번 광고 -->	
					<li class="img-slide img-slide03 hf-tracker-item" data-tracker-id="10">
						<a href="https://hobbyful.co.kr/view-magazine.html?id=164" title="기업/단체 신청하고 할인받자!" class="btn-img-slide">
							<span class="img-slide-img" style="background-image:url(https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/classbanner/f6ef3180-4154-11e9-8c9b-07247cd7ad1a-resize.jpg);"></span>
							<div class="img-slide-area2 img-slide-type02">
								<strong class="img-slide-tit">단체주문 할인 신청</strong>
								<span class="img-slide-txt">함께하면 더 즐거운 취미<span class="bold">기업/단체 신청하고 할인받자!</span></span>
								<button type="button" class="btn-slide-go">자세히 보기</button>
							</div>
						</a>
					</li>
				</ul>
			
				<div class="paging-wrap">
					<!-- <button type="button" class="paging-btn-prev" style="left:0; display:none;">이전</button> -->
					<div class="class-paging paging-cont">
						<button type="button" class="paging-btn paging-btn00">0</button>
						<button type="button" class="paging-btn paging-btn01">1</button>
						<button type="button" class="paging-btn paging-btn02 active">2</button>
					</div>
					<!-- <button type="button" class="paging-btn-next" style="right:0; display:none;">다음</button> -->
				</div>
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
				<li class="class-list hf-tracker-item" data-tracker-id="DW-R-0005">
					<c:forEach items="${classList}" var="list">
						<a href="detail.shop">
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
					</c:forEach>
				</li>
			</ul>
		</div>
		<div class="class-list-more-btn">
			<a href="javascript:;" title="more" class="btn-more" style="display: none;">more</a>
		</div>
	</div>
</div>

<div class="layer-wrap popup-wrap" id="popup-wrap"><div class="bg-layer-wrap" onclick="Popup.hide();"></div></div></div>

<!-- Javascript Library Load -->
<script>
	if (navigator.userAgent.indexOf('MSIE') !== -1 || navigator.appVersion.indexOf('Trident/') > 0) {
		(function () {
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.polyfill.io/v2/polyfill.min.js?features=HTMLPictureElement';
			
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		})();
	}
</script>

<script type="text/javascript" src="${path}/jquery/js/slider.js"></script>
<script type="text/javascript" src="${path}/jquery/js/page/class.js"></script> -->

<script>
window.fbAsyncInit = function() {
FB.init({
appId      : '388145468250973',
xfbml      : true,
version    : 'v3.2'
});
FB.AppEvents.logPageView();
};
(function(d, s, id){
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) {return;}
js = d.createElement(s); js.id = id;
js.src = "https://connect.facebook.net/en_US/sdk.js";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>


<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('b3ee6434ce06e64bc905b50b4d9190ca');
//]]>
</script>


<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"></script>


<script>
HF.ready(function() {
window.channelPluginSettings = HF.DATA.channelPluginSettings;
var w = window;
if (w.ChannelIO) {
return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
}
var d = window.document;
var ch = function() {
ch.c(arguments);
};
ch.q = [];
ch.c = function(args) {
ch.q.push(args);
};
w.ChannelIO = ch;
function l() {
if (w.ChannelIOInitialized) {
return;
}
w.ChannelIOInitialized = true;
var s = document.createElement('script');
s.type = 'text/javascript';
s.async = true;
s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
s.charset = 'UTF-8';
var x = document.getElementsByTagName('script')[0];
x.parentNode.insertBefore(s, x);
}
if (document.readyState === 'complete') {
l();
} else if (window.attachEvent) {
window.attachEvent('onload', l);
} else {
window.addEventListener('DOMContentLoaded', l, false);
window.addEventListener('load', l, false);
}
});
</script>


<script type="text/javascript" src="https://s3.ap-northeast-2.amazonaws.com/adpick.co.kr/apis/apTracker.v3.js"></script>
<script type="text/javascript" id="">(function(c,a,d,e,g,b,f,h,k){a.className+=" "+d;b.end=f=function(){a.className=a.className.replace(RegExp(" ?"+d),"")};(c[e]=c[e]||[]).hide=b;setTimeout(function(){f();b.end=null},g)})(window,document.documentElement,"async-hide","dataLayer",4E3,{"GTM-KJXG8SF":!0});</script><div style="display: none; visibility: hidden;">
<script>!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","299353887143885");fbq("set","agent","tmgoogletagmanager","299353887143885");fbq("track","PageView");</script>
<noscript></noscript>
</div><script type="text/javascript" id="" src="https://wcs.naver.net/wcslog.js"></script> 
<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script><script type="text/javascript" id="" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<div id="wp_tg_cts" style="display:none;"><script id="wp_id_script_1577960835117" src="//altg.widerplanet.com/delivery/wp.js"></script><script id="wp_tag_script_1577960835317" src="https://astg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;md=bs&amp;ga=1f0jdac-12eem6g-3-1&amp;eid=4-c0ddd7761b856f425b45f768009eaed9e1ee3dc47cfe34126f2838cdee1f556517cec466282959ba995b9118bf491ebbab7fc76170dda909f9b452265d96d9f57fc92cc71dd9ca451d050d8581fb2884&amp;ty=Home&amp;ti=45752&amp;device=web&amp;charset=UTF-8&amp;tc=1577960835317&amp;ref=https%3A%2F%2Fhobbyful.co.kr%2F&amp;loc=https%3A%2F%2Fhobbyful.co.kr%2Flist%2Fclass"></script></div>
<script type="text/javascript" id="">var wptg_tagscript_vars=wptg_tagscript_vars||[];wptg_tagscript_vars.push(function(){return{wp_hcuid:"",ti:"45752",ty:"Home",device:"web"}});</script>
<script type="text/javascript" id="" src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="6bf8dd6c3518c8";wcs_do();</script> 
<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_3dfbd0909345";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script>

<script type="text/javascript" id="">kakaoPixel("3085303044582687524").pageView();</script>
</body>
<style>.async-hide { opacity: 0 !important} </style>
</html>