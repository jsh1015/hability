<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::등록</title>
</head>
<style>
div {display: inline; float:left;}
</style>
<body>
<div class="w3">
<form:form modelAttribute="class" action="boardwrite.shop" enctype="multipart/form-data" name="f">
<table border="1">
	<tr><th colspan="2"><h3>게시물등록</h3></th></tr>
	<tr><td>메뉴</td>
	<td>
	<form:checkbox  path="board_type" value="1" />취미 클래스
	<form:checkbox  path="board_type" value="2" />DIY 키트
	<form:checkbox  path="board_type" value="3" />매거진
	</td></tr>
	<tr><td>클래스 개설 타입</td>
	<td>
	<form:checkbox  path="cl_type" value="1" />정규 클래스
	<form:checkbox  path="cl_type" value="2" />원데이 클래스
	<form:checkbox  path="cl_type" value="3" />DIY키트
	<form:checkbox  path="cl_type" value="4" />도구
	</td></tr>
	<tr><td>강사명</td><td><form:input path="teacher" style="width:100%;"/></td></tr>
	<tr><td>카테고리<br><p>*택 1<p></td>
	<td>
	<h5>취미클래스</h5>
	<form:checkbox  path="cl_category" value="1" />정규클래스
	<form:checkbox  path="cl_category" value="2" />마크라메
	<form:checkbox  path="cl_category" value="3" />뜨개질/위빙
	<form:checkbox  path="cl_category" value="4" />가죽공예
	<form:checkbox  path="cl_category" value="5" />쥬얼리/네온사인
	<form:checkbox  path="cl_category" value="6" />다양한 취미<br>
	<h5>공통 카테고리</h5>
	<form:checkbox  path="cl_category" value="7" />프랑스자수
	<form:checkbox  path="cl_category" value="8" />수채화/드로잉<br>
	<h5>DIY 스토어</h5>
	<form:checkbox  path="cl_category" value="9" />뜨개질
	<form:checkbox  path="cl_category" value="10" />키즈
	<form:checkbox  path="cl_category" value="11" />취미 샘플러
	<form:checkbox  path="cl_category" value="12" />비누/캔들
	<form:checkbox  path="cl_category" value="13" />다양한 DIY 키트
	</td></tr>
	<tr><td>대표 사진</td><td><input type="file" name="file1"></td></tr>
	<tr><td>클래스/스토어 명</td><td><form:input path="cl_title" style="width:100%;"/></td></tr>
	<tr><td>하비풀스토리</td><td><input type="file" name="cl_info"></td></tr>
	<tr><td>클래스소개</td><td><input type="file" name="cl_story"></td></tr>
	<tr><td>가격 </td><td><form:input path="cl_price" style="text-align:right;"/>원</td></tr>
	<tr><td>내용</td><td><form:textarea path="cl_content" cols="80" rows="5" /></td></tr>
	<tr><td colspan="2" style="text-align:right;"><a href="javascript:document.f.submit()">클래스/상품 등록</a></td></tr>
</table>
</form:form>
</div>
</body>
</html>