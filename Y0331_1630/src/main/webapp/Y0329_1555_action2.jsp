<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String authenti;
	String authori = request.getParameter("authorization");
	if(authori.equals("user")){
		if(id.equals("son") && pw.equals("qwer123")){
			
	%>
	<jsp:forward page="Y0329_1556_action3.jsp">
		<jsp:param name="id" value="son"/>
		<jsp:param name="authenti" value="환영합니다."/>
		<jsp:param name="color" value="red"/>
	</jsp:forward>
	
	<%
		} else {
			%>
			<script type="text/javascript">
				alert("잘못된 입력");
				history.go(-1);
			</script>
			<%

		}
	} else {
		if(id.equals("admin") && pw.equals("qwer123")){
		
	%>
		<jsp:forward page="Y0329_1557_action4.jsp">
			<jsp:param name="id" value="admin"/>
			<jsp:param name="authenti" value="환영합니다."/>
			<jsp:param name="color" value="yellow"/>
		</jsp:forward>
	<%
		} else {
			%>
			<script type="text/javascript">
				alert("잘못된 입력");
				history.go(-1);
			</script>
			
			<%
		}
	}
%>
	
</body>
</html>