<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kit 등록</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
function check(f){
	self.close();
}
</script>
</head>
<body>
<form:form modelAttribute="kit" action="kit.shop" enctype="multipart/form-data">
<input type="hidden" name="cl_num" value="<%= request.getParameter("cl_num") %>">
    <table border="1" style="width:80%;">
        <tbody>
            <tr>
                <th>키트명</th>
                <th>키트구성</th>
                <th>키트가격</th>
            </tr>
            <tr name="trStaff">
                <td><form:input path="kit_name"/></td>
                <td><form:input path="kit_box"/></td>	
                <td><form:input path="kit_price"/></td>
            </tr>
            <tr><td colspan="3"><input type="submit" value="옵션 등록"></td></tr>
        </tbody>
    </table>
</form:form>
<button name="addStaff">kit 옵션추가</button>
<script>
    //추가 버튼
    $(document).on("click","button[name=addStaff]",function(){
          
        var addStaffText =  '<tr name="trStaff">'+
            '   <td class="col-md-11">'+
            '       <input type="text" name="kit_name" placeholder="키트명"></td>'+
            '   <td>    <input type="text" name="kit_box" placeholder="구성"></td>'+
            '   <td>    <input type="text" name="kit_price" placeholder="가격">'+
            '       <button class="btn btn-default" name="delStaff">삭제</button>'+
            '   </td>'+
            '</tr>';
              
        var trHtml = $( "tr[name=trStaff]:last" ); //last를 사용하여 trStaff라는 명을 가진 마지막 태그 호출
          
        trHtml.after(addStaffText); //마지막 trStaff명 뒤에 붙인다.
          
    });
      
    //삭제 버튼
    $(document).on("click","button[name=delStaff]",function(){
          
        var trHtml = $(this).parent().parent();
          
        trHtml.remove(); //tr 태그 삭제
          
    });
</script>
</body>
</html>