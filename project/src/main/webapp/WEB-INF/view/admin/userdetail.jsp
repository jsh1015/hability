<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원:상세보기</title>
</head>
<body>
	<div class="w3-container" style="margin-top: 50px">
		<h1 class="w3-large">회원 상세보기</h1>
	</div>
	<div class="list" style="width:100%; height:100%">
		<table border="1" style="text-align: center; width: 90%; height: 80%;">
			<tr>
				<td>아이디</td>
				<td>${user.emailid}</td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td>${user.phone}</td>
			</tr>
			<tr><td>이름</td><td>${user.name}</td></tr>
			<tr><td>닉네임</td><td>${user.nickname}</td></tr>
			<tr><td>생년월일</td><td><fmt:formatDate value="${user.birth}" pattern="yyyy. MM. dd" /></td></tr>
			<tr><td>등급</td>
				<td>
				<c:choose>
					<c:when test="${user.grade==1}">thanksful</c:when>
					<c:when test="${user.grade==2}">wonderful</c:when>
					<c:when test="${user.grade==3}">joyful</c:when>
					<c:when test="${user.grade==4}">colorful</c:when>
					<c:when test="${user.grade==5}">beautiful</c:when>
					<c:when test="${user.grade==6}">hability</c:when>
				</c:choose></td>
			</tr>
		</table>
		<button value="목록" onclick="location.href='userlist.shop'">목록</button>
	</div>
</body>
</html>