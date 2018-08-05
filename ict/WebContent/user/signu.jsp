<%@page import="com.ict.test.signupdb.Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<%
Service s = new Service();
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

s.signup(name,id,pwd);


%>
    
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="" method="get" >
	<div class="container">
		<table border="1">
			<thead>
				<tr>
					<th colspan="2">회원가입</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비번</td>
					<td><input type="text" name="pwd"></td>
				</tr>
				<tr>
					<td><button>가입하긩</button></td>
				</tr>
				
			
			</tbody>

		
		</table>
	
	
	</div>

</form>

</body>
</html>