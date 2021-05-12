<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String id=(String)session.getAttribute("id1");
%>
<!DOCTYPE html>
<html>
<body>
	<%
 if(id!=""){
%>
	<%=id %>
	<a href="Y0331_1632_logout.jsp">로그아웃</a>
	<%
}
%>
	<center>
		<h2>회원 가입</h2>
		<form action="Y0331_1630_Member" method="get">
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
						value="회원가입"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>