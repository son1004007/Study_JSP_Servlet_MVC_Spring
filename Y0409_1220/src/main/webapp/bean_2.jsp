<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="bean" class="bean.ELBean"/>
<jsp:setProperty name="bean" property="*"/>
 
<h2> EL Bean Test </h2>
 
액션 빈즈 태그 <br/>
 
id : <jsp:getProperty property="id" name="bean"/><br/>
password : <jsp:getProperty property="passwd" name="bean"/><br/>
siteBean : <jsp:getProperty property="siteName" name="bean"/><br/>
 
<br><br>
 
EL Bean <br/>
 
id : ${bean.id}<br/>
password : ${bean.passwd}<br/>
siteBean : ${bean.siteName}<br/>
 
 
</body>
</html>