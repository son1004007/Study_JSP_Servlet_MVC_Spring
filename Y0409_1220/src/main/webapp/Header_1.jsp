<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> EL header Test</h2>
호스트명 : <b> ${header.host }</b><p/>
호스트명2 : <b> ${header["host"] }</b><p/>
사용 브라우저 : <b> ${header["user-agent"] }</b><p/>
사용 언어 : <b> ${header["accept-language"] }</b>
</body>
</html>