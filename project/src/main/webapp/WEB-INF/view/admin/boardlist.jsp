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
 function kitopen(num){
	op = open("kit.shop?cl_num="+num,"kit::add","width=600,height=600,top=100,left=700");
 }
</script>
</head>
<style>
a {text-decoration: none;}
.bmenu td{
	style="margin:10px; padding:10px;"
}
</style>
<body>
<div class="w3-main" style="margin-left:20px;margin-right:35px">
  <div class="w3-container" style="margin-top:50px">
    <h1 class="w3-large">게시물 목록</h1>
  </div>
  <div class="bmenu">
  <table>
  <tr>
  <td class="type"><a href="#">취미클래스</a></td>
  <td class="type"><a href="#">스토어</a></td>
  <td class="type"><a href="#">매거진</a></td>
  <td class="type"><button onclick="location.href='boardwrite.shop'">클래스/상품 작성</button></td></tr>
  </table>
  </div>
  <div class="list">
  	<table border="1" style="text-align:center; width:90%; height: 80%;">
  	<tr><th>게시판구분</th><th>클래스명</th><th>작가</th><th>카테고리</th><th>가격</th><th>수정 /삭제</th><th>kit</th><th>video</th></tr>
  	<c:forEach var="b" items="${classList}">
  		<tr><td>${b.board_type }</td><td>${b.cl_title}</td><td>${b.teacher}</td><td>${b.cl_category}</td><td>${b.cl_price}원</td>
  		<td><a href="#">수정</a>&nbsp;<a href="#">삭제</a></td>
  		<td><button onclick="javascript:kitopen('${b.cl_num}')">키트 등록</button></td><td><button onclick="">영상 등록</button></td></tr>
  	</c:forEach>
  	</table>
  </div>
</div>
</body>
</html>