<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="javaBean_job" class="bean.Y0401_0931_javaBean_job">
<jsp:setProperty property="*" name="javaBean_job" />
</jsp:useBean>

<%= javaBean_job.getJob() %>
<%= javaBean_job.getMail() %>
</body>
</html>