<%@page import="com.ict.test.hobby.HobbyService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
HobbyService hs = new HobbyService();
String name = request.getParameter("name");
String age = request.getParameter("age");
String adr = request.getParameter("adr");
String hob = request.getParameter("hob");
String etc = request.getParameter("etc");

int result = hs.signup(name, age, adr, hob, etc);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(result == 1){
%>
<h1><%=name%>님의 정보입력이 완료되었습니다.</h1>

<%
} else if (result ==-1){
%>

<h1>정보 입력이 실패했슴</h1>


<%
}
%>

<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가기</a>
</body>
</html>