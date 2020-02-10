<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kit::등록</title>
<link rel="stylesheet" href="${path}/css/admin.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../ajax.js"></script>
<script type="text/javascript">
function loadkit(f){
	var params= "cl_num=" + f.cl_num.value
	sendRequest("../kitajax.jsp",params,list,"POST");
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
	<form:form modelAttribute="kit" action="kit.shop" enctype="multipart/form-data" name="f">
	<input type="hidden" id="cl_num" name="cl_num" value="<%=request.getParameter("cl_num")%>">
	<table style="width: 100%; height:40%; text-align: center;">
				<!-- <tbody> -->
					<tr class="kv">
						<th>키트명</th>
						<th>키트구성</th>
						<th>키트가격</th>
					</tr>
					<tr name="trStaff" class="kv2">
						<td><form:input path="kit_name" id="kit_name" /><font color="red"><form:errors paht="kit_name" /></font></td>
						<td><form:input path="kit_box" id="kit_box" /><font color="red"><form:errors paht="kit_box" /></font>
						<input type="file" name="kit_imgUrl" id="kit_imgUrl"><font color="red"><form:errors paht="kit_imgUrl" /></font></td>
						<td><form:input path="kit_price" id="kit_price" /><font color="red"><form:errors paht="kit_price" /></font></td>
					</tr>
					<tr class="kv3">
						<td colspan="3"><input type="submit" value="옵션 등록">
						<input type="button" onclick="javascript:loadkit(f)" value="옵션 확인"></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<br>
		<div id="result"></div>
<!-- 	
	<script>
    //추가 버튼
     $(document).on("click","button[name=addStaff]",function(){
          
        var addStaffText =  '<tr name="trStaff">'+
            '   <td class="col-md-11">'+
            '       <input type="text" name="kit_name" id="kit_name" ></td>'+
            '   <td>    <input type="text" name="kit_box" id="kit_box" ><input type="file" name="kit_imgUrl" id="kit_imgUrl"></td>'+
            '   <td>    <input type="text" name="kit_price" id="kit_price">'+
            '       <button class="btn btn-default" name="delStaff">삭제</button>'+
            '   </td>'+
            '</tr>';
              
        var trHtml = $( "tr[name=trStaff]:last" ); //last를 사용하여 trStaff라는 명을 가진 마지막 태그 호출   
        trHtml.after(addStaffText); //마지막 trStaff명 뒤에 붙인다.
        var kit_name = $('#kit_name').text();
        var kit_box = $('#kit_box').text();
        var kit_imgUrl = $('#kit_imgUrl').text();
        var kit_price = $('#kit_price').text();
    });

    //삭제 버튼
    $(document).on("click","button[name=delStaff]",function(){  
        var trHtml = $(this).parent().parent();  
        trHtml.remove(); //tr 태그 삭제
          
    }); 

</script>
 -->
</body>
</html>