<%@page import="bean.Y0402_1030_MemberDAO"%>
<%@page import="java.util.Vector" %>
<%@page import="bean.Y0401_1430_memberJoin_bean" %>
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
	
	// 회원들의 정보가 얼마나 저장되어 있는지 모른다.
	// 가변길이인 vector를 이용해서 데이터를 저장하겠다.
	
	// 모든 회원 정보 호출
	Y0402_1030_MemberDAO mdao = new Y0402_1030_MemberDAO();
	
	Vector<Y0401_1430_memberJoin_bean> vec = mdao.allSelectMember();
	
	
	%>
	
	<ceter>
	<table width="800" border="1">
		<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="250" align="center">이메일</td>
			<td width="200" align="center">전화번호</td>
			<td width="200" align="center">취미</td>
		</tr>
		<%
		for(int i=0; i<vec.size(); i++){
			Y0401_1430_memberJoin_bean mbean = vec.get(i);
		%>
		<tr height="50">
			<td width="150" align="center"><a href ="Y0402_1440_MemberIn.jsp?id=<%=mbean.getId() %>">
				<%=mbean.getId() %></a></td>
			<td width="250" align="center"><%=mbean.getEmail() %></td>
			<td width="200" align="center"><%=mbean.getTel() %></td>
			<td width="200" align="center"><%=mbean.getHobby() %></td>
		</tr>
		
		<%
		}
		%>
		
		
	</table>
</body>
</html>