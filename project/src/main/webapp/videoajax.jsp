<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<link rel="stylesheet" href="${path}/css/admin.css">
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />

<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
		url="jdbc:mariadb://192.168.0.107:3306/hability" user="scott" password="1234" /> 
<sql:query var="rs" dataSource="${conn}"> select * from video where cl_num=${param.cl_num}
</sql:query>
<style>
.ah{
	background-color: #f4f7f7;
	color:#1f4e5f;
}

.ajax{
	background-color: #f4f7f7;
	color:#79a8a9;
	
}
</style>
<table style="width: 100%; height:40%;">
<tr class="ah"><th>번호</th><th>영상 제목</th><th>&nbsp;</th></tr>
<c:forEach var="data" items="${rs.rows}">
<input type="hidden" name="cl_num" value="${data.cl_num}">
<tr class="ajax">
	<td>${data.v_title}</td>
	<td>${data.v_file}</td>
	<td><a href="${path}/admin/videodelete.shop?cl_num=${data.cl_num}&v_num=${data.v_num}">삭제</a></td>
</tr>
</c:forEach>
</table>