<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
   <h2> 파일 업로드 </h2>
   <form action= "Y0413_1700_FileUpload.jsp" method="post" enctype="multipart/form-data">
      <table width = "350" border="1" bordercolor="gray">
         <tr height="40">
            <td width="150">이름</td>
            <td width="200"><input type="text" name="name"></td>
         </tr>
   
         <tr height="40"> 
            <td width="150">파일 선택</td>
            <td width="200"><input type="file" name="filedate"></td>
         </tr>
   
         <tr height="40">
            <td align="center" colspan="2"><input type="submit" value="파일 업로드"></td>
         </tr>   
   
      </table>
   </form>
   </center>
</body>
</html>