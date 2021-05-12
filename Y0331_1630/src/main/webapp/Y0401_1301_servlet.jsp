<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<script type="text/javascript" src="p.js"></script>
</head>

<body>
	<center>

		<form action="Y0401_1301_servlet" method="post">
			<h2>회원 가입</h2>

			<form action="BB" method="get">

				<table width="500" border="1">

					<tr height="50">

						<td width="150" align="center">아이디</td>

						<td width="350" align="center"><input type="text" name="id"
							size="40" placeholder="id넣으세요"></td>

					</tr>

					<tr height="50">

						<td width="150" align="center">패스워드</td>

						<td width="350" align="center"><input type="password"
							name="pass1" size="40" placeholder="비밀번호는 영문자만 넣어주세요"></td>

					</tr>

					<tr height="50">

						<td align="center" colspan="2"><input type="submit"
							value="회원가입" onclick="return check()"></td>

					</tr>



				</table>

			</form>
	</center>
</body>

</html>
