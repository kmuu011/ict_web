<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.hobby.HobbyService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% HobbyService hs = new HobbyService();
List<Map<String,String>> list = hs.getList();



%>
<div class='container'>
<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가긩</a>
	<form action="delete_ok.jsp" method="get">
	
		<select name="user">
		<%
			for(Map<String,String> ul : list){
		%>
			<option value="<%=ul.get("name")%>"><%=ul.get("name")%></option>
		<%
			}
		%>
		</select>
		<button>삭제하기</button>
	</form>
</div>

</body>
</html>