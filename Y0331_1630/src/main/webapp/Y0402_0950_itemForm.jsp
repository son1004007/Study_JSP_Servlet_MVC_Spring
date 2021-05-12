<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 1. form을 만든다 
2. java bean을 만든다. 
3. database를 이용해 table을 만든다.
4. database와 java bean을 연결해주는 프로시저(jsp)를 만든다
5. db 연결 코드를 만든다.-->

	<center>
		<h2>상품 등록</h2>
		<form action="Y0402_0950_itemProc.jsp" method="post">
			<table width="500" border="1">

				<tr height="50">

					<td width="150" align="center">상품이름</td>

					<td widht="350" align="center"><input type="text" name="name"
						size="40"></td>
				<tr height="50">

					<td width="150" align="center">가격</td>

					<td widht="350" align="center"><input type="text" name="price"
						size="40"></td>
				<tr height="50">

					<td width="150" align="center">상품설명</td>

					<td width="350" align="center"><textarea rows="5" cols="40"
							name="desc"></textarea></td>
				</tr>
				
				<tr height="50">

					<td align="center" colspan="2"><input type="submit"
						value="등록"> <input type="reset" value="취소"></td>

				</tr>
			</table>
		</form>
	</center>
</body>
</html>