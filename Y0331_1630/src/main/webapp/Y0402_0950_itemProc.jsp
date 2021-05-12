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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- useBean을 이용해서 한꺼번에 데이터 받기 -->
	<jsp:useBean id="ibean" class="bean.Y0402_0950_itemBean">
		<jsp:setProperty name="ibean" property="*"></jsp:setProperty>
	</jsp:useBean>
	
	<%
	String id ="sys as sysdba";
	String pw ="oracle";
	String url ="jdbc:oracle:thin:@localhost:1521/xe";
	
	try{
		// 해당 데이터 베이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스 접속
		Connection con = DriverManager.getConnection(url,id,pw);
		
		// 쿼리 준비
		String sql = "insert into item values(?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// ? 에 맞는 데이터 연결
		pstmt.setString(1, ibean.getName());
		pstmt.setString(2, ibean.getPrice());
		pstmt.setString(3, ibean.getDesc());
		pstmt.executeQuery();
		con.close();
		
	} catch (Exception e){
		e.printStackTrace();
		System.out.println("로딩 실패");
	}
	%>
	DB 입력 완료
</body>
</html>