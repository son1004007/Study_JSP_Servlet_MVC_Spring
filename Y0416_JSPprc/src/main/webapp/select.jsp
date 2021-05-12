<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

<form action="cc.jsp" method="post">

   <jsp:useBean id="test" class="bean.Test" scope="session"/>
   
   <select name="sel">
      <c:forEach var="item" items="${test.getAry()}" begin="0" end="2" step="1">
         <option>${item }</option>   
      </c:forEach>
   </select>
   
   <input type="submit" value="sel">
</form>

</body>
</html>