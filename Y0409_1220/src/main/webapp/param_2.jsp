<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
수 1 : ${param.num1}<br/>
수 2 : ${param.num2}<br/>
합 계 : ${param.num1+param.num2}<br/><br/>

수 1 : ${param['num1']}<br/>
수 2 : ${param["num2"]}<br/>
합 계 : ${param['num1+num2']}<br/>
합 계 : ${param["num1+num2"]}<br/><br/>
<% 
	String str1=request.getParameter("num1");
	String str2=request.getParameter("num2");
	int num1=Integer.parseInt(str1);
	int num2=Integer.parseInt(str2);
	
	out.println(num1);
	out.println(num2);
%>
<%=num1+num2 %>


</body>
</html>
