<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<!-- 디자인 호출 -->
<link href="style.css" rel="stylesheet" type="text/css"> 

<!-- 유효성 검사 -->
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
    function idCheck(id) { 		// id 중복 확인 호출 
        frm = document.regFrm; 
        if (id == "") {			// id 값이 없으면 경고
            alert("아이디를 입력해 주세요.");
            frm.id.focus();
            return;
        }
        url = "idCheck.jsp?id=" + id;	// id 값이 있으면 idCheck.jsp로 이동
        window.open(url, "IDCheck", "width=300,height=150");
    }
 
    function zipCheck() // 우편번호 검색 호출
    { // zipSearch.jsp로 이동
        url = "zipSearch.jsp?check=n";
        window.open(url, "ZipCodeSearch", "width=500,height=300,scrollbars=yes");
    }
</script>
</head>
<body onLoad="regFrm.id.focus()">
    <!-- 페이지 로딩 및 새로고침이 발생되면 포커스가 ID입력란으로 위치합니다. -->
    <div align="center">
        <br /> <br />
        <form name="regFrm" method="post" action="memberProc.jsp">
            <!--memberProc.jsp파일에 regfrm이라는 폼으로 post방식으로 값을 전달한다. -->
            <table align="center" border="0" cellspacing="0" cellpadding="5">
                <!-- cellspacing는 테이블의 외곽과 셸의 경계면의 두께를 설정, cellpadding는 셸과 내용의 사이를 지정하는 태그 -->
 
 
                <tr>
                    <td align="center" valign="middle" bgcolor="yellow">
                        <table border="1" cellspacing="0" cellpadding="2" align="center" width="600">
                            <tr align="center">
                                <td colspan="3">회원 가입</td>
                            </tr>
 
 
                            <tr>
                                <td width="20%">아이디</td>
                                <td width="50%"><input name="id" size="15"> 
                                <input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)"></td>
                                <!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
                            </tr>
 
                            <tr>
                                <td>패스워드</td>
                                <td><input type="password" name="pwd" size="20"></td>
                            </tr>
 
                            <tr>
                                <td>패스워드 확인</td>
                                <td><input type="password" name="repwd" size="20"></td>
                            </tr>
 
                            <tr>
                                <td>이름</td>
                                <td><input name="name" size="15"></td>
                            </tr>
 
                            <tr>
                                <td>성별</td>
                                <td>
	                                남<input type="radio" name="gender" value="1" checked="checked"> 
	                                여<input type="radio" name="gebder" value="2">
								</td>
                            </tr>
 
                            <tr>
                                <td>생년월일</td>
                                <td><input name="birthday" size="10"> ex)yymmdd</td>
                            </tr>
 
                            <tr>
                                <td>Email</td>
                                <td><input name="email" size="30"></td>
                            </tr>
 
                            <tr>
                                <td>우편번호</td>
                                <td>
                                	<input name="zipcode" size="5" readonly> 
                                	<input type="button" value="우편번호찾기" onClick="zipCheck()"> 
                                	<!-- zipCheck()함수를 사용해 우편번호와 주소를 검색한다. -->
                                </td>
                            </tr>
 
                            <tr>
                                <td>주소</td>
                                <td><input name="address" size="45"></td>
                            </tr>
 
                            <tr>
                                <td>취미</td>
                                <td>인터넷<input type="checkbox" name="hobby" value="인터넷">
                                    여행<input type="checkbox" name="hobby" value="여행"> 
                                    게임<input type="checkbox" name="hobby" value="게임"> 
                                    영화<input type="checkbox" name="hobby" value="영화"> 
                                    운동<input type="checkbox" name="hobby" value="운동">
                                </td>
                            </tr>
 
 
                            <tr>
                                <td>직업</td>
                                <td><select name=job>
                                        <option value="0" selected>선택하세요.
                                        <option value="회사원">회사원
                                        <option value="학생">학생
                                        <option value="주부">주부
                                        <option value="무직">무직
                                        <option value="기타">기타
                                </select></td>
                            </tr>
 
                            <tr>
                                <td colspan="3" align="center">
                                <input type="button" value="회원가입" onclick="inputCheck()"> &nbsp; &nbsp; 
								<input type="reset" value="다시쓰기"> &nbsp; &nbsp; 
								<input type="button" value="로그인" onClick="javascript:location.href='login.jsp'">
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