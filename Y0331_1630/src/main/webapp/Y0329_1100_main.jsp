<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action="Y0329_1130_ResponseProc.jsp" method="post">
	<table width="400" border="1">
		<tr height="50">
		<td align="center" width="150">아이디</td>
		<td width="250"><input type="text" name="id"></td>
		</tr>
		<tr height="50">
		<td align="center" width="150">패스워드</td>
		<td width="250"><input type="password" name="pass"></td>
		</tr>
		<tr height="50">
		<td align="centcenter" colspan="2">
		<input type="submit" values="로그인">&nbsp;&nbsp;
		<input type="reset" values="취소">
		</td>
		</tr>
		</table>
	</form>		
	</center>
</body>
</html>