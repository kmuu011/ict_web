<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.CarService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
private static String id = "ictu";
private static String pwd = "root";
private static String driver = "oracle.jdbc.driver.OracleDriver";


public List<Map<String,String>> getCarList() {
		List<Map<String,String>> carList = new ArrayList<Map<String,String>>();
		Connection con = null;
	
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pwd);
		System.out.println("접속 완료");
		String sql = "select carNo, carName, carPrice, carVendor from car";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		Map<String,String> car;
		
		while(rs.next()) {
			car = new HashMap<String,String>();
			car.put("name", rs.getString("carName"));
			car.put("price", rs.getString("carPrice"));
			car.put("vendor", rs.getString("carVendor"));
			carList.add(car);
		}
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		if (con != null){
			try{
			con.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}
		con=null;
	}
	
	return carList;

}
%>

    
    
<%
	CarService cs = new CarService();
	List<HashMap<String,String>> c = cs.getCarList();
%>
    
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>

<style>

	.table td:hover{
	color:yellow;
	background-color:#9933ff;
	}

</style>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table table-border table-hover">
		<thead>
			<tr>
				<th>자동차종류</th>
				<th>가격</th>
				<th>회사명</th>
			</tr>
		</thead>
		
		<tbody>
		<%
		List<Map<String,String>> carList = getCarList();
		for(Map<String,String> car:carList){
		%>	
			<tr>
				<td><%=car.get("name")%></td>
				<td><%=car.get("price")%></td>
				<td><%=car.get("vendor")%></td>
			</tr>
		
		<%
		}
		%>
		</tbody>
			
	</table>

</div>

</body>
</html>