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
<%
HobbyService hs = new HobbyService();
String name = request.getParameter("name");
String age = request.getParameter("age");
String adr = request.getParameter("adr");
String hob = request.getParameter("hob");
String etc = request.getParameter("etc");
String user = request.getParameter("user");

int result = hs.modify(name, age, adr, hob, etc, user);

%>


<%
if(result == 1){
%>
<h1><%=name%>님 정보 수정이 완료되었습니다.</h1>
<%
} else if(result == -1){
%>
<h1>알 수 없는 이유로 수정이 실패했슴미다. ㅜ</h1>
<%
}
%>

<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가기</a>

</body>
</html>