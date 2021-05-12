<%@page import="bean.Y0405_2000_parDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="pbean" class="bean.Y0405_2000_par_bean">
		<jsp:setProperty name="pbean" property="*"></jsp:setProperty>
	</jsp:useBean>
	
	<%
	request.setCharacterEncoding("UTF-8");
	Y0405_2000_parDAO pdao = new Y0405_2000_parDAO();
	pdao.insertPar(pbean);
	response.sendRedirect("Y0405_2000_parArray.jsp");
	 %>
</body>
</html>