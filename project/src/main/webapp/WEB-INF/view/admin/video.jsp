<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>video::등록</title>
<link rel="stylesheet" href="${path}/css/admin.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../ajax.js"></script>

<script type="text/javascript">
function loadkit(f){
	var params= "cl_num=" + f.cl_num.value
	sendRequest("../videoajax.jsp",params,list,"POST");
}

 function list(){
		console.log(ajax.readyState + "," + ajax.status);
	if(ajax.readyState == 4){
		if(ajax.status == 200){
			console.log(ajax.responseText);
			result.innerHTML = ajax.responseText;
		}else{
			alert("서버오류:" + ajax.status)
		}
	}
}

</script>
<style>
table{
 	border-radius: 10px;
 	border-color:#FFBC42;
}
.kv{
	background-color: #fcbe32;
	color:#FFFFFF;
}

.kv2{
	background-color: #FFFFFF;
	color:#404146;
}

.kv3{
	background-color: #FFFFFF;
	color:#404146;
}

</style>
</head>
<body>
	<form:form modelAttribute="video" action="video.shop" enctype="multipart/form-data" name="f">
	<input type="hidden" id="cl_num" name="cl_num" value="<%=request.getParameter("cl_num")%>">
	<table style="width: 100%; text-align: center;">
				<!-- <tbody> -->
					<tr class="kv">
						<th>비디오 제목</th>
						<th>영상</th>
					</tr>
					<tr name="trStaff" class="kv2">
						<td><form:input path="v_title" id="v_title" /><font color="red"><form:errors paht="v_title" /></font></td>
						<td><input type="file" name="v_fileUrl" id="v_fileUrl"><font color="red"><form:errors paht="v_fileUrl" /></font></td>
					</tr>
					<tr class="kv3">
						<td colspan="3"><input type="submit" value="영상 등록">
						<input type="button" onclick="javascript:loadkit(f)" value="영상 목록 확인"></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<br>
		<div id="result"></div>
</body>
</html>