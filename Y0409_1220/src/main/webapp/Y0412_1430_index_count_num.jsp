
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	int[] arrayInt ={1,2,3,4};
	pageContext.setAttribute("num",arrayInt);
	
%>
	<table border="1" style="text-align: center; width: 100%;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>num</th>

		</tr>

		<c:forEach var="m" items="${num }" varStatus="n">
			<tr>
				<td>${m+6 }</td>
				<td>${m}</td>
				<td>${m+6 }</td>
			</tr>
		</c:forEach>
		
		<c:forEach var="n" begin="7" end="10" varStatus="st">
			<tr>
				<td>${st.index }</td>
				<td>${st.count }</td>
				<td>${n }</td>
			</tr>
		</c:forEach>
	</table>

// 구구단 2단
	<c:forEach var="gu1" begin="1" end="9" step="1">
	 2 * ${gu1 }= ${2*gu1 } 또는	 
	 <c:out value="${2*gu1 }"/> <br>
	</c:forEach>

</body>
</html>