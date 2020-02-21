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
	th { background-color: skyblue; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
</style>
<script>
	function fn_delete(){
		var 
	}
</script>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
		<input type="hidden" name="com_seq" value="${cookDetail.com_seq }">
	<table>
		<tr>
			<th>제목</th>
			<td>
				${cookDetail.title }
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${cookDetail.nick_name }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				${cookDetail.content }
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${cookDetail.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${cookDetail.hit }</td>
		</tr>
		<tr>
			<th>좋아요</th>
			<td>${cookDetail.likes }</td>
		</tr>
		<tr>
			<th>파일이미지</th>
			<td>${cookDetail.image }</td>
		</tr>
		
		
	</table>
	<p>
		 <a href="insert.jsp">글등록</a>
		<a href="${contextPage.request.contextPath}/app/cook/CookAll.do">글목록</a>
		<form class="update" action="update.jsp">
		   <c:set value="${cookDetail}" var="ckvo" scope="session"></c:set>
		   <input type="submit" value="수정">
		</form>
		
		<form action="delete.do">
		   <input type="hidden" name="com_seq" value="${cookDetail.com_seq }">
		   <input type="submit" value="삭제">
		</form>
</div>

</body>
</html>