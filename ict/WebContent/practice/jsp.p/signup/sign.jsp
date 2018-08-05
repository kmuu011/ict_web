<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="sign_ok.jsp" onsubmit="check()">

아이디<input type="text" id="id" name="id"><br>
비밀번호<input type="password" id="pwd" name="pwd"><br>
비밀번호확인<input type="password" id="pwdc" name="pwdc"><br>
취미 <br>
피아노<input type="checkbox" name="hob" value="피아노">
여행가기<input type="checkbox" name="hob" value="여행가기">
맛있는거먹기<input type="checkbox" name="hob" value="맛있는거먹기">
영화보기<input type="checkbox" name="hob" value="영화보기">


<br><button>가입</button>



</form>




<script>

function check(){
	
	
}

</script>

</body>
</html>