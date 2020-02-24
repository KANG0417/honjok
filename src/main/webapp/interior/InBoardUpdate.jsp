<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어 게시글 수정</title>
<style>
	#container {
		width: 700px;
		margin: 0 auto;
	}
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: orange; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
</style>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
	<form action="updateInterior.do" method="post">
		<input type="hidden" name="com_seq" value="${inter.com_seq }">
		<table>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title" value="${inter.title }">
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
			${inter.nick_name }
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea name="content">${inter.content }</textarea>
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${inter.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${inter.hit }</td>
		</tr>
		<tr>
			<th>좋아요</th>
			<td>${inter.likes }</td>
		</tr>
		<tr>
			<th>파일이미지</th>
			<td><input type="text" name="file_image" value="${inter.file_image }"></td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="글 수정">
			</td>
		</tr>
	</table>
	</form>
	<c:remove var="com" />
	<p>
		<a href="deleteBoard.do?seq=${board.getSeq() }">글삭제</a>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
	</p>
</div>
<!-- <script>
function update_form(b_no){
  $.ajax({
    url: "./update_form.jsp",
    type: "POST",
    cache: false,
    dataType: "json",
    data: "b_no=" + b_no,
    success: function(data){
      $('#b_no').val(data.b_no);
      $('#b_type').val(data.b_type);  
      $('#b_title').val(data.b_title);          
      $('#b_content').val(data.b_content);
      $('#b_file').val(data.b_file);
      $('#b_user').val(data.b_user);
      
      $('#btn_proc').html('저장'); 
      $('#btn_proc').off('click'); 
      $('#btn_proc').on('click', update_proc);      
    },
    
    error: function (request, status, error){        
        var msg = "ERROR : " + request.status + "<br>"
      msg +=  + "내용 : " + request.responseText + "<br>" + error;
      console.log(msg);              
    }
  });
</script> -->
</body>
</html>