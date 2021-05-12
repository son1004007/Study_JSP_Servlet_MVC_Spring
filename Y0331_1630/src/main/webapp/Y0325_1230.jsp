<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Y0325_1231_join3.jsp">
	<table width="500" border="1">
		<tr height="50">
			<td width="150" align="center">이름</td>
			<td width="350" align="center">
			<input type="text" name="name" size="50" placeholder="이름 입력">
			</td>
		</tr>
		<tr height ="50">
			<td width="150" align="center">성별</td>
			<td width="350" align="center">
				<input type="radio" name="gender" value="female">여자&nbsp;
				<input type="radio" name="gender" value="male">남자&nbsp;
			</td>
		</tr>
		<tr height ="50">
			<td width="150" align="center">좋아하는 것</td>
			<td width="350" align="center">
				<input type="checkbox" name="like" value="빨강">빨강&nbsp;
				<input type="checkbox" name="like" value="노랑">노랑&nbsp;
				<input type="checkbox" name="like" value="파랑">파랑&nbsp;
				<input type="checkbox" name="like" value="주황">주황&nbsp;
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