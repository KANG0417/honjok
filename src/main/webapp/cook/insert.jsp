<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>글쓰는 페이지</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>

 </head>
<body>





<div id="container">
	<h1>글등록</h1>

	<form action="InsertCook.do" method="post">

	<select name="category">
	<option value="3분요리">3분 요리</option>
	<option value="5분요리">5분 요리</option>
	<option value="10분 이상">10분 이상</option>
	</select>
	
	<table>
		<tr>
			<th width="70">제목</th>
			<td>
				<input type="text" name="title" size="30">
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="nickname" >
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea id="summernote" name="content" rows="10" cols="40"></textarea>
			</td>					
		</tr>
		<tr>
			<th>파일이미지</th>
			<td>
				<input type="file" name="image">
			</td>					
		</tr>
		<tr>
			<th>조리시간</th>
			<td>
				<input type="text" name="cooktime">
			</td>					
		</tr>
		
		
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="새글 등록">
			</td>
		</tr>
	</table>
	</form>
	<p><a href="CookAll.do">글 목록 가기</a></p>
</div>

 <script>
$(document).ready(function() {
  $('#summernote').summernote();
});
</script>



</body>
</html>