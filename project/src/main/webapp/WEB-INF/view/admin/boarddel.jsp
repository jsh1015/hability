<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>       
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::삭제</title>
</head>
<body>
<form:form modelAttribute="classes" action="boarddel.shop" method="post">
<form:hidden path="cl_num"/>
<div class="w3" style="margin-left: 400px; margin-top: 80px;">
<table>
<tr><td><img src="../img/warnning.png" width="250px" height="250px"></td></tr>
<tr><td style="text-align: center;"><br>확인을 누르면 게시물이 삭제됩니다!<br></td></tr>
<tr><td><input type="submit" value="확인"></td><td><input type="button" value="취소" onclick="history.go(-1)"></td></tr>
</table>
</div>
</form:form>
</body>
</html>