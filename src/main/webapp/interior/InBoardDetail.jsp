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
function fn_update(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/updateboard.do'/>";
    form.submit();
}
</script>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
	<%-- <form action="InBoardUpdate.jsp" method="post">
		<input type="hidden" name="seq" value="${interiorvo.com_seq }"> --%>
	<table>
		<tr>
			<th>제목</th>
			<td>
				${interiorSelect.title }
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${interiorSelect.nickname }</td>
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
			<td colspan="2" class="center">
				<input type="button" value="글 수정" onclick="fn_update()">
			</td>
		</tr>
	</table>
<%-- 	</form>
 	</c:forEach>
 --%>	<p>
		<a href="deleteBoard.do?seq=${board.getSeq() }">글삭제</a>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
	</p>
</div>

</body>
</html>