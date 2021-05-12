<%@page import="model.BoardDAO"%>
<%@page import="model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <!-- 빈파일에서 게시글 작성한 데이터를 한번에 읽어들임 -->
    <!-- use빈을 사용하여 자바빈을 사용, id는 빈클래스를 지칭하는 참조 변수명 -->
    <!-- 빈파일에 있는 값들을 받는다. -->
    <!-- 빈파일에 없는 값들은 null로 들어온다 null값으로 들어온 것들은 데이터베이스에서 들어올 값들이니 걱정x -->
 
    <jsp:useBean id="boardbean" class="model.BoardBean">
        <jsp:setProperty name="boardbean" property="*" />
    </jsp:useBean>
 
    <%
    //데이터베이스 쪽으로 빈클래스를 넘겨줌
    BoardDAO bdao = new BoardDAO();
    
    //데이터 저장 메소드를 호출
    bdao.insertBoard(boardbean);
    
    //게시글 저장후 전체 게시글 보기
    response.sendRedirect("BoardList.jsp");
 
%>
</body>
</html>