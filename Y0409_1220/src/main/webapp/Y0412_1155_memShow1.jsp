<%@page import="bean.Memberbean" %>
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
<c:set var="name" value="jungmin"></c:set>
${name }<br>
<c:set var="age">30</c:set>
${age }

<c:set var="add" value="${10+10 }"></c:set>
${add }
<c:set var="b" value="${10>5 }"></c:set>
${b }
<c:set var="member" value="<%=new bean.Memberbean() %>">
<c:set target="${member }" property="name" value="taesoo"/>
<c:set target="${member }" property="id">ts</c:set>
</c:set>
${member }<!-- 객체 출력(객체를 문자열로 변경(toString) 메소드 사용 -->
</body>
</html>