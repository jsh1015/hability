<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />

<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
		url="jdbc:mariadb://192.168.0.107:3306/hability" user="scott" password="1234" /> 
<sql:query var="rs" dataSource="${conn}"> select * from kit where cl_num=${param.cl_num}
</sql:query>

<table border="1">
<tr><th>키트번호</th><th>키트명</th><th>키트구성</th><th>키트가격</th><th>&nbsp;</th></tr>
<c:forEach var="data" items="${rs.rows}">
<input type="hidden" name="cl_num" value="${data.cl_num}">
<tr>
	<td>${data.kit_num}</td>
	<td>${data.kit_name}</td>
	<td>${data.kit_box}</td>
	<td>${data.kit_price}</td>
	<td><a href="${path}/admin/kitdelete.shop?cl_num=${data.cl_num}&kit_num=${data.kit_num}">삭제</a></td>
</tr>
</c:forEach>
</table>