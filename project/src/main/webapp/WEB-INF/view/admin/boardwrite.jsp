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
<div class="w3" style="margin-left: 150px; margin-top: 40px;">
<form:form modelAttribute="class" action="boardwrite.shop" enctype="multipart/form-data" name="f">
<table border="1" style="width:80%; text-align:center">
	<tr><th colspan="2"><h3>게시물등록</h3></th></tr>
	<tr style="height:50px; border-bottom:1px solid gray"><td>메뉴</td>
	<td>
<%-- 	<form:radiobutton  path="board_type" value="1" name="btn" id="btn" onclick="btn_onoff('on_h');" />취미 클래스
	<form:radiobutton  path="board_type" value="2" name="btn" id="btn" onclick="btn_onoff('on_d');"/>DIY 스토어
	<form:radiobutton  path="board_type" value="3" name="btn" id="btn" onclick="btn_onoff('on_m');"/>매거진 --%>
	<input type="radio" name="board_type" value="1" id="r1" checked="checked"> 취미클래스
	<input type="radio" name="board_type" value="2" id="r2"> DIY 스토어
	<input type="radio" name="board_type" value="3" id="r3"> 매거진
	</td></tr>
	
	<!-- 취미클래스 -->
	<tr id="table" style="height:100%"><td colspan="2">
	<label id="on_h">
	<h5>클래스 구분</h5>
	<form:radiobutton  path="cl_type" value="1" />정규 클래스 <form:radiobutton  path="cl_type" value="2" />원데이 클래스<br>
	<h5>카테고리</h5>
	<form:radiobutton  path="cl_category" value="1" />정규클래스
	<form:radiobutton  path="cl_category" value="2" />마크라메
	<form:radiobutton  path="cl_category" value="3" />뜨개질/위빙
	<form:radiobutton  path="cl_category" value="4" />가죽공예
	<form:radiobutton  path="cl_category" value="5" />쥬얼리/네온사인
	<form:radiobutton  path="cl_category" value="6" />다양한 취미<br>
	<form:radiobutton  path="cl_category" value="7" />프랑스자수
	<form:radiobutton  path="cl_category" value="8" />수채화/드로잉<br>
	<form:radiobutton  path="cl_category" value="18" />비누/캔들</label>

	<label id="on_d">
	<h5>구분</h5>
	<form:radiobutton  path="cl_type" value="3" />DIY키트 <form:radiobutton  path="cl_type" value="4" />도구<br>
	<h5>카테고리</h5>
	<form:radiobutton  path="cl_category" value="7" />프랑스자수
	<form:radiobutton  path="cl_category" value="8" />수채화/드로잉<br>
	<form:radiobutton  path="cl_category" value="9" />뜨개질
	<form:radiobutton  path="cl_category" value="10" />키즈
	<form:radiobutton  path="cl_category" value="11" />취미 샘플러
	<form:radiobutton  path="cl_category" value="12" />비누/캔들
	<form:radiobutton  path="cl_category" value="13" />다양한 DIY 키트</label>
	
	<label id="on_m">
	<h5>카테고리</h5>
	<form:radiobutton  path="cl_category" value="14" />DIY RECIPE
	<form:radiobutton  path="cl_category" value="15" />TREND
	<form:radiobutton  path="cl_category" value="16" />REVIEW
	<form:radiobutton  path="cl_category" value="17" />h-NEWS
	</label>
	</td></tr>

	<tr>
	<td><label id="hd">강사명</label> 
		<label id="ad1">소제목</label>
	</td>
	<td><form:input path="teacher" id="teacher" style="width:100%;"/></td></tr>
	<tr><td>대표 사진</td><td><input type="file" name="cl_imgUrl"></td></tr>
	<tr>
		<td>
		<label id="hd">클래스/스토어 명</label> 
		<label id="ad2">/제목</label>
		</td>
		<td><form:input path="cl_title" style="width:100%;"/></td>
	</tr>
	<tr>
		<td>
		<label id="hd">클래스 소개</label>
		<label id="ad3">/내용</label>
		</td>
		<td><input type="file" name="cl_infoUrl"></td>
	</tr>
	<tr><td>하비풀스토리</td><td><input type="file" id="story" name="cl_storyUrl"></td></tr>
	<tr><td>가격 </td><td><form:input path="cl_price" id="price" style="text-align:right;"/>원</td></tr>
	<tr><td>내용</td><td><form:textarea path="cl_content" id="content" cols="80" rows="5"></form:textarea></td></tr>
	<tr><td colspan="2" style="text-align:right;"><a href="javascript:document.f.submit()">클래스/상품 등록</a></td></tr>
</table>
</form:form>
</div>
<script type="text/javascript">

	if($("input:radio[id=r1]").is(":checked")==true){
		$("#on_h").hide();
		$("#on_d").hide();
		$("#on_m").hide();
		$("#hd").hide();
		$("#ad1").hide();
		$("#ad2").hide();
		$("#ad3").hide();
		$("#on_h").show();
		$("#hd").show();
	}
	
	$("#r1").click(function(){
		$("#on_h").hide();
		$("#on_d").hide();
		$("#on_m").hide();
		$("#hd").hide();
		$("#ad1").hide();
		$("#ad2").hide();
		$("#ad3").hide();
		$("#on_h").show();
		$("#hd").show();
		$("input[id=story]").attr('disabled',false);
		$("input[id=price]").attr('disabled',false);
	});
	
	$("#r2").click(function(){
		$("#on_d").hide();
		$("#on_h").hide();
		$("#on_m").hide();
		$("#hd").hide();
		$("#ad1").hide();
		$("#ad2").hide();
		$("#ad3").hide();
		$("#on_d").show();
		$("#hd").show();
		$("input[id=story]").attr('disabled',false);
		$("input[id=price]").attr('disabled',false);
	});
	
	$("#r3").click(function(){
		$("#on_d").hide();
		$("#on_h").hide();
		$("#on_m").hide();
		$("#hd").hide();
		$("#ad1").hide();
		$("#ad2").hide();
		$("#ad3").hide();
		$("#hd").hide();
		$("#on_m").show();
		$("#ad1").show();
		$("#ad2").show();
		$("#ad3").show();
		$("input[id=story]").attr('disabled',true);
		$("input[id=price]").attr('disabled',true);
	});
</script>

</body>
</html>