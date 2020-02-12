<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head lang="ko" id="hobbyful">
<title>hability :-D 취미를만나일상이아름다워지다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- <link rel="stylesheet" type="text/css" media="screen" href="CSSreset.min.css" /> -->
<link rel="stylesheet" type="text/css" media="screen" href="${path}/recoSlide/als_demo.css" />
<script type="text/javascript" src="${path}/recoSlide/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${path}/recoSlide/jquery.als-1.7.min.js"></script>

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
       timeout :2000,
       random : false,
       pause : true,
       /* pager: true, */
       after : function(){}
    });
  });
  
   $(document).ready(function() {
      $("#lista1").als({
         visible_items : 4,
         scrolling_items : 1,
         orientation : "horizontal",
         circular : "yes",
         autoscroll : "no",
         interval : 3000,
         speed : 500,
         easing : "linear",
         direction : "right",
         start_from : 0
      });
   });
   
   $(document).ready(function() {
      $("#lista2").als({
         visible_items : 4,
         scrolling_items : 1,
         orientation : "horizontal",
         circular : "yes",
         autoscroll : "no",
         interval : 5000,
         speed : 500,
         easing : "linear",
         direction : "right",
         start_from : 0
      });
   });
</script>
</head>
<body class="">
<div class="container" id="top">

   <!-- 좌우 버튼 or 하단 페이징 버튼 클릭 시 img-slide-wrap01 ~ img-slide-wrap03 클레스 추가&변경 -->
   <div id="mainSlide" class="swiper-container hf-tracker-group swiper-container-initialized swiper-container-horizontal" data-tracker-type="promotion" data-tracker-id="Main Banner">

      <ul id="mainSlideContent" class="rslides">
         <!-- 2 -->
         <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev">
            <a href="https://hobbyful.co.kr/product/traveldigital" title="유수빈의 올인원 여행 디지털드로잉 클래스">
               <picture>
                  <source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/8f49ca30-20a2-11ea-be70-61e81fa988df-resize.jpg" alt="유수빈의 올인원 여행 디지털드로잉 클래스">
                  <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/8f48b8c0-20a2-11ea-be70-61e81fa988df-resize.jpg" alt="유수빈의 올인원 여행 디지털드로잉 클래스">
               </picture>
            </a>
         </li>
         <!-- 1 -->
         <li class="swiper-slide swiper-slide-duplicate">
            <a href="${path}/list/mdetail.shop?cl_num=15" title="이번주 취미코드 마법의 산타 주머니">
               <picture>
                  <source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/d81c8a00-25ec-11ea-be70-61e81fa988df-resize.jpg" alt="이번주 취미코드 마법의 산타 주머니">
                  <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/d81bc6b0-25ec-11ea-be70-61e81fa988df-resize.jpg" alt="이번주 취미코드 마법의 산타 주머니">
               </picture>
            </a>
         </li>
         <!-- 3 -->
         <li class="swiper-slide hf-tracker-item swiper-slide-duplicate swiper-slide-duplicate-active" style="background:#FFFFFF" data-tracker-id="107" data-swiper-slide-index="2">
            <a href="https://hobbyful.co.kr/product/merryhobbyfulmas" title="크리스마스 홈클래스 한정판 에디션">
               <picture>
                  <source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/873d3a10-1fe5-11ea-be70-61e81fa988df-resize.jpg" alt="크리스마스 홈클래스 한정판 에디션">
                  <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/873c76c0-1fe5-11ea-be70-61e81fa988df-resize.jpg" alt="크리스마스 홈클래스 한정판 에디션">
               </picture>
            </a>
         </li>
         <!-- 4 -->
         <li class="swiper-slide hf-tracker-item swiper-slide-duplicate swiper-slide-duplicate-next" style="background:#9a603e" data-tracker-id="105" data-swiper-slide-index="3">
            <a href="https://hobbyful.co.kr/product/Bo2uDp6tLZ" title="반곰이의 추억여행 스킬자수 카펫매트 클래스">
               <picture>
                  <source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/2048c750-1be6-11ea-add4-09214dce28ac-resize.jpg" alt="반곰이의 추억여행 스킬자수 카펫매트 클래스">
                  <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/20478ed0-1be6-11ea-add4-09214dce28ac-resize.jpg" alt="반곰이의 추억여행 스킬자수 카펫매트 클래스">
               </picture>
            </a>
         </li>
         <!-- 5 -->
         <li class="swiper-slide hf-tracker-item swiper-slide-duplicate" style="background:#e8d19c" data-tracker-id="102" data-swiper-slide-index="4">
            <a href="https://hobbyful.co.kr/product/yjK3fHoLPQ" title="스티치랩의 재봉틀 입문 클래스">
               <picture>
                  <source media="(max-width: 970px)" srcset="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/1e9b2ed0-1258-11ea-931a-2fe27e77a6ff-resize.jpg" alt="스티치랩의 재봉틀 입문 클래스">
                  <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/banners/1e9ab9a0-1258-11ea-931a-2fe27e77a6ff-resize.jpg" alt="스티치랩의 재봉틀 입문 클래스">
               </picture>
            </a>
         </li>
      </ul>
   </div>
   
   <!-- small main -->
   <div class="float-wrap">
      <!-- 인사 박스 -->
      <div class="hf-info-wrap">
         <div class="hf-info-cont">
            <c:if test="${!empty sessionScope.loginUser}">
            <div class="hf-info-txt">            
               <a href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}">
                  <div class="photo-thumb block">
                  <!-- DB에 저장된 userimg 없는 경우 -->
                  <c:if test="${empty sessionScope.loginUser.userimg}">                  
                     <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png?0.6152530793205171" onerror="this.src='../static/img/ico-profile.svg'">
                  </c:if>
                  
                  <!-- DB에 저장된 userimg -->
                  <c:if test="${!empty sessionScope.loginUser.userimg}">
                     <img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png?0.6152530793205171" onerror="this.src='../static/img/ico-profile.svg'">
                  </c:if>
                  </div>
               </a>
               안녕하세요
               <a class="bold underline" style="color: #11447b" href="${path}/user/mypage.shop?emailid=${sessionScope.loginUser.emailid}">${sessionScope.loginUser.nickname}</a>님,
               <br>아직 구독중인 취미가 없으시군요!
               <br>하빌리티와 함께 원하는 취미를 찾아보세요.
            </div>
            <a href="${path}/list/hobbyClass.shop" class="btn-hf-info" title="취미 클래스 둘러보기">취미 클래스 둘러보기</a>
            </c:if>
            <c:if test="${empty sessionScope.loginUser}">
            <div class="hf-info-txt">   
               <div class="photo-thumb block">
                  <img src="${path}/img/basic.png">
               </div>
               안녕하세요!
               <br>일상에서 취미를 만나는 가장 쉬운 방법 하빌리티!
               <br>지금 함께 알아볼까요?
            </div>
            <a href="${path}/list/service.shop" class="btn-hf-info" title="하비풀 소개">서비스 이용안내</a>
            </c:if>
         </div>
      </div>
   </div>
   
   <!-- 추천 리스트 시작 -->
   <div id="recommendSlideList" style="padding-left: 0px; padding-right: 0px;">
      <!-- BEST 지금 가장 인기있는 취미  -->
      <section id="content" class="hfb-categorySlideList hf-tracker-group swiper-container-initialized swiper-container-horizontal">
         <header>
            <h4>BEST 지금 가장 인기있는 취미</h4>
         </header>
   
         <div id="lista1" class="als-container">
         <!-- arrow -->
            <span class="als-prev"><img src="${path}/recoSlide/thin_left_arrow_333.png" alt="prev" title="previous"/></span>
         <div class="als-viewport">
         <ul class="als-wrapper swiper-wrapper panel">
            <!-- 1 -->
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/906965c18d">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="temp_img.jpg" alt=""> <!-- 이미지 경로 : WEB-INF 바깥 -->
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 메리진</span>
                  </p>
                  <p class="i-name">메리진의 스마트폰 드로잉 클래스</p>
               </a>
            </li>
            <!-- 2 -->
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="${path}/list/detail.shop?cl_num=6">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/42649440-218b-11ea-9cb3-c70fccd5674e-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 유수빈</span>
                  </p>
                  <p class="i-name">유수빈의 올인원 여행 디지털 드로잉 클래스</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/QMeAha5VgU">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/852ae460-09b6-11ea-952c-efccbb50f547-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 메리데이</span>
                  </p>
                  <p class="i-name">메리데이의 채색 자수 클래스</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/92LvaquM5a">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/d914c600-1b12-11ea-add4-09214dce28ac-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">DIY 키트</span>
                     <span class="i-seller">by 부쉬아로마</span>
                  </p>
                  <p class="i-name">하트 곰돌이비누 DIY 키트</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/Bo2uDp6tLZ">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/c0605900-1be2-11ea-add4-09214dce28ac-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">원데이 클래스</span>
                     <span class="i-seller">by 하비풀</span>
                  </p>
                  <p class="i-name">반곰이의 추억여행 스킬자수 카펫매트 클래스</p>
               </a>
            </li>
         </ul>
         </div>
         <!-- arrow -->
            <span class="als-next"><img src="${path}/recoSlide/thin_right_arrow_333.png" alt="next" title="next" /></span>
         </div>
      </section>
      
      <!-- 새로운 클래스 리스트 테스트  -->
      <section id="content" class="hfb-categorySlideList hf-tracker-group swiper-container-initialized swiper-container-horizontal">
         <header>
            <h4>새로운 클래스 리스트</h4>
         </header>
   
         <div id="lista2" class="als-container">
         <!-- arrow -->
            <span class="als-prev"><img src="${path}/recoSlide/thin_left_arrow_333.png" alt="prev" title="previous"/></span>
         <div class="als-viewport">
         <ul class="als-wrapper swiper-wrapper panel">
            <!-- 1 -->
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/906965c18d">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/cb4325b0-304a-11ea-943b-ab137e78fd91-resize.jpg" alt=""> <!-- 이미지 경로 : WEB-INF 바깥 -->
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 메리진</span>
                  </p>
                  <p class="i-name">메리진의 스마트폰 드로잉 클래스</p>
               </a>
            </li>
            <!-- 2 -->
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/traveldigital">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/b76e1f80-2dcb-11ea-943b-ab137e78fd91-resize.jpg" alt="" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 유수빈</span>
                  </p>
                  <p class="i-name">유수빈의 올인원 여행 디지털 드로잉 클래스</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/92LvaquM5a">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/490b45e0-2213-11ea-9cb3-c70fccd5674e-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">DIY 키트</span>
                     <span class="i-seller">by 부쉬아로마</span>
                  </p>
                  <p class="i-name">하트 곰돌이비누 DIY 키트</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/QMeAha5VgU">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/64cd5070-fb85-11e9-bce7-bb5409fe61d5-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">정규 클래스</span>
                     <span class="i-seller">by 메리데이</span>
                  </p>
                  <p class="i-name">메리데이의 채색 자수 클래스</p>
               </a>
            </li>
            <li class="als-item swiper-slide" style="width: 220.25px; margin-right: 18px;">
               <a href="/product/Bo2uDp6tLZ">
                  <p class="i-img">
                     <img style="width:220.25px; height:132.15px;" src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/class/thumbs/7edb21d0-2dcc-11ea-9134-2970db5a6784-resize.jpg" alt="">
                  </p>
                  <p class="i-desc">
                     <span class="i-type">원데이 클래스</span>
                     <span class="i-seller">by 하비풀</span>
                  </p>
                  <p class="i-name">반곰이의 추억여행 스킬자수 카펫매트 클래스</p>
               </a>
            </li>
         </ul>
      </div>
         <!-- arrow -->
            <span class="als-next"><img src="${path}/recoSlide/thin_right_arrow_333.png" alt="next" title="next" /></span>
         </div>
      </section>
   </div>
   
   <div class="hf-thumb-wrap">
