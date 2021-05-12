<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="Y0330_1010_forward2.jsp">
      <jsp:param value="사용자이름" name="name"/>
      <jsp:param value="수영" name="swim"/>
   </jsp:forward>
</body>
</html>