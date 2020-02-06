<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="path" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title/></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${path}/css/admin.css">
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"> -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap&subset=korean">
<style>
/* body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif} */
body,h1,h2,h3,h4,h5 {font-family: 'Noto Sans KR', sans-serif}
body {font-size:20x;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
ul {list-style:none; text-decoration:none;}
li {text-decoration:none; }
ul ul{display:none;}
ul li:hover > ul {display:block;} 
#mySidebar{background-color:#11447B;}
.menu{color:white;}
h3{text-align: left;}
a{text-decoration: none;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<decorator:head/>
<body>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64 w3-text-white"><a href="${path}/admin/admain.shop"><b>Hability<br>관리자</b></a></h3>
  </div>
  <div class="w3-bar-block">
  <ul>
    <li class="menu"><a href="#" id="#spreadBtn" class="w3-bar-item ">회원관리</a> 
    	<ul class="hide">
    		<li><a href="${path}/admin/userlist.shop">회원 목록</a></li>
    	</ul>
    </li>
    <li  class="menu"><a href="#" id="#spreadBtn" class="w3-bar-item ">배송관리</a>
        <ul class="hide">
    		<li><a href="#">배송 목록</a></li>
    	</ul>
    </li>
    <li  class="menu"><a href="#" id="#spreadBtn" class="w3-bar-item ">게시판관리</a>
        <ul class="hide">
    		<li><a href="${path}/admin/boardlist.shop">게시물 관리</a></li>
    		<li><a href="#">댓글/후기 관리</a></li>
    	</ul>
    </li>	
    <li  class="menu"><a href="#" id="#spreadBtn" class="w3-bar-item ">고객센터관리</a>
        <ul class="hide">
    		<li><a href="#">공지사항</a></li>
    		<li><a href="#">1:1 문의내역</a></li>
    	</ul>
    </li>
    <li  class="menu"><a href="#" id="#spreadBtn" class="w3-bar-item ">매출관리</a>
    	<ul class="hide">
    	    <li><a href="#">클래스/스토어 매출</a></li>
    		<li><a href="#">월별 매출</a></li>
    		<li><a href="#">하빌리티 매출</a></li>
    	</ul>
    </li>
    <li class="menu"><a href="../user/main.shop"  class="w3-bar-item ">관리자 모드 종료</a></li>
  </ul>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-purple w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-purple w3-margin-right" onclick="w3_open()">☰</a>
  <span>Hability<br>Administration Page</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:380px;">

  <decorator:body /> 
<!-- End page content -->
</div>

<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:320px;padding-right:58px"><p class="w3-right">Produce by hability</p></div>

<!-- menubar slide -->
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

</script>

</body>
</html>
