<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

    <h2> 회원 가입 </h2>

    <form action="Y0329_1230_MemberJoinProc.jsp" method="post">

    <table width="500" border="1">

    <tr height="50">

        <td width="150" align="center"> 아이디 </td>

        <td widht="350" align="center"><input type="text" name="id" size="40" placeholder="id넣으세요"></td>

    </tr>

    <tr height="50">

        <td width="150" align="center"> 패스워드 </td>

        <td widht="350" align="center"><input type="password" name="pass" size="40" placeholder="비밀번호는 영문자만 넣어주세요"></td>

    </tr>

    <tr height="50">

        <td width="150" align="center"> 이메일 </td>

        <td widht="350" align="center"><input type="email" name="email" size="40"></td>

    </tr>   

    <tr height="50">

        <td width="150" align="center"> 전화번호 </td>

        <td widht="350" align="center"><input type="tel" name="tel" size="40"></td>

    </tr>

    <tr height="50">

        <td width="150" align="center"> 주소 </td>

        <td widht="350" align="center"><input type="text" name="address" size="40"></td>

    </tr>

    <tr height="50">

        <td align="center" colspan="2">

        <input type="submit" value="회원가입"></td>

    </tr>

    </table>

    </form>

    </center>
    
    - 자바빈에서 변수 줄때   
  태그의 name값과 일치해야함

- useBean의 id값과 set,getProperty 의 name값이 일치해야함

- getProperty의 property값과 자바빈의 변수명과 일치해야함
</body>
</html>