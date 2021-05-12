<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("de");
	%>
	
	이름 : <%= name %>
	가격 : <%= price %>
	설명 : <%= description%>
	<br>
	<br>
	
	<jsp:useBean id="be" class="bean.Y0329_1500_Item">
	<jsp:setProperty name="be" property="*"/>
	</jsp:useBean>

	이름 : <jsp:getProperty property="name" name="be"/>
	가격 : <jsp:getProperty property="price" name="be"/>
	설명 : <jsp:getProperty property="de" name="be"/>

</body>
</html>