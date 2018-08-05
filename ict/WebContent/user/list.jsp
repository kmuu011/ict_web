<%@page import="com.ict.test.UserService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
UserService us = UserService.getUS();
String schs = request.getParameter("sch");
List<HashMap<String,String>> userList = us.getUserList(schs);
%>    
    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>

<style>
	thead>tr>th{
		text-align:center;
	}
	
	tbody td{
		text-align:center;
	}
</style>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<form action="" method="get">
검색 <input type="text" name="sch">
<button>귀찮네</button>
</form>
	<table class="table table-hover">
		<thead>
 			<tr>
 				<th>이름</th>
 				<th>나이</th>
 				<th>아이디</th>
 				<th>주소</th>
 			</tr>
 		</thead>
 		
 		<tbody>
 		
 		<%
 		for(int i=0 ; i<userList.size() ; i++){
 			HashMap<String,String> user = userList.get(i);
 		%>
 			<tr>
 				<td><a href="#"><%=user.get("name")%></a></td>
 				<td><%=user.get("age")%></td>
 				<td><%=user.get("id")%></td>
 				<td><%=user.get("address")%></td>
 			</tr>
 		<%
 		}
 		%>
 		
 		</tbody>
 				
 				
	
	
	</table>


</div>

</body>
</html>