<div class="hf-thumb-tit-wrap">
<div class="hf-thumb-tit">#hability</div>
<div class="hf-thumb-txt">INSTAGRAM</div>
</div>
<ul class="hf-thumb-list"><li class="hf-thumb"><a href="https://www.instagram.com/p/B8bqXgHA6TH" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.89.720.720a/s640x640/84524991_790793488080953_6018292941453966320_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=105&amp;_nc_ohc=8mtyGTym8hAAX8K4T9Q&amp;oh=d6fc1103e1e8612bd535453ad0775685&amp;oe=5E468871" class="thumb-img" alt=".
greenery"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8bf31CjLdj" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c46.0.1348.1348a/s640x640/84492442_756696048188670_4683117865613114766_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=106&amp;_nc_ohc=xX5MuLf6UWEAX9n0RhC&amp;oh=dc7296d3de9af715c24f7966509829db&amp;oe=5ECDF7E6" class="thumb-img" alt="#오늘의취미생활 
집에 있으니 
손재주만 늘고
작업물들만 늘어난다
태교가 되겠죠?"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8bUmzpBhPL" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/84331845_638647096951031_6496038933470612929_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=111&amp;_nc_ohc=CdRduyFsvYUAX8CD6wf&amp;oh=c204dbb70a7f76b895ce254e0745929a&amp;oe=5ECC2586" class="thumb-img" alt="보고싶은 벚꽃🌸

