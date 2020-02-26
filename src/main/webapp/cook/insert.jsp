<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<!--   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<!--   <script src="https://cdn.ckeditor.com/4.13.1/standard-all/ckeditor.js"></script> -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<title>글쓰는 페이지</title>
<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: 'content',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
	});
</script>

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
				<input type="text" name="nick_name" >
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
<!-- 				<textarea id="editor1" name="content" rows="10" cols="40"></textarea> -->
				<h2 style="text-align: center;">글 작성</h2><br><br><br>
<!-- 				썸머노트 -->
				<div style="width: 60%; margin: auto;">
					<form method="post" action="/write">
						<input type="text" name="writer" style="width: 20%;" placeholder="작성자"/><br>
						<input type="text" name="title" style="width: 40%;" placeholder="제목"/>
						<br><br> 
						<textarea id="summernote" name="content"></textarea>
						<input id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(this.form)"/>
					</form>
				</div>
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

 CKEDITOR.replace('editor1', {
     extraPlugins: 'image2,uploadimage',


     // Configure your file manager integration. This example uses CKFinder 3 for PHP.
     filebrowserBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html',
     filebrowserImageBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html?type=Images',
     filebrowserUploadUrl: '/fileupload.do',
     filebrowserImageUploadUrl: 'fileupload.do',

     // Upload dropped or pasted images to the CKFinder connector (note that the response type is set to JSON).
     uploadUrl: 'fileupload.do',

     // Reduce the list of block elements listed in the Format drop-down to the most commonly used.
     format_tags: 'p;h1;h2;h3;pre',
     // Simplify the Image and Link dialog windows. The "Advanced" tab is not needed in most cases.
     removeDialogTabs: 'image:advanced;link:advanced',

     height: 450
   });
 </script>



</body>
</html>