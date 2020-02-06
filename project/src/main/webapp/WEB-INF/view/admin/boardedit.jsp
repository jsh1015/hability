<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::수정</title>
</head>
<body>
<div class="w3">
<form:form modelAttribute="classes" action="boardedit.shop" enctype="multipart/form-data">
<form:hidden path="cl_img"/>
<form:hidden path="cl_info"/>
<form:hidden path="cl_story"/>
<form:hidden path="cl_num"/>
<table border="1">
<tr><th colspan="2"><h3>게시물수정</h3></th></tr>
<tr><td>메뉴</td>
	<td>
	<form:radiobutton  path="board_type" value="1" />취미 클래스
	<form:radiobutton  path="board_type" value="2" />DIY 스토어
	<form:radiobutton  path="board_type" value="3" />매거진
	</td></tr>
	<tr><td>클래스 개설 타입</td>
	<td>
	취미클래스<br>
	<form:radiobutton  path="cl_type" value="1" />정규 클래스
	<form:radiobutton  path="cl_type" value="2" />원데이 클래스
	<br>
	DIY 스토어<br>
	<form:radiobutton  path="cl_type" value="3" />DIY키트
	<form:radiobutton  path="cl_type" value="4" />도구
	</td></tr>
	<tr><td>카테고리<br><p>*택 1<p></td>
	<td>
	<h5>취미클래스</h5>
	<form:radiobutton  path="cl_category" value="1" />정규클래스
	<form:radiobutton  path="cl_category" value="2" />마크라메
	<form:radiobutton  path="cl_category" value="3" />뜨개질/위빙
	<form:radiobutton  path="cl_category" value="4" />가죽공예
	<form:radiobutton  path="cl_category" value="5" />쥬얼리/네온사인
	<form:radiobutton  path="cl_category" value="6" />다양한 취미<br>
	<h5>공통 카테고리</h5>
	<form:radiobutton  path="cl_category" value="7" />프랑스자수
	<form:radiobutton  path="cl_category" value="8" />수채화/드로잉<br>
	<h5>DIY 스토어</h5>
	<form:radiobutton  path="cl_category" value="9" />뜨개질
	<form:radiobutton  path="cl_category" value="10" />키즈
	<form:radiobutton  path="cl_category" value="11" />취미 샘플러
	<form:radiobutton  path="cl_category" value="12" />비누/캔들
	<form:radiobutton  path="cl_category" value="13" />다양한 DIY 키트
	</td></tr>
	<tr><td>강사명</td><td><form:input path="teacher" style="width:100%;"/></td></tr>
	<tr><td>대표 사진</td><td><input type="file" name="cl_imgUrl">${classes.cl_img}</td></tr>
	<tr><td>클래스/스토어 명</td><td><form:input path="cl_title" style="width:100%;"/></td></tr>
	<tr><td>하비풀스토리</td><td><input type="file" name="cl_infoUrl">${classes.cl_info}</td></tr>
	<tr><td>클래스소개</td><td><input type="file" name="cl_storyUrl">${classes.cl_story}</td></tr>
	<tr><td>가격 </td><td><form:input path="cl_price" style="text-align:right;"/>원</td></tr>
	<tr><td>내용</td><td><form:textarea path="cl_content" cols="80" rows="5"></form:textarea></td></tr>
	<tr><td colspan="2" style="text-align:right;"><input type="submit" value="수정"><a href="boardlist.shop">목록</a></td></tr>
</table>
</form:form>
</div>
</body>
</html>