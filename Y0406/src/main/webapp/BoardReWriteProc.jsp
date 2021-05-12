<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="bean.BoardDAO"%>
<%@page import="javax.print.attribute.ResolutionSyntax"%>
<%@page import="bean.BoardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% 
    request.setCharacterEncoding("EUC-KR");
%>
    <!-- 데이터 한번에 받아오는 빈클래스를 사용하도록 함-->
    <jsp:useBean id="Boardbean" class="bean.BoardBean">
        <jsp:setProperty name="Boardbean" property="*" />
    </jsp:useBean>
 
    <% 
    //데이터베이스 객체 생성
    BoardDAO bdao = new BoardDAO();
    bdao.reWriteBoard(Boardbean);
    
    //답변 데이터를 모두 저장후 전체 게시글 보기를 설정
    response.sendRedirect("BoardList.jsp");
%>
</body>
</html>