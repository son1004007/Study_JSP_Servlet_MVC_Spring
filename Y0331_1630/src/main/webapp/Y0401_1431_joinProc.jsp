<%@page import="bean.Y0402_1030_MemberDAO"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<!-- useBean을 이용해서 한꺼번에 데이터 받기 -->
	<jsp:useBean id="mbean" class="bean.Y0401_1430_memberJoin_bean">
		<jsp:setProperty name="mbean" property="*"></jsp:setProperty>
	</jsp:useBean>
	
	<% 

	request.setCharacterEncoding("UTF-8");
	String[] hobby = request.getParameterValues("hobby");
	String str = "";
	for(int i=0 ; i < hobby.length ; i++){
		str += hobby[i] + " ";
	}

	
	mbean.setHobby(str);
	
	
	
	/*
	String id ="sys as sysdba";
	String pw ="oracle";
	String url ="jdbc:oracle:thin:@localhost:1521/xe";
	
	try{
		// 해당 데이터 베이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스 접속
		Connection con = DriverManager.getConnection(url,id,pw);
		
		// 쿼리 준비
		String sql = "insert into Mem values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// ? 에 맞는 데이터 연결
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		
		pstmt.executeQuery();
		con.close();
		
	} catch (Exception e){
		e.printStackTrace();
		System.out.println("로딩 실패");
	}
	*/
	

	// 위 코드를 대신할 insertMember 함수 호출
	
	Y0402_1030_MemberDAO mdao = new Y0402_1030_MemberDAO();
	mdao.insertMember(mbean);
	
	// 회원가입이 되었다면, 회원정보를 보여주는 페이지로 이동시키고 싶다.
	response.sendRedirect("Y0402_1200_MemberArray.jsp");
	
	%>
	오라클에 완료됨.
</body>
</html>