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

	<c:forEach var="item" items="${paramValues.name }">
		${item }
	<c:if test="${st.first }">, </c:if>
	</c:forEach>
	<br>

	<c:forEach var="j" items="${paramValues.name }" varStatus="st">
		<c:set var="n" value="<%=new bean.Memberbean()%>"></c:set>
		<c:set property="name" target="${n }"
			value="${paramValues.name[st.index] }"></c:set>
		<c:set property="id" target="${n }" value="${st.count }"></c:set>
		${n }<br>
	</c:forEach>

	<c:forEach var="num" begin="0" end="2" varStatus="st">
 	${paramValues.name[num]}
 	</c:forEach>
</body>
</html>