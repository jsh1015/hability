<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::관리</title>
</head>
<body>
<div class="w3-main" style="margin-left:20px;margin-right:35px">
  <div class="w3-container" style="margin-top:50px">
    <h1 class="w3-large">공지사항 목록</h1>
  </div>
  <div class="bmenu">
  <table style="margin-left:auto; margin-right:auto; padding:10px;">
  <tr>
  <td class="type"><button onclick="location.href='noticewrite.shop'">공지사항 작성</button></td></tr>
  </table>
  </div>
  
  <div class="list">
  	<table class="t">
  	<tr class="col"><th>구분</th><th>제목</th><th>내용</th><th>등록일</th><th>수정/삭제</th></tr>
  	<c:forEach var="notice" items="${noticeList}">
  		<tr class="col2"><td>
  			${notice.no_type}
  		</td>
  		<td>${notice.no_title}</td>
  		<td>${notice.no_content}</td>
  		<td><fmt:formatDate value="${notice.no_date}" pattern="yyyy.MM.dd"/></td>
  		<td>
  			<a href="noticeedit.shop?cl_num=${notice.no_num}">수정</a>&nbsp;&nbsp;
  			<a href="noticedel.shop?no_num=${notice.no_num}" onclick="return confirm('해당 글을 삭제하시겠습니까?');">삭제</a>
  		</td>
  	</c:forEach>
  	</table>
  </div>
</div>
</body>
</html>