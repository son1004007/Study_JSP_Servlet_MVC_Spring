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
	String str1[]={"jsp","java","spring"};
	String str2="java, jsp; spring, adroid";
%>

<!-- var, value -->
<c:set var="ary" value="<%=str1 %>"/>
<c:forEach var="i" items="${ary }" begin="0" step="1" end="2">
${i }
</c:forEach>
<br>

<c:set var="ary" value="<%=str2 %>"/>
<c:forEach var="i" items="${ary }" begin="0" step="1" end="2">
${i }
</c:forEach>
<br>

<c:set var="ary2" value="<%=str2 %>"/>
<c:forTokens var="m" items="${ary2 }" delims=", ;">
${m }
</c:forTokens>
</body>
</html>