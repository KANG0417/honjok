<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글상세보기</title>
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
<script>
/* function fn_update(){
    
    
    form.action = "<c:url value='board/updateInterior.do'/>";
    form.submit();
} */
	function fn_delete() {
		var frmDel = document.frm;
		/* //비밀번호 일치여부 확인
		if (frmDel.pwd.value == "${bvo.pwd}") {
			//비밀번호 일치하는 경우  */
			var isDelete = confirm("정말 삭제 할까요?");
			if (isDelete) {
/*				frmDel.submit(); 
				location.href="deleteArticle.do?com_seq="+seq; */
				document.getElementById('deleteform').submit();
 
			} else {
				history.back();
			}
/* 		} else {
			//비밀번호 불일치
			alert("비밀번호가 일치하지 않습니다.");
			frmDel.pwd.value = "";
			frmDel.pwd.focus();
			return;
		} */
}
</script>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
		<input type="hidden" name="com_seq" id="com_seq" value="${interiorvo.com_seq }">
	<table>
		<tr>
			<th>제목</th>
			<td>
				${interiorSelect.title }
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${interiorSelect.nick_name }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				${interiorSelect.content }
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${interiorSelect.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${interiorSelect.hit }</td>
		</tr>
		<tr>
			<th>좋아요</th>
			<td>${interiorSelect.likes }</td>
		</tr>
		<tr>
			<th>파일이미지</th>
			<td>${interiorSelect.file_image }</td>
		</tr>
		<tr>
			<th>망할</th>
			<td>${interiorSelect.com_seq }</td>
		</tr>
	</table>
			  <form class="update" action="InBoardUpdate.jsp">
			   <c:set value="${interiorSelect }" var="inter" scope="session"></c:set>
			   <input type="submit" value="수정">
				</form>
	<p>
		<form action="deleteArticle.do?com_seq=${interiorSelect.com_seq }" id="deleteform">
			<input type="button" onclick="fn_delete()" value="글 삭제">
			<input type="hidden" name="com_seq" id="com_seq" value="${interiorSelect.com_seq }">
		</form>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
	</p>
</div>

</body>
</html>