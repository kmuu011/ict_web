<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<a href="/practice/jsp.p/hobby/list.jsp">메인으로 가긩</a>
	<form action="signup_ok.jsp" method="get" onsubmit="return signup()">
		<table border="1">
			<thead>
				<tr>
					<th colspan="2">정보 입력</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td><label for="name">이름</label></td>
					<td><input type="text" id="name" name="name" required></td>
				</tr>
				
				<tr>
					<td><label for="age">나이</label></td>
					<td><input type="number" id="age" name="age" required></td>
				</tr>
				<tr>
					<td><label for="adr">주소</label></td>
					<td><input type="text" id="adr" name="adr" required></td>
				</tr>
				<tr>
					<td><label for="hob">취미</label></td>
					<td><input type="text" id="hob" name="hob"></td>
				</tr>
				<tr>
					<td><label for="etc">기타</label></td>
					<td><input type="text" id="etc" name="etc"></td>
				</tr>
				<tr>
					<td colspan="2"><button>입력</button></td>
				</tr>
				
				
			</tbody>
			
		
		
		</table>

	</form>

</div>

<script>
function signup(){
	var nameO = document.querySelector("#name");
	var ageO = document.querySelector("#age");
	var adrO = document.querySelector("#adr");
	
	if(nameO.value.trim().length < 2){
		alert("이름은 두글자 이상만 가능합니다.");
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