<%@page import="java.util.ArrayList"%>
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
	ArrayList<String> familyList = new ArrayList<>();

	String[] nameArr = { "최", "현", "애", "짱" };

	for (int i = 0; i < nameArr.length; i++) {
		familyList.add(nameArr[i]);
	}

	pageContext.setAttribute("Family", familyList);
%>
	<h2>EL Array Test 22222</h2>
	<b>Family List </b>
	<hr width="150" align="left" size="5" color="red">
	1. ${Family[0] }
	<br /> 2. ${Family[1] }
	<br /> 3. ${Family[2] }
	<br /> 4. ${Family[3] }
	<br />
</body>
</html>