<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String name = "기석"; %>
${"name :"} 
<%=name %>
<% out.println("안녕"); %>

${10 }
${3.14 }
${true }
${null }

<% session.setAttribute("name", "기석"); %>
<% 
	int sum=0;
	for(int i=1;i<=10;i++){	
		sum+=i;
	}
	request.setAttribute("sum", sum);
%>
<jsp:forward page="Y0409_1250.jsp"></jsp:forward>

</body>
</html>