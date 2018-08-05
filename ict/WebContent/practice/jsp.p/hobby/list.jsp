<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.hobby.HobbyService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<a href="/practice/jsp.p/hobby/signup.jsp">정보입력</a>
<a href="/practice/jsp.p/hobby/modicho.jsp">정보수정</a>
<a href="/practice/jsp.p/hobby/delcho.jsp" style= color:red;>정보삭제</a>
 

	<form action="" method="get">
		<select name="op">
			<option value="uname">이름</option>
			<option value="uage">나이</option>
			<option value="uadr">주소</option>
			<option value="uhobby">취미</option>
			<option value="uetc">기타</option>
		</select>
		<input type="text" name="sch">
		<button>검색</button>
	</form>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>취미</th>
				<th>기타</th>
			</tr>
		</thead>
		
		<tbody>
		<%HobbyService hs = new HobbyService();
			String op = request.getParameter("op");
			String search = request.getParameter("sch");
			List<Map<String,String>> uList = hs.getList(op, search);
			
			for(Map<String,String> ul : uList){
		%>
		<tr>
			<td><%=ul.get("name")%></td>
			<td><%=ul.get("age")%></td>
			<td><%=ul.get("adr")%></td>
			<td><%=ul.get("hob")%></td>
			<td><%=ul.get("etc")%></td>
		</tr>
		
		<%
		}
		%>
		
		</tbody>
	</table>

</div>



</body>
</html>