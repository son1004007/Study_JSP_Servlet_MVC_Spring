<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] studyArr = { "수선화", "백합", "들국화", "패랭이꽃" };

	pageContext.setAttribute("study", studyArr);
%>

	<h2>EL Array test</h2>
	<b> 아름다운 꽃 이름 </b>
	<hr width="150" align="left" color="red" size="5">
	1. ${study[0] }
	<br /> 2. ${study[1] }
	<br /> 3. ${study[2] }
	<br /> 4. ${study[3] }
	<br />
</body>
</html>