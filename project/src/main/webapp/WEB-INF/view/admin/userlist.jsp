<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원::관리</title>
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
    <h1 class="w3-large">회원 목록</h1>
  </div>
  <div class="list">
  	<table class="t" style="text-align:center; width:90%; height: 80%;">
  	<tr class="col"><th>아이디</th><th>이름</th><th>닉네임</th><th>휴대폰</th><th>등급</th><th>탈퇴</th></tr>
  	<c:forEach var="u" items="${userList}">
  	<c:if test="${u.emailid ne 'admin@naver.com'}">
  		<tr class="col2"><td><a href="${path}/admin/userdetail.shop?emailid=${u.emailid}">${u.emailid}</a></td><td>${u.name}</td><td>${u.nickname}</td><td>${u.phone}</td><td>${u.grade}</td>
  		<td><a href="userdelete.shop?emailid=${u.emailid}">강제탈퇴</a></td></tr>
  	</c:if>
  	</c:forEach>
  	</table>
  </div>
</div>
</body>
</html>