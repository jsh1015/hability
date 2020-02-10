<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::관리</title>
<script type="text/javascript">
 var op;
 function kitinsert(num){
	op = open("kit.shop?cl_num="+num,"kit::add","width=700,height=600,top=100,left=700");
 }
 
 function video(num){
	op = open("video.shop?cl_num="+num,"video::add","width=700,height=600,top=100,left=700");
}


</script>
</head>
<body>
<div class="w3-main" style="margin-left:20px;margin-right:35px">
  <div class="w3-container" style="margin-top:50px">
    <h1 class="w3-large">게시물 목록</h1>
  </div>
  <div class="bmenu">
  <table style="margin-left:auto; margin-right:auto; padding:10px;">
  <tr>
  <td class="type"><a href="#">취미클래스</a></td>
  <td class="type"><a href="#">스토어</a></td>
  <td class="type"><a href="#">매거진</a></td>
  <td class="type"><button onclick="location.href='boardwrite.shop'">클래스/상품 작성</button></td></tr>
  </table>
  </div>
  
  <div class="list">
  	<table class="t">
  	<tr class="col"><th>게시판구분</th><th>클래스명</th><th>개설타입</th><th>작가</th><th>카테고리</th><th>가격</th><th>수정 /삭제</th><th>kit</th><th>video</th></tr>
  	<c:forEach var="b" items="${classList}">
  		<tr class="col2"><td>
  		<c:set var="type" value="${b.board_type}"/> <!-- 게시판 구분 -->
  		<c:choose>
  			<c:when test="${type eq 1}"> <!-- 1 = 취미클래스 -->
  				취미클래스
  			</c:when>
  			<c:when test="${type eq 2}">  <!-- 2 = DIY스토어 -->
  				DIY스토어
  			</c:when>
  			<c:when test="${type eq 3}">  <!-- 3 = 매거진 -->
  				매거진
  			</c:when>
  		</c:choose>
  		</td>
  		<td>${b.cl_title}</td>
  		<td>
  		<c:set var="type" value="${b.cl_type}"/>
		<c:choose>
  			<c:when test="${type eq 1}"> <!-- 1 = 취미클래스 -->
  				[정규클래스]
  			</c:when>
  			<c:when test="${type eq 2}">  <!-- 2 = DIY스토어 -->
  				[원데이클래스]
  			</c:when>
  			<c:when test="${type eq 3}">  <!-- 3 = 매거진 -->
  				[DIY]
  			</c:when>
  			<c:when test="${type eq 4}">  <!-- 3 = 매거진 -->
  				[도구]
  			</c:when>
  		</c:choose></td>
  		<td>${b.teacher}</td>
  		<td>
  		<c:set var="ct" value="${b.cl_category}"/>
  		<c:choose>
  			<c:when test="${ct eq 1}">정규클래스</c:when><c:when test="${ct eq 2}">마크라메</c:when><c:when test="${ct eq 3}">뜨개질/위빙</c:when>
  			<c:when test="${ct eq 4}">가죽공예</c:when><c:when test="${ct eq 5}">쥬얼리/네온사인</c:when><c:when test="${ct eq 6}">다양한 취미</c:when><c:when test="${ct eq 7}">프랑스 자수</c:when>
  			<c:when test="${ct eq 8}">수채화/드로잉</c:when><c:when test="${ct eq 9}">뜨개질</c:when><c:when test="${ct eq 10}">키즈</c:when><c:when test="${ct eq 11}">취미샘플러</c:when>
  			<c:when test="${ct eq 12}">비누/캔들</c:when><c:when test="${ct eq 13}">다양한DIY 키트</c:when><c:when test="${ct eq 14}">DIY RECIPE</c:when>
  			<c:when test="${ct eq 15}">TREND</c:when><c:when test="${ct eq 16}">REVIEW</c:when><c:when test="${ct eq 17}">h-NEWS</c:when>
  		</c:choose></td>
  		<td><fmt:formatNumber value="${b.cl_price}" type="CURRENCY" currencySymbol=""/>원</td>
  		<td><a href="boardedit.shop?cl_num=${b.cl_num}">수정</a>&nbsp;&nbsp;<a href="boarddel.shop?cl_num=${b.cl_num}">삭제</a></td>
  		<td><a href="javascript:kitinsert('${b.cl_num}')">키트 등록</a></td>
  		<td><a href="javascript:video('${b.cl_num}')">영상 등록</a></td></tr>
  	</c:forEach>
  	</table>
  </div>
</div>
</body>
</html>