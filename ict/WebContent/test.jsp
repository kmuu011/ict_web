<%@page import="com.ict.test.t.Test"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
Test t = new Test();
String s = request.getParameter("search");

System.out.println(s);


%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form>

<input type="text" name="search">
<button>검색</button>

</form>

<script>

</script>

</body>
</html>