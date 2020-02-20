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
	<form action="/updateInterior.do" method="post">
		<input type="hidden" name="seq" value="${interiorvo.com_seq }">
	<table>
	</table>
	</form>
	<p>
		<a href="deleteBoard.do?seq=${board.getSeq() }">글삭제</a>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
	</p>
</div>
<script>
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
</script>
</body>
</html>