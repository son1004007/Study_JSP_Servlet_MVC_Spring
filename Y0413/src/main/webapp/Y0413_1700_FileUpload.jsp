<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	//프로젝트내에 만들어질 폴더를 저장할 이름 변수 선언
	String fol = "";
	//실제로 만들 폴더명 설정
	String save = "/upload";
	//한글 설정
	String encType = "UTF-8";

	int size = 10 * 1024 * 1024;

	//파일이 저장될 경로 값을 읽어와라.
	ServletContext con = getServletContext();
	fol = con.getRealPath(save);
	System.out.println(fol);

	try {
		//클라이언트로부터 넘어온 데이터를 저장

		MultipartRequest multi = new MultipartRequest(request, fol, size, encType, new DefaultFileRenamePolicy());
	%>

	<%=multi.getParameter("name")%>

	<%
	out.println(fol);
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>


	%>
</body>
</html>