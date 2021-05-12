
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
	String[] movie = { "클래식", "소울", "너의 이름은" };
	pageContext.setAttribute("mo", movie);
	%>

	<c:forEach var="m" items="${mo }">
${m }
</c:forEach>

	<table border="1" style="text-align: center; width: 100%;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>title</th>

		</tr>

		<c:forEach var="m" items="${mo }" varStatus="st">
			<tr>
				<td>${st.index }</td>
				<td>${st.count }</td>
				<td>${m}</td>
		</c:forEach>
	</table>
	<ul>
		<c:forEach var="movie" items="${mo }" varStatus="st">
			<c:choose>
				<c:when test="${st.first }">
					<li style="color: red">${movie }</li>
				</c:when>
				<c:otherwise>
					<li>${movie }</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>

	<c:forEach var="movie" items="${mo }" varStatus="st">
	${movie }
	<c:if test="${not status.last }">, </c:if>
	</c:forEach>
	<c:forEach var="cnt" begin="1" end="10" step="2">
	${cnt }
	</c:forEach>

	<!-- 교재 -->
	<%
	String str1[] = { "simba", "rorod", "tina", "poli" };
	String str2 = "JAVA, JSP; Spring, Android";
	%>
	<h2>Core Tags3</h2>
	<c:set var="arr" value="<%=str1%>" />
	<c:forEach var="i" items="${arr}" begin="0" step="1" end="3">
	${i}<br />
	</c:forEach>
	<hr align="left" width="220" />
	<c:set var="s" value="<%=str2%>" />
	<c:forTokens var="st" items="${s}" delims=", ;">
		<b>${st}&nbsp;</b>
	</c:forTokens>
</body>
</html>