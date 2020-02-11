<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>������Ȳ::</title>
<style>
	canvas { /* �׸��� �׷����� �κ� */
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	
	#container{
		float: left;
	}
</style>
<script type="text/javascript"
	src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"> </script>
</head>
<sql:setDataSource var="conn1" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://192.168.0.107:3306/hability" user="scott"
	password="1234" />
<sql:query var="rs1" dataSource="${conn1}">
	SELECT c.cl_title class ,c.cl_price*COUNT(o.od_num) sale FROM class c, orderlist o WHERE c.cl_num=o.cl_num GROUP BY(c.cl_num)
</sql:query>
<sql:setDataSource var="conn2" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://192.168.0.107:3306/hability" user="scott"
	password="1234" />
<sql:query var="rs2" dataSource="${conn2}">
	SELECT c.cl_date,c.cl_price*COUNT(o.od_num)*0.2 total FROM class c, orderlist o WHERE c.cl_num=o.cl_num GROUP BY(c.cl_date)
</sql:query>
<body>
	<div id="container" style="width: 25%; ">
		<h4>�ð��� ����</h4>
		<canvas id="canvas1" width="200" height="250"></canvas>
	</div>
	<div id="container" style="width: 25%;">
		<h4>Ŭ������ ����</h4>
		<canvas id="canvas2" width="200" height="250"></canvas>
	</div>
	<script type="text/javascript">
				var randomColorFactor = function(){
					return Math.round(Math.random()* 255); //0~255����
				}
								
				var randomColor = function(opacity){
					return "rgba(" + randomColorFactor() + "," + randomColorFactor() + "," + randomColorFactor() + ","
									+ (opacity || '.3') + ")";};
									
				var config1 = {
						type:'bar',
						data :  {
							datasets : [{
								data: [<c:forEach items="${rs1.rows}" var="b"> "${b.sale}",</c:forEach>], /* ȭ�鿡 ����ؾ��ϴ� ������*/
								backgroundColor:[<c:forEach items="${rs1.rows}" var="m"> randomColor(1),</c:forEach>],}],/*randomColor(1) ����, ������ ����*/
								labels:[<c:forEach items="${rs1.rows}" var="b"> "${b.cl_title}",</c:forEach>] /* label �÷� , db������ �̸�?*/
							},
						options:{reponsive:true}
							};
				
				var config2 = {
						type:'bar',
						data :  {
							datasets : [{
								data: [<c:forEach items="${rs2.rows}" var="m"> "${m.total}",</c:forEach>], /* ȭ�鿡 ����ؾ��ϴ� ������*/
								backgroundColor:[<c:forEach items="${rs2.rows}" var="m"> randomColor(1),</c:forEach>],}],/*randomColor(1) ����, ������ ����*/
								labels:[<c:forEach items="${rs2.rows}" var="m"> "${m.cl_date}",</c:forEach>] /* label �÷� , db������ �̸�?*/
							},
						options:{reponsive:true}
							};
					
						window.onload=function(){
							var ctx2 = document.getElementById("canvas2").getContext("2d");
							new Chart(ctx2,config1);
							var ctx1 = document.getElementById("canvas1").getContext("2d");
							new Chart(ctx1,config2);			
						}
				</script>
</body>
</html>
