<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kit::수정</title>
</head>
<body>
<form:form modelAttribute="kit" action="kitedit.shop" enctype="multipart/form-data" name="f"> 
<input type="hidden" id="cl_num" name="cl_num" value="<%=request.getParameter("cl_num")%>">
<table>
 <tr><th>옵션 수정</th></tr>
<tr><th>키트명</th><th>키트구성</th><th>키트가격</th><th>&nbsp;</th></tr>
<tr>
	<td><form:input path="kit_name" id="kit_name" /></td>
	<td><form:input path="kit_box" id="kit_box" /><input type="file" name="kit_imgUrl" id="kit_imgUrl">${kit_imgUrl}</td>
	<td><form:input path="kit_price" id="kit_price" /></td>
	<td><input type="button" value="옵션 삭제"></td>
	</tr>
	<tr>
		<td colspan="3"><input type="submit" value="수정">
	</tr>
</table>
</form:form>
</body>
</html>