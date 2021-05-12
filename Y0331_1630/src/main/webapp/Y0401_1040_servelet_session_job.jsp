<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String job=(String)session.getAttribute("job");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Y0401_1040_servlet_session_job" method="get">
	<table>
	<tr>
	<td>직업: </td><td><input name="job"></td>
	</tr>
	<tr>
	<td>메일: </td><td><input name="mail"></td>
	</tr>
	</table>
	<input type="submit" value="전송">
	</form>
	
	<!-- 이유는 모르지만 안됨.. -->
</body>
</html>