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
	<c:if test="${empty param.userId }">
	아이디를 입력하세요<br>
		<a href="login.jsp">로그인 창</a>
	</c:if>
	
	
	
	if문
	<c:if test="${not empty param.userId }">
		<c:if test="${param.auth=='admin' }">
			<h1>관리자로 로그인 했습니다.</h1>
			<c:out value="${param.userId }"/>님 잘 부탁드립니다.
			<form>
				<input type=button value="회원정보 삭제하기" /> 
				<input type=button value="회원정보 수정하기" />
			</form>
		</c:if>
	
	
	
		<c:if test="${param.auth!='admin' }">
			<h1>
				환영합니다.
				<c:out value="${param.userId }" />
				님
			</h1>
			${test }
		</c:if>
	</c:if>
	
	
	choose문
	<c:choose>
		<c:when test="${param.auth=='admin' }">관리자로 </c:when>
		<c:otherwise>사용자로 </c:otherwise>
	</c:choose>
	로그인하셨습니다.
	
	페이지 이동 choose문
	
	   <c:choose>
       <c:when test="${param.name==1}">
           <c:redirect url="a.jsp">
           	<c:param name="id" value="${param.id}"></c:param>
           </c:redirect>        
       </c:when>
       <c:otherwise>
           <c:redirect url="b.jsp">
           <c:param name="id" value="${param.id}"></c:param>
           </c:redirect>
       </c:otherwise>  
    </c:choose>
${param.id }님 사용자 모드로 로그인 하셨습니다.
${param.id }님 관리자 모드로 로그인 하셨습니다.
	
</body>
</html>