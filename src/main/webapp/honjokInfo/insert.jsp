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
      
         <label>제목:</label>
         번호<input type="text" name="com_seq">
         제목<input type="text" name="title">
         아이디<input type="text" name="id">
         내용<input type="text" name="content">
         작성일<input type="text" name="regdate">
         조회수<input type="text" name="hit">
         좋아요<input type="text" name="likes">
         타입<input type="text" name="type">
            
         <input type="submit">
      </form>

</body>
</html>