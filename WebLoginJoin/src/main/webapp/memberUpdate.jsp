<%@page import="bean.MemberBean"%>
<jsp:useBean id="mgr" class="bean.MemberMgr" />
<%
String id = (String) session.getAttribute("idKey");
MemberBean bean = mgr.getMember(id);
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function zipCheck() {
		url = "zipSearch.jsp?search=n";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body onLoad="regFrm.id.focus()">
	<div align="center">
		<br /> <br />
		<form name="regFrm" method="post" action="memberUpdateProc.jsp">
			<table align="center" cellpadding="5">
				<tr>
					<td align="center" valign="middle">
						<table border="1" cellpadding="2" align="center" width="600">
							<tr align="center" bgcolor="#996600">
								<td colspan="3"><font color="#FFFFFF"><b>회원 수정</b></font></td>
							</tr>
							<tr>
								<td width="20%">아이디</td>
								<td width="80%"><input name="id" size="15"
									value="<%=bean.getId()%>" readonly></td>

							</tr>
							<tr>
								<td>패스워드</td>
								<td><input type="password" name="pwd" size="15"
									value="<%=bean.getPwd()%>"></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input name="name" size="15"
									value="<%=bean.getName()%>"></td>
							</tr>
							<tr>
								<td>성별</td>
								<td>
								남<input type="radio" name="gender" value="1" <%=bean.getGender().equals("1") ? "checked" : ""%>>
								여<input type="radio" name="gender" value="2" <%=bean.getGender().equals("2") ? "checked" : ""%>>
								</td>
							</tr>
							<tr>
								<td>생년월일</td>
								<td><input name="birthday" size="6"
									value="<%=bean.getBirthday()%>">ex)920814</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input name="email" size="30"
									value="<%=bean.getEmail()%>"></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input name="zipcode" size="5" value="" readonly>
									<input type="button" value="우편번호찾기" onClick="zipCheck()"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input name="address" size="45"
									value="<%=bean.getAddress()%>"></td>
							</tr>
							<tr>
								<td>취미</td>
								<td>
									<%
									String lists[] = { "인터넷", "여행", "게임", "영화", "운동" };
									String hobby[] = bean.getHobby(); //10101
									for (int i = 0; i < lists.length; i++) {
										out.print(lists[i]);
									%> <input type="checkbox" name="hobby" value="<%=lists[i]%>"
									<%=hobby[i].equals("1") ? "checked" : ""%>></input> <%
 }
 %>
								</td>
							</tr>
							<tr>
								<td>직업</td>
								<td><select name=job>
										<option value="0">선택하세요.
                                        <option value="회사원">회사원
                                        <option value="학생">학생
                                        <option value="주부">주부
                                        <option value="무직">무직
                                        <option value="기타">기타
								</select> <script>document.regFrm.job.value="<%=bean.getJob()%>"</script>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								<input type="submit" value="수정완료"> &nbsp; &nbsp; 
								<input type="reset" value="다시쓰기">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>