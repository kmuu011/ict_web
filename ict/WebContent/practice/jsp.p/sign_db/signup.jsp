<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="signup_ok.jsp" method="get"  onsubmit='return signup()'>
	<div class="container">
	<a href="/practice/jsp.p/sign_db/user-list.jsp">메인으로 가기</a>
		<table border="1">
			<thead>
				<tr>
					<th colspan="2">회원가입</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="name" required></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" id="id" required></td>
				</tr>
				<tr>
					<td>비번</td>
					<td><input type="text" name="pwd" id='pwd' required></td>
				</tr>
				<tr>
					<td><button>가입하긩</button></td>
				</tr>
			</tbody>
		</table>
	</div>

</form>

<script>
function signup(){
	
	var nameO = document.querySelector("#name");
	var idO = document.querySelector("#id");
	var pwdO = document.querySelector("#pwd");
	
	if(nameO.value.trim().length < 2){
		alert("이름은 2글자 이상이여야 합니다.");
		
		nameO.value="";
		nameO.focus();
		return false;
	}
	
	if(idO.value.trim().length < 4){
		alert("아이디는 5글자 이상으로 해주세요.");
		
		idO.value="";
		idO.focus();
		return false;
	}
	
	if(pwdO.value.trim().length < 6){
		alert("비밀번호는 6글자 이상으로 해주세요.");
		
		pwdO.value="";
		pwdO.focus();
		return false;
	}
	return true;	
}


</script>

</body>
</html>