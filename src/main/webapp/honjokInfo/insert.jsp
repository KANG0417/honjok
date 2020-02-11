<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼족정보 게시판</title>
</head>
<body>

   <h1>혼족정보게시판</h1>
      <form action="insert.do" method="POST">
      
       
         제목<input type="text" name="title"><br>
         아이디<input type="text" name="id"><br>
         내용<input type="text" name="content"><br>            
         <input type="submit">
      </form>

</body>
</html>