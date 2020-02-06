<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="list">
		<table border="1" style="text-align: center; width: 90%; height: 80%;">
			<tr>
				<td>아이디</td>
				<td>${user.emailid}</td>
			</tr>
			<tr>
				<td>프로필 사진</td>
				<td><img src="${user.userimg}"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td>${user.phone}</td>
			</tr>
		</table>
		<button value="목록" onclick="location.href='userlist.shop'">목록</button>
	</div>
</body>
</html>