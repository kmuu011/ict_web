<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.GradeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
GradeService gs = new GradeService();
List<HashMap<String,String>> st = gs.getStuInfo();

%>
<html>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<table class="table table-border">
		<thead>
			<tr>
				<th>학년</th>
				<th>이름</th>
				<th>나이</th>
			</tr>
		</thead>
		
		<tbody>
		<%
		for(HashMap<String,String> s:st){
		%>
		<tr>
			<td><%=s.get("grade")%>학년</td>
			<td><%=s.get("name")%></td>
			<td><%=s.get("age")%>살</td>
		</tr>
		<%
		}
		%>
		</tbody>
	
	
	
	</table>


</div>

</body>
</html>