한참 쉬다가 다시 시작하는 드로잉
#하비풀 #hobbyful #메리진의스마트폰드로잉클래스 #뿌듯챌린지

#ipad6 #applepencil"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8bHU4sF7e9" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83937015_2562627724060169_1106807754959434015_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=105&amp;_nc_ohc=r39s7BaVgsAAX9GY2tH&amp;oh=3b80e0fa34353ca5df3b2f99462cc3e1&amp;oe=5ED19063" class="thumb-img" alt="🔅
예쥬니가 뱃속에 있을 때 태교 겸 만들었던 무지개모빌🌈
마크라메 처음인데도 하비풀의 친절한 동영상 강좌 덕분에
차근차근 따라가며 예쁘게 완성할 수 있었더랬다😘

마크라메는 언젠가 꼭 배워보고 싶은 버킷리스트 중 하나!
이건 조만간 다시 예쁘게 걸어줄게❤"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8bE99rBQyd" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83915249_624154838387681_1619025099131825990_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=105&amp;_nc_ohc=wZqgXKJzXzoAX8trjW_&amp;oh=5f2de48aaa2547fdb8628b90a7e49d14&amp;oe=5EC3AA08" class="thumb-img" alt="무드등만들기 완료❣️ #hobbyful #유미세포들 #출출이미니어처 #무드등 #만들기클래스 #출출이의야식타임 #기엽기엽❤️ #또만들고싶다 #❤️"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8Y1ps_A9F2" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/84982197_105131327647167_1050019322522998920_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=103&amp;_nc_ohc=w02TGjAac7AAX-8T6Sp&amp;oh=31f2f2c79b2f49610ea88447b3cab93e&amp;oe=5EBCF82D" class="thumb-img" alt="그린건 꽤 되었지만... 그동안 바빳으니까 흑흑
#하비풀 #오일파스텔 #동백꽃 #언제쯤완강하지 #ㅋㅋㅋㅋㅋㅋ 
#취미스타그램🎨"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8YwGoigajf" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83688935_183898079617131_8447933092202362839_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=103&amp;_nc_ohc=yX-JzgVo4j8AX8T6HjQ&amp;oh=5d3bd0ad833d3903cb6912fc3ea0fe35&amp;oe=5EC811EF" class="thumb-img" alt="💐
오랜만에 취미생활😘
이제 좀 마음에 여유가 생겼는데
여행을 못가서 완전 답답답답🤨
.
.
.
.
#퇴근후취미 #취미 #힐링 #힐링타임 #스트레스해소 #그림그리기 #스마트폰드로잉 #하비풀 #메리진의스마트폰드로잉클래스 #오늘하루도끝"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8YuH-GnGNS" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83820149_675392976332180_7215346792248489500_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=108&amp;_nc_ohc=9aKDzVtUzlIAX8SCjsl&amp;oh=06b202b16caba5c95653d7183bbbd148&amp;oe=5ECBE36F" class="thumb-img" alt="밖에 나가진 못 하고 집에서 밀린 쪼물딱 하고 있기.
담엔 뭐하지~?
#애기꺼 #diy #난쟁이똥자루 #뽀야베이비 #하비풀 #똥손"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8YdT10nOUM" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/84690661_773695079819458_8576674854032030812_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=110&amp;_nc_ohc=Bm8WvdBHiYYAX_z_2aj&amp;oh=cd447f9b49d3d537a10de81991143f18&amp;oe=5E45E8C3" class="thumb-img" alt="#사포드로잉#원데이클래스#온라인신청#asmr#볼륨업#🎉🎉
-
안녕하세요! 사포드로잉 작가 담다입니다~!😌.
제가 즐거운 소식을 들고 왔어효
-
드디어! 사포드로잉 클래스를 하비풀을 통하여 
온라인으로 만나볼 수 있게 되었어요 쨕쨕쨕!!!!!!!꺄하아!!!!!🧡
-
오프라인 클래스에 아쉽게 참여하지 못하는 분들도 
이제 집에서 저렴한 가격으로 사포드로잉을 
취미로 배울 수 있게 되었답니댜~!👍
-
초보자 분들을 위한 커리큘럼으로 진행되며 
사포드로잉에 필요한 구성품 또한 모두~보내드리니 을매나 좋게요~😍
-
지금 오픈이벤트 중이니 더더 싼 가격에 모두 가져가세요🧡
-
온라인 클래스 신청 방법은 @hobbyful 
페이지를 통하여 가능합니다 -
-
#온라인취미#온라인클래스#하비풀#일러스트#그림취미#그림배우기#성인미술#크레파스#오일파스텔#온라인강의"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8YS2bFjpc8" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/83860687_207017603775106_289092117835099322_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=110&amp;_nc_ohc=BVBHi-7QvHEAX_CWg_t&amp;oh=6600edd30155611b73a8b1469559fcc6&amp;oe=5EFE6F6D" class="thumb-img" alt=".
쌰로니와 월행잉만들기 태교
.
한올한올 사랑담아 완성💕
.
#태교 #임산부 #35w2d #월행잉만들기 #하비풀 #너모이쁘당🙊"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8YMw60pJve" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/83413907_179327170007577_4334424623646580671_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=109&amp;_nc_ohc=35_nQuodIkQAX8-B95h&amp;oh=fc32c7dce28c6e067d788f710c3d8767&amp;oe=5EC70D0A" class="thumb-img" alt="#일상
해도해도 표안나는 집청소후
옛날옛적사놓은 태교놀이한번
하원차기댕기는중
#잘도간다#⏰#회사갈때보다#더바쁨#😭#하비풀#마크라메#태교놀이#앙증#귀염#육아스타그램#집순이그램#애데렐라#배뚱띠#🤰🏻"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8XxBSDHgIG" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/84355387_582872359236963_3787782235306413895_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=103&amp;_nc_ohc=Wrd_KFWII8YAX_z7C9g&amp;oh=0327dd470875bc404329e86e9c9977eb&amp;oe=5ECB4907" class="thumb-img" alt="하비풀에서 스마트폰 그림그리기 배우는 중. 수업 들은지 2일차🖊
오므라이스 먹으러갔다가 그려봤다. 이틀만에 원하는 그림들 슥슥 그릴 수 있게 되다니 신기하다. 
클래스 마무리하고 나면 좀 더 퀄리티 있는 그림들 그릴 수 있겠지?
그림그리는거 너무 재밌다 ㅠㅠ 메리진 선생님도 정말..세젤귀셔....
이거 마스터하면 다른 클래스들도 또 들어봐야지. 강추강추하고싶다!!! #하비풀 #뿌듯챌린지 #그림그리기연습"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8Ws51AAJLP" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83597977_1344218842431749_1540321379872713878_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=105&amp;_nc_ohc=cZhGlj-PMBsAX9-h-_p&amp;oh=aff55cdd41b8bfe23ab2f8002202b8b2&amp;oe=5E45A7F5" class="thumb-img" alt=".
읏차차
I guess it's fine, thank you"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8WU0munyNl" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/83700146_200099527848291_5073605421731814698_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=103&amp;_nc_ohc=I4TmqJyi0SwAX8aQwiF&amp;oh=903f5794b4f23da8a041f7474be26e40&amp;oe=5EDD2C4A" class="thumb-img" alt="다음 취미는 이거...
이번엔 얼마나 걸리려나

