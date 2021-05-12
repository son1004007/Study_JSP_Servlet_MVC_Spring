<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="Y0405_1950_par.js"></script>
</head>
<body>
<form action="Y0405_1750_par" method="post" name="p">
<table>
	<tr>
	<td>아이디 : </td>
	<td><input type="text" name="id"></td>
	</tr>
	<tr>
	<td>나이 : </td>
	<td><input type="text" name="age"></td>
	</tr>
	<tr>
</table>
<input type="submit" value="확인" onclick="return check()">
<button onclick="location.href='Y0405_2000_parArray.jsp'">회원 전체</button>
</form>
</body>
</html>