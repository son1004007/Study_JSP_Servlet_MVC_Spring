<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <center>
        <h2>�Խñ� ����</h2>
 
        <form action="BoardWriteProc.jsp" method="post">
            <table width="600" border="1" bordercolor="white" bgcolor="yellow">
                <!-- bordercolor�� ������ ���� -->
                <tr height="40">
                    <td align="center" width="150">�ۼ���</td>
                    <!-- ref�� �����ͺ��̽����� ó���ϱ� ������ ���� ���� �ʴ´�. -->
                    <td width="450"><input type="text" name="writer" size="60"></td>
                </tr>
 
                <tr height="40">
                    <td align="center" width="150">����</td>
                    <td width="450"><input type="text" name="subject" size="60"></td>
                </tr>
 
                <tr height="40">
                    <td align="center" width="150">�̸���</td>
                    <td width="450"><input type="text" name="email" size="60"></td>
                </tr>
 
                <tr height="40">
                    <td align="center" width="150">��й�ȣ</td>
                    <td width="450"><input type="password" name="password"
                        size="61"></td>
                </tr>
 
                <tr height="40">
                    <td align="center" width="150">�۳���</td>
                    <td width="450"><textarea rows="10" cols="50" name="content"></textarea></td>
                </tr>
 
                <tr height="40">
                    <td align="center" colspan="2"><input type="submit"
                        value="�۾���"> &nbsp;&nbsp; <input type="reset" value="�ٽ��ۼ�">
                        &nbsp;&nbsp;
                        <button onclick="location.href='BoardList.jsp'">��ü �Խñ� ����</button>
                        <!-- Ŭ���ϸ� BoardList.jsp�������� �Ѿ�� ��ư--></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>