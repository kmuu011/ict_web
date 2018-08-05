<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.PcService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
PcService ps = PcService.getPS();
String search = request.getParameter("search");
String op = request.getParameter("op");

List<HashMap<String,String>> pcl = ps.getPC(search,op);

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

<div class="container">

<form>
<select name='op'>
	<option value="CPU">CPU</option>
	<option value="RAM">RAM</option>
	<option value="GPU">GPU</option>
</select>
<input type="text" name="search">
<button>검색</button>
</form>

	<table class="table table-border table-hover">
		<thead>
			<tr>
				<td>CPU</td>
				<td>RAM</td>
				<td>GPU</td>
			</tr>
		</thead>
		
		<tbody>
		<%
		for(int i=0 ; i<pcl.size() ; i++){
			HashMap<String,String> pi = pcl.get(i);
		%>
		<tr>
			<td><%=pi.get("CPU")%></td>
			<td><%=pi.get("RAM")%></td>
			<td><%=pi.get("GPU")%></td>
		</tr>
		<%
		}
		%>		
		
		</tbody>
		
	
	
	</table>

</div>


</body>
</html>