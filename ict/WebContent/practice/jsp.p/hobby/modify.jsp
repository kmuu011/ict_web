<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
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
String ch = request.getParameter("user");
List<Map<String,String>> user = hs.getList(ch);


%>

<div class="container">
<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가긩</a>
	<form action='modify_ok.jsp' method='get' onsubmit='return modify()'>
		<table border="1">
			<thead>
				<tr>
					<th colspan='2'> 
						<select name='user'>
							<option value='<%=ch%>'><%=ch%>님</option>
						</select>
					정보 수정</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td><label for='name'>이름</label></td>
					<td><input type='text' id='name' name='name' value=<%=user.get(0).get("name")%>></td>
				</tr>
				
				<tr>
					<td><label for='age'>나이</label></td>
					<td><input type='number' id='age' name='age' value=<%=user.get(0).get("age")%>></td>
				</tr>
				
				<tr>
					<td><label for='adr'>주소</label></td>
					<td><input type='text' id='adr' name='adr' value=<%=user.get(0).get("adr")%>></td>
				</tr>
				
				<tr>
					<td><label for='hob'>취미</label></td>
					<td><input type='text' id='hob' name='hob' value=<%=user.get(0).get("hob")%>></td>
				</tr>
				
				<tr>
					<td><label for='etc'>기타</label></td>
					<td><input type='text' id='etc' name='etc' value=<%=user.get(0).get("etc")%>></td>
				</tr>
				
				<tr>
					<td colspan='2'><button>수정하기</button></td>
				</tr>
			</tbody>
			
		</table>
	
	</form>

</div>

<script>
function modify(){
	var nameO = document.querySelector("#name");
	var ageO = document.querySelector("#age");
	var adrO = document.querySelector("#adr");
	
	if(nameO.value.trim().length < 2){
		alert("이름은 두글자 이상으로만 수정 가능합니다.");
		nameO.value="";
		nameO.focus();
		return false;
		
	}
	
	if(ageO.value < 5){
		alert("5세 이하는 다메데스요");
		ageO.value="";
		ageO.focus();
		return false;
	}
	
	if(ageO.value > 130){
		alert("130이상은 이제 그만 천국으로 가주세요");
		ageO.value="";
		ageO.focus();
		return false;
	}
	
	if(adrO.value.trim().length < 1){
		alert("주소를 입력해주세요.");
		adrO.value="";
		adrO.focus();
		return false;
		
	}
	
	return true;
	
	
}

</script>

</body>
</html>