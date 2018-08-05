<%@page import="com.ict.test.signupdb.Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Service s = new Service();
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

s.signup(name, id, pwd);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%=name%>님 가입이 완료되었습니다.</h1>
<h2><%=id%>아이디로 로그인 가능합니다.</h2>

<a href="/practice/jsp.p/sign_db/user-list.jsp">메인으로 가기</a>


</body>
</html>