#하비풀 터는 중... #프랑수자수 #에코백"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8WNjmjHA1L" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c180.0.1080.1080a/s640x640/84255372_207046290435524_6240113644521929266_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=108&amp;_nc_ohc=_R8KBi0CGHoAX9RNoah&amp;oh=46a99c2da2291c3c432d517289c2a2e3&amp;oe=5EBCB55F" class="thumb-img" alt="#수채화 #하비풀 #제주도

다음엔 더 잘하겠지 뭐
멀리서 보니 봐줄만하네 ㅎㅎ
자다 가위눌리진 않겠징;;"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8Vs71DgZBf" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83462930_2568032460122594_1641211316728613622_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=102&amp;_nc_ohc=ydCYzVuP2roAX8MuWsG&amp;oh=93c35e5265e290c51500131e33ba4782&amp;oe=5ECAADFA" class="thumb-img" alt="아무것도 하지않는 여유가 어색🤣
무언가해야한다는 강박속에 호텔까지
바리바리 싸들고 와서 완성한 드림캐쳐...✌
자 이제 책읽으러 가자..💨
.
.
.
#주말 #호캉스 #수원 #노보텔엠버서더수원
#하비풀 #취미박스 #드림캐쳐"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8VZrG4lC4H" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83887024_208280606982901_8926952169608139254_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=101&amp;_nc_ohc=0W7O1XqobxsAX_PpaD9&amp;oh=afe2ece5d8e22ae4fecc97a5e47b6470&amp;oe=5EC65A53" class="thumb-img" alt="🙏
배워보고싶다. 부산엔 없는가.

