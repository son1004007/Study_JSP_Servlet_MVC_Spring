<%@page import="bean.Y0405_2000_parDAO"%>
<%@page import="java.util.Vector" %>
<%@page import="bean.Y0405_2000_par_bean" %>

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
Y0405_2000_parDAO pdao = new Y0405_2000_parDAO();
Vector<Y0405_2000_par_bean> vec = pdao.allSelectMember();
%>
	<ceter>
	<table width="400" border="1">
		<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="250" align="center">나이</td>
		</tr>
		<%
		for(int i=0; i<vec.size(); i++){
			Y0405_2000_par_bean pbean = vec.get(i);
		%>
		<tr height="50">
			<td width="150" align="center"><%=pbean.getId() %></td>
			<td width="250" align="center"><%=pbean.getAge() %></td>
		</tr>
		
		<%
		}
		%>
	</table>
</body>
</html>