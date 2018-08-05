<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.DepartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
DepartService ds = DepartService.getDepartService();
String searchStr = request.getParameter("searchStr");
String types[] = request.getParameterValues("type");
List<HashMap<String,String>> dpInfo = ds.getUL(types,searchStr);
%>

<html>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<br>
	<div class="container">
	<form action="" method="get">
		부서명 <input type="checkbox" name="type" value="DN">
		부서코드 <input type="checkbox" name="type" value="DC">,
		부서인원 <input type="checkbox" name="type" value="DM"><br>
		
		검색 <input type="text" name="searchStr" value="<%=searchStr!=null?searchStr:""%>">
		
		<button>검색</button>
	</form><br>
	<table class="table table-hover">
		<thead>
			<tr>
				<td>부서명</td>
				<td>부서코드</td>
				<td>부서인원</td>
			</tr>
		</thead>
		
		<tbody> 
		<%
		for(int i=0 ; i<dpInfo.size() ; i++){
			HashMap<String,String> dpi = dpInfo.get(i);
		%>
		<tr> 
			<td><%=dpi.get("DN")%></td>
			<td><%=dpi.get("DC")%></td>
			<td><%=dpi.get("DM")%>명</td>
		</tr>
		
		
		<%
		}
		%>
		
		
		</tbody>
	
	
	
	</table>

</div>

</body>
</html>