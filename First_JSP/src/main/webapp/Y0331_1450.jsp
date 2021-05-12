<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
1. 라디오버튼으로 성별(m,w)를 준 후 선택하여 m을 선택하면 man, w를 선택하면 woman을 출력해라. (jsp파일 두개로 코드 작성) 

2. 위 1번을 서블릿으로 변경해라. 

3. 1번에서 만든 폼을 가지고 선택한 라디오 버튼에 따라 <jsp:forward>태그를 이용하여 이동할 페이지를 따로 만들어라(action1.jsp)

m을 선택하면 man.jsp로 이동해 “man” , w를 선택하면 woman.jsp로 이동해 “woman”출력
-->
<form action="Hello" method="get" name="fr">
   <input type="radio" name="gender" value="man">M
   <input type="radio" name="gender" value="woman">W
   <br>
   아이디 : <input type="text" name ="id"><br>
   나이 : <input type="text" name ="age"><br>
   <input type="submit" value="제출">
   </form>
   
</body>
</html>