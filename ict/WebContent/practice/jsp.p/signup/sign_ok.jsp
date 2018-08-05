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
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String[] hbs = request.getParameterValues("hob");

out.println("아이디 : " + id);
out.println("<br>비번 : " + pwd);

out.println("<br>취미 : ");
for(String h:hbs){
	out.println(h+ " ");
}



%>

</body>
</html>