<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Y0325_1211_join2.jsp" method="post">
<!--<form action="Y0325_1211_join2.jsp" method="get"> -->
		<table width="500" border="1">
			<tr height ="50">
				<td width="150" align="center">아이디</td>
				<td width="350" align="center">
					<input type="text" name ="id" size="50" placeholder ="id 넣어라">
				</td>
			</tr>
			<tr height ="50">
				<td width="150" align="center">패스워드</td>
				<td width="350" align="center">
					<input type="password" name ="pw1" size="50" placeholder ="pw 넣어라">
				</td>
			</tr>
			<tr height ="50">
				<td width="150" align="center">패스워드 확인</td>
				<td width="350" align="center">
					<input type="password" name ="pw2" size="50">
				</td>
			</tr>
			
			<tr height="50">
				<td width="150" colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="취소">
				</td>
			</tr>	
			
		</table>
	</form>

</body>
</html>