<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="bean.Y0402_1030_MemberDAO"%>
<%@page import="bean.Y0401_1430_memberJoin_bean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- memberArray에서 넘긴 id를 받아줌 -->
	<%
	String id = request.getParameter("id");

	Y0402_1030_MemberDAO mdao = new Y0402_1030_MemberDAO();
	Y0401_1430_memberJoin_bean mbean = mdao.oneMember(id);

	// 해당하는 id의 정보를 리턴 받을 것이다.
	%>
	<center>
		<h3>회원 정보 수정</h3>
	</center>
	<table width="400" border="1">
	<form action="Y0405_1215_UpdateProc.jsp" method="post">
		<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="250"><%=mbean.getId()%></td>
		</tr>
		<tr height="50">
			<td width="150" align="center">이메일</td>
			<td width="250"><%=mbean.getEmail()%></td>
		</tr>
		<tr height="50">
			<td width="150" align="center">전화번호</td>
			<td width="250"><%=mbean.getTel()%></td>
		</tr>
		<tr height="50">
			<td width="150" align="center">비밀번호</td>
			<td width="250"><input type="password" name="pass1"></td>
		</tr>
				
		<tr height="50">
			<td width="500" align="center">
			<input type="hidden" name="id" value="<%=mbean.getId() %>">
			
			<input type="submit" value="회원 수정">
			<button onclick="location.href='Y0402_1200_MemberArray.jsp'">회원 전체</button>
	</td>
		</tr>
		
		</form>
	</table>
</body>
</html>