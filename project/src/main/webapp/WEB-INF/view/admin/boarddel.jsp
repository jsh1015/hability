<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::삭제</title>
</head>
<body>
<form:form modelAttribute="classes" action="boarddel.shop" method="post">
<form:hidden path="cl_num"/>
<table>
<tr><td>게시물 삭제 확인</td></tr>
<tr><td><input type="submit" value="게시물삭제"></td></tr>
</table>
</form:form>
</body>
</html>