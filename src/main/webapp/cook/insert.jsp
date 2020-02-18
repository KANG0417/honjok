<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>글쓰는 페이지</title>
</head>
<body>

<div id="container">
	<h1>글등록</h1>

	<form action="InsertCook.do" method="post">

	<select name="category">
	<option value="간단요리">간단요리</option>
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
				<textarea name="content" rows="10" cols="40"></textarea>
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





</script>

</body>
</html>