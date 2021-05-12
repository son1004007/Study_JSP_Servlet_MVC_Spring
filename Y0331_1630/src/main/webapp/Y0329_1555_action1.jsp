<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action1</title>
</head>
<body>
<div>

1.   다음 화면을 보고 웹 페이지 작성해라.<br>
action1.jsp   Html5구조 만든다.<br>
action2.jsp   이전 페이지에서 선택한 라디오버튼에 따라 forward태그를 이용해 이동할 페이지를 달리한다.<br>
action3.jsp   사용자를 누르면 배경색이 red로 출력<br>
action4.jsp   관리자를 누르면 배경색이 yellow로 출력<br>
</div>
<hr>
<br>

	<form action="Y0329_1555_action2.jsp" method="post">
	<div>
		아이디 : <input name="id" type="text">
		<br>
		암 호 : <input name="pw" type="password">
		<br>
		<input type="radio" name ="authorization" value="user">사용자
		<input type="radio" name ="authorization" value="admin">관리자
		<br>
		<input type="submit" value="로그인">
	</div>
	
	</form>
</body>
</html>