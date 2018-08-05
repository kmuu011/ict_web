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

String user = request.getParameter("user");

int result = hs.delete(user);

if(result == 1){
%>
<h1><%=user%>님의 삭제가 완료되었습니다.</h1>
<%
}else if(result == -1){
%>
<h1>알 수 없는 이유로 삭제에 실패하였습니다.</h1>

<%
}
%>


<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가기</a>


</body>
</html>