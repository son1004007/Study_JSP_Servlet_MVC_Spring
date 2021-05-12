<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bean.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="boardbean" class="bean.BoardBean">
	<jsp:setProperty name ="boardbean" property="*"/>
</jsp:useBean>
<%
	BoardDAO bdao = new BoardDAO();
	bdao.insertBoard(boardbean);
%>
</body>
</html>