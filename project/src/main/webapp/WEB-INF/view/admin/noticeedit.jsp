<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<script type="text/javascript" src="${path}/jquery/js/summernote-ko-KR.js"></script>
<title>공지사항::수정</title>
<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: 'content',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
	});
</script>
</head>
<body>
<div class="w3">
<form:form modelAttribute="notice" action="noticeedit.shop">
<table border="1">
<tr><th colspan="2"><h3>공지사항수정</h3></th></tr>
<tr><td>메뉴</td>
	<td>
	<input type="radio" name="no_type" value="배송" id="r1" checked="checked"> 배송
	<input type="radio" name="no_type" value="주문/결제" id="r2" checked="checked"> 주문/결제
	<input type="radio" name="no_type" value="취소/교환" id="r3" checked="checked"> 취소/교환
	<input type="radio" name="no_type" value="반품/환불" id="r4" checked="checked"> 반품/환불
	<input type="radio" name="no_type" value="기타" id="r5" checked="checked"> 기타
	<input type="radio" name="no_type" value="공지사항" id="r6" checked="checked"> 공지사항
	</td></tr>

	<tr><td>제목</td><td><input type="text" name="no_title" style="width: 100%;"></td>
	</tr>
	<tr><td>내용</td><td><textarea rows="5" cols="80" name="no_content" id="summernote"></textarea></td></tr>
	<tr><td colspan="2" style="text-align:right;"><input type="submit" value="수정"><a href="noticelist.shop">목록</a></td></tr>
</table>
</form:form>
</div>
</body>
</html>