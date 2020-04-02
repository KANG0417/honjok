<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%
    	request.setCharacterEncoding("UTF-8");
    %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A 글쓰기</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
		
		$(function(){
			$("#btnFileAdd").click(function () {
				$("#fileList").append(
						'<div class="col-xs-12">'+
						'<input  type="file" name="uploadFiles" value="" multiple="multiple"style="display: inline">'+
						'<button type="button" class="btn btn-danger btn-delete-file">X</button>'+
						'</div>');
			});
			
			$("#fileList").on("click",".btn-delete-file",function(){
				$(this).parent().remove();	
				});
	
		
		});	
		
		function fn_save() {
			
			var frm = document.qnaForm;
			
			if(!validate()){
				return;
			}
			
			frm.submit();
			
		}
		function validate() {
			
			var frm = document.qnaForm;
			
			if(frm.qna_title.value == ""){
				alert("제목은 필수입력입니다.");
				return false;
			}
			if(frm.qna_content.value == ""){
				alert("내용은 필수입력입니다.");
				return false;
			}
			
			return true;
		}
		
	
</script>

<body>
<form name="qnaForm" action="qnaInsert" method="post" enctype="multipart/form-data" >
	<input type="hidden" size="50" name="qn_type" value="BBS">
	<table class="table table-bordered">
		
		<tr>
			<td width="10%">제목</td>
			<td><input class="form-control" type="text" size="50" name="qna_title" value=""></td>
		</tr>
		
		<tr>
			<td width="10%">첨부파일</td>
			<td>
			<p>
			<button type="button" class="btn btn-primary" id="btnFileAdd">추가</button>
			</p>
			
			<div id="fileList">
				<div class="col-xs-12">
				<input  type="file" name="uploadFiles" value="" multiple="multiple" style="display: inline">
				<button type="button" class="btn btn-danger btn-delete-file">X</button>
				</div>
			</div>
			</td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td colspan="2"><textarea  class="form-control" rows="10" cols="50" name="qna_content"></textarea></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등록" class="btn btn-default" onclick="fn_save()">
				<input type="reset" value="취소" class="btn btn-default">
				<input type="button" value="목록" class="btn btn-default" onclick="location.href='qnaList'">
			</td>
		</tr>
		
	</table>


</form>



</body>
</html>