<%@page import="com.ict.test.common.Process"%>
<%@page import="com.ict.test.common.DBCon"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.CarService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Process p = new Process();
String ss = request.getParameter("search");
String op = request.getParameter("op");
List<Map<String,String>> carList = p.getCarList(ss,op);


%>


<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>

<style>

	.table td:hover{
	color:yellow;
	background-color:#9933ff;
	}

</style>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form action="" method="get">
	<select name='op'>
		<option value="name">차종</option>
		<option value="price">가격</option>
		<option value="vendor">회사명</option>
</select>	

검색 : <input type="text" name="search">

<button>검색</button>

</form>
	<table class="table table-border table-hover">
		<thead>
			<tr>
				<th>자동차종류</th>
				<th>가격</th>
				<th>회사명</th>
			</tr>
		</thead>
		
		<tbody>
		<%
		for(Map<String,String> car:carList){
		%>	
			<tr>
				<td><%=car.get("name")%></td>
				<td><%=car.get("price")%></td>
				<td><%=car.get("vendor")%></td>
			</tr>
		
		<%
		}
		%>
		</tbody>
			
	</table>

</div>

</body>
</html>