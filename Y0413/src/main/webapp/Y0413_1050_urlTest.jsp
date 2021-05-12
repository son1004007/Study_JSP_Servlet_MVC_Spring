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
<c:url var="url1" value="https://wwwgoogle.com">
	<c:param name="id" value="jsp"/>
</c:url>
<a href='${url1}'>구글 페이지 </a>

<c:set var="age" value="30" scope="page"></c:set>
age : <c:out value="${age }">20</c:out>
<br>

<c:catch var="err">
 전<br>
 <%=1/0 %>
 후<br>
 </c:catch>
 
 <c:out value="${err }"></c:out>


</body>
</html>