<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>게시글</h2>
<form action = "BoardWriteProc.jsp" method="post">
<table width="600" border = "1" bordercolor="yellow" bgcolor="pink">
	<tr height="40">
		<td align ="center" width="150">작성자</td>
		<td width="450"><input type="text" name="writer" size="10"></td>
	</tr>
	<tr height="40">
		<td align ="center" width="150">제목</td>
		<td width="450"><input type="text" name="subject" size="10"></td>
	</tr>
	<tr height="40">
		<td align ="center" width="150">이메일</td>
		<td width="450"><input type="email" name="email" size="10"></td>
	</tr>
	<tr height="40">
		<td align ="center" width="150">비밀번호</td>
		<td width="450"><input type="password" name="password" size="10"></td>
	</tr>
	
	<tr height="40">
		<td align ="center" width="150">글내용</td>
		<td width="450"><textarea rows="10" cols="60" name="content"></textarea></td>
	</tr>
	
	<tr height="40">
		<td align ="center" colspan="2">
			<input type="submit" value="글쓰기"> &nbsp; &nbsp;
			<input type="reset" value="재작성"> &nbsp; &nbsp;
			<button onclick="location.href="BoardList.jsp">전체 게시글 보기</button>
		</td>
		
	</tr>
</table>
</form>
</center>
</body>
</html>