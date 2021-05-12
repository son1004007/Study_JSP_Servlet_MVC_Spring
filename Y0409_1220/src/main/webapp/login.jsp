<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result3.jsp" method="post">
		아이디 : <input type="text" name="userId"><br>
		비밀번호 : <input type="password" name="userPw"><br>
		
		<input type="radio" name="auth" value="user" checked> 사용자
		<input type="radio" name="auth" value="admin"> 관리자
		<br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력">
	</form>
</body>
</html>