#위빙 #위빙드림캐쳐 #weaving #하비풀 #hobbyful #하비풀위빙 #하비풀드림캐쳐 #취미생활 #뿌듯챌린지"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8VP2qCJSX6" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/84100347_2474148496191550_1244810660909298481_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=110&amp;_nc_ohc=R6-L0wC5s-UAX9gZ5x5&amp;oh=3c4cfe4d1541913d105d596717143fd9&amp;oe=5ED22B11" class="thumb-img" alt="⠀
#하비풀 #취미생활 #뿌듯챌린지 #메리진의스마트폰드로잉클래스"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8TzoGLgCbH" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83337309_2512835705597206_5664824763067758987_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=110&amp;_nc_ohc=DWaPZTpJh5MAX-uf0-7&amp;oh=c8c619058c7645984a6cd9b4bd23dfdf&amp;oe=5F02C435" class="thumb-img" alt="하비풀 취미 원데이 클래스 🖌
오랜만에 붓을 잡을 수 있어서 내내 즐거웠다
-
#사포일 #saphoill #하비풀 #밤바다고래의꿈네온사인클래스 #밤바다고래의꿈 #고래 #고래🐳 #네온사인 #캔버스 #네온사인캔버스 #hobbyful #neonsign #canvasneonsign #whale #whale🐳"></a></li><li class="hf-thumb"><a href="https://www.instagram.com/p/B8TV0e6AL-q" target="_blank" class="thumb-link" title=""><img src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/83074478_480891445863661_7455917463500349874_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=101&amp;_nc_ohc=kxE68oZtejsAX-x2z7f&amp;oh=bd2a9dd341afa8a62d4d9c90aabbc467&amp;oe=5EDCA9A5" class="thumb-img" alt="마음 수양을 위한 #프랑스자수 결과가 좋아서 참 기쁘다! #하비풀"></a></li></ul>
</div>
</div>

<!-- footer있던 자리 -->
</body>
</html>