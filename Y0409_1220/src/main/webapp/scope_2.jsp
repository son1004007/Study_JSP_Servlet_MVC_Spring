<%
    pageContext.setAttribute("msg", "아름다운 꽃 푸르른 하늘");
%>

 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> EL의 Scope </h2>
 
msg(pageScope로 받은 값 : ) : <b> ${pageScope.msg}</b> 

<p/>
 
1에서 10까지의 합(request로 받은 값) : <b><%=request.getAttribute("sum") %></b>
<p/>
 
1에서 10까지의 합(requestScope로 받은 값) :<b>${requestScope.sum}</b>
<p/>
</body>
</html>