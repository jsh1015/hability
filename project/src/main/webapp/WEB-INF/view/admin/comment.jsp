<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물::관리</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 function page(t){
		$.ajax({
			type : "POST",
			url : "${path}/admin/comment.shop",
			data : {
				"cm_type":t
			},
			success : function(data) {
				location.href="${path}/admin/comment.shop?cm_type="+t;
			}
		})
	}
</script>
</head>
<body>
<div class="w3-main" style="margin-left:20px;margin-right:35px">
  <div class="w3-container" style="margin-top:50px">
    <h1 class="w3-large">댓글/후기 목록</h1>
  </div>
  <div class="bmenu">
  <c:set var="re" value="1"/><c:set var="co" value="2"/><c:set var="w" value="3"/>
  <table style="margin-left:auto; margin-right:auto; padding:10px;">
  <tr>
  <td class="type"><a href="comment.shop">전체</a></td>
  <td class="type"><a href="javascript:page(${re})">후기</a></td>
  <td class="type"><a href="javascript:page(${co})">댓글</a></td>
  <td class="type"><a href="javascript:page(${w})">신고</a></td>
  </table>
  </div>
  <div class="list">
  	<table class="t">
  	<tr class="col"><th>구분</th><th>사용자</th><th>클래스명</th><th>내용</th><th>날짜</th><th>삭제</th></tr>
  	<c:forEach var="c" items="${clist}">
  		<tr class="col2">
  		<td><c:set var="t" value="${c.cm_type}"/>
  			<c:choose>
  			<c:when test="${t eq 1}"> <!-- 1 = 취미클래스 -->
  				후기
  			</c:when>
  			<c:when test="${t eq 2}">  <!-- 2 = DIY스토어 -->
  				댓글
  			</c:when>
  			</c:choose>
  		</td><td>${c.emailid}</td><td>${c.cl_title}</td><td>${c.cm_content}</td>
  		<td><fmt:formatDate value="${c.cm_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td><td><a href="cmdelete.shop?cm_num=${c.cm_num}">삭제</a></td>
  		</tr>
  	</c:forEach>	
  	</table>
  </div>
</div>
</body>
</html>