<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="LoginCheck.jsp" method="post">
	<label for="userId">계정 : </label>
	<input type="text" name="id" id="userId"><br>	
	
	<label for="userPw">비번 : </label>
	<input type="text" name="pw" id="userPw"><br>
	
	<input type="submit" value="로그인">
</form>

</body>
</html>