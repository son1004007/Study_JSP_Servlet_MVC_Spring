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

<%
    int sum=0;
 
    for(int i=1; i<=10; i++){
        sum+=i;
    }
    
    request.setAttribute("sum", new Integer(sum));
%>
 
<jsp:forward page="scope_2.jsp"/>
</body>